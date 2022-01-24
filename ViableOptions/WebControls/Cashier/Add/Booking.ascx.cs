using System;
using System.Collections.Generic;
using DevExpress.Web;
using System.Text.RegularExpressions;
using dsMainTableAdapters;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Calendar.v3;
using System.Diagnostics;

public partial class WebControls_Cashier_Add_Booking : System.Web.UI.UserControl
{
    private BookingsTableAdapter booking_adapter = new BookingsTableAdapter();
    string json_path;
    string credPath;
    string service_path;
    string[] scopes = { CalendarService.Scope.CalendarEvents };
    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
        json_path = Server.MapPath(@"~/App_Data/credentials.json");
        credPath = Server.MapPath(@"~/temp/token.json");
        service_path = Server.MapPath(@"~/App_Data/eventbook.json");
    }

    private void loadData()
    {
        cbCustomer.DataSource = CatalogAccess.GetCustomers();
        cbCustomer.DataBind();

        cbBookingType.DataSource = CatalogAccess.GetBookingTypes();
        cbBookingType.DataBind();

        cbEvent.DataSource = CatalogAccess.GetEvents();
        cbEvent.DataBind();

        cblGuests.DataSource = CatalogAccess.GetStaffWithEmail();
        cblGuests.DataBind();
    }

    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
            Guid uuid = Guid.NewGuid();
            string booking_id = Regex.Replace(uuid.ToString(), @"[^0-9]", "");
            Session["booking_id"] = booking_id;
            string booking_code = cbBookingType.SelectedItem.Value.ToString();
            string customer_code = cbCustomer.SelectedItem.Value.ToString();
            int staffId = myCookies.Cookies.getStaffId();
            int event_id = Int32.Parse(cbEvent.SelectedItem.Value.ToString());
            string location = mVenue.Text;
            DateTime delivery_date = TimeUtils.convertDate(deStart.Date.ToShortDateString());
            Session["delivery_dt"] = delivery_date;
            DateTime return_date = TimeUtils.convertDate(deEnd.Date.ToShortDateString());
            string start_time = TimeUtils.convertTime(deStart.Date.ToString());
            string end_time = TimeUtils.convertTime(deEnd.Date.ToString());
            string payment_type = Session["payment_type"].ToString();
            string description = mDescription.Text;
            int x = cblGuests.Items.Count;
            string emails = "";

            string summary = myCookies.Cookies.getStaffCode() + " Booking a/c " + cbCustomer.SelectedItem.ToString();

            // Get guests
            List<EventAttendee> list = new List<EventAttendee>();
            if (cblGuests.Items.Count > 0)
            {
                foreach (ListEditItem item in cblGuests.Items)
                {
                    if (item.Selected)
                    {
                        list.Add(new EventAttendee { Email = item.Value.ToString() });
                        emails = emails + item.Value.ToString() + "; ";
                    }
                }
            }
            emails = emails + tbCustomerEmail.Text + "; ";
            if(!tbCustomerEmail.Text.Equals(""))
                list.Add(new EventAttendee { Email = tbCustomerEmail.Text });
            /* Google Calendar Add Event*/
            bool return_status = false;

        return_status = addEvent(booking_id, summary, location, delivery_date.ToString("yyyy-MM-dd"),
                        start_time, return_date.ToString("yyyy-MM-dd"), end_time, list);

        if (return_status)
        {

            booking_adapter.addBooking(booking_id, booking_code, customer_code, staffId, event_id, location, 
                start_time, end_time, delivery_date, return_date, payment_type, description);

            /*Record Event Guests*/

            /*Remove last "," from list*/
            emails = emails.Remove(emails.Length - 1);
            new GuestsTableAdapter().Insert(booking_id, emails);
            cpForm.JSProperties["cpSubmit"] = "Success";
        }
    }
    public bool addEvent(string eventId, string summary, string venue, string start_date, string start_time,
        string end_date, string end_time, List<EventAttendee> attendees)
    {
        string description = "http://www.viableoptions.ug/Booking-Details.aspx?booking_id=" + eventId;
        try
        {
            // Create the service.
            var service = CalendarUtils.FetchService(service_path);

            string calendarId = System.Configuration.ConfigurationManager.AppSettings["calendarId"];
            var calendar = service.Calendars.Get(calendarId).Execute();
            Debug.WriteLine("Calendar Name :");
            Debug.WriteLine(calendar.Summary);

            // var service = ServiceAccountExample.AuthenticateServiceAccount(service_email, service_path, scopes);

            string event_start = start_date + "T" + start_time;
            string event_end = end_date + "T" + end_time;
            string time_zone = System.Configuration.ConfigurationManager.AppSettings["time_zone"];
            int zone_hours = Int32.Parse(System.Configuration.ConfigurationManager.AppSettings["zone_hours"]);
            
            var myEvent = new Event
            {
                Id = eventId,
                Summary = summary,
                Location = venue,
                Description = description,
                Start = new EventDateTime()
                {
                    DateTime = DateTime.Parse(event_start).AddHours(zone_hours),
                    TimeZone = time_zone,
                },
                End = new EventDateTime()
                {
                    DateTime = DateTime.Parse(event_end).AddHours(zone_hours),
                    TimeZone = time_zone
                },
                Attendees = attendees,
            };
            
            var single_event = service.Events.Insert(myEvent, "primary");
            Event createdEvent = single_event.Execute();

            return true;
        }

        catch (Exception ex)
        {
            cpForm.JSProperties["cpMessage"] = "Error!!! \n" + ex.Message;
            Utils.logError(ex);
            return false;
        }

    }
    
}