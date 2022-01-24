using System;
using DevExpress.Web;
using DevExpress.Data;

using dsMainTableAdapters;
using Google.Apis.Calendar.v3.Data;

public partial class WebControls_Cashier_Bookings_Event_Info : System.Web.UI.UserControl
{
    private BookingsTableAdapter bookingAdapter = new BookingsTableAdapter();
    string json_path;
    string credPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        json_path = Server.MapPath(@"~/App_Data/eventbook.json");
        credPath = Server.MapPath(@"~/temp/token.json");

        gvBookings.SortBy(gvBookings.Columns["delivery_dt"], ColumnSortOrder.Ascending);
        gvBookings.ExpandAll();
            Load_Info();
    }
    private void Load_Info()
    {
        gvBookings.DataSource = CatalogAccess.GetBookingDetails(Request.QueryString["booking_id"]);
        gvBookings.DataBind();
    }

    protected void gvBookings_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
       
            object _id = e.Keys[0];
            string bookingId = _id.ToString();
            int staffId = myCookies.Cookies.getStaffId();
            int event_id = (int)e.NewValues["event_id"];
            DateTime delivery_date = TimeUtils.convertDate(e.NewValues["delivery_dt"].ToString());
            DateTime return_date = TimeUtils.convertDate(e.NewValues["return_dt"].ToString());
            string start_time = TimeUtils.convertTime(e.NewValues["start_time"].ToString());
            string end_time = TimeUtils.convertTime(e.NewValues["end_time"].ToString());
            string notes = (string)e.NewValues["notes"];

            string event_status = Request.QueryString["event_status"];
            if (event_status.Equals("cancelled")|| event_status.Equals("confirmed")|| event_status.Equals("collected"))
            {
                gv.JSProperties["cpMessage"] = "Event " + event_status;
            }
            else
            {
                int old_event_id = (int)e.OldValues["event_id"];
                DateTime old_delivery_date = TimeUtils.convertDate(e.OldValues["delivery_dt"].ToString());
                DateTime old_return_date = TimeUtils.convertDate(e.OldValues["return_dt"].ToString());
                string old_start_time = TimeUtils.convertTime(e.OldValues["start_time"].ToString());
                string old_end_time = TimeUtils.convertTime(e.OldValues["end_time"].ToString());
                string old_notes = (string)e.OldValues["notes"];

                string table = "Event Booking Info";
                string details = "Id: " + bookingId
           + ", staff_id: New: " + staffId
           + ", event_id: New: " + event_id + ", Old: " + old_event_id
           + ", delivery date: New: " + delivery_date + ", Old: " + old_delivery_date
           + ", return date: New: " + return_date + ", Old: " + old_return_date
           + ", start time: New: " + start_time + ", Old: " + old_start_time
           + ", end time: New: " + end_time + ", Old: " + old_end_time
           + ", Notes: New: " + notes + ", Old: " + old_notes;
                
                    string event_name = new EventsTableAdapter().GetDataById(event_id).ToString();
                    /*Update Google Calendar*/

                    bool result = updateEvent(bookingId, delivery_date.ToString("yyyy-MM-dd"), start_time, return_date.ToString("yyyy-MM-dd"), end_time);

                if (result)
                {
                    string action = "Update";
                    bookingAdapter.UpdateDetails(event_id, delivery_date, return_date, start_time, end_time, notes, bookingId);

                    string action_by = myCookies.Cookies.getUserName();

                   Utils.logAudit(action, table, details, action_by);

                    gv.JSProperties["cpMessage"] = "Record Updated ";
                }

               
            }
    }


    public bool updateEvent(string eventId, string delivery_date, string start_time, string return_date, string end_time)
    {
        // Create the service.
        var service = CalendarUtils.FetchService(json_path);

        try
        {
            Event my_event = service.Events.Get("primary", eventId).Execute();
            delivery_date = delivery_date + "T" + start_time;
            return_date = return_date + "T" + end_time;
            string time_zone = System.Configuration.ConfigurationManager.AppSettings["time_zone"];
            int zone_hours = Int32.Parse(System.Configuration.ConfigurationManager.AppSettings["zone_hours"]);

            EventDateTime start = new EventDateTime()
            {
                DateTime = DateTime.Parse(delivery_date).AddHours(zone_hours),
                TimeZone = time_zone,
            };
            my_event.Start = start;

            EventDateTime end = new EventDateTime()
            {
                DateTime = DateTime.Parse(return_date).AddHours(zone_hours),
                TimeZone = time_zone,
            };
            my_event.End = end;


            Event updated_event = service.Events.Update(my_event, "primary", my_event.Id).Execute();
            return true;
        }
        catch (Exception ex)
        {
            gvBookings.JSProperties["cpMessage"] = "Error: \n "+ex.Message;
            Utils.logError(ex);
            return false;
        }
    }
    public bool cancelEvent(string eventId)
    {
        // Create the service.
        var service = CalendarUtils.GetCalendarService(json_path, credPath);

        try
        {
            Event my_event = service.Events.Get("primary", eventId).Execute();
            my_event.Status = "cancelled";

            Event updated_event = service.Events.Update(my_event, "primary", my_event.Id).Execute();
            return true;
        }
        catch (Exception ex)
        {
            gvBookings.JSProperties["cpMessage"] = "Error: \n " + ex.Message;
            Utils.logError(ex);
            return false;
        }
    }
}