using System;
using DevExpress.Web;
using System.Drawing;
using DevExpress.Data;

using dsMainTableAdapters;
using Google.Apis.Calendar.v3.Data;

public partial class WebControls_Cashier_Bookings : System.Web.UI.UserControl
{
    private BookingsTableAdapter bookingAdapter = new BookingsTableAdapter();
    string json_path;
    string credPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        json_path = Server.MapPath(@"~/App_Data/eventbook.json");
        credPath = Server.MapPath(@"~/temp/token.json");
        gvBookings.SortBy(gvBookings.Columns["delivery_dt"], ColumnSortOrder.Descending);
        gvBookings.SortBy(gvBookings.Columns["_id"], ColumnSortOrder.Descending);
        gvBookings.ExpandAll();
    }

    protected void gvBookings_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        try
        {
            string[] parameters = e.Parameters.Split('|');
            if (parameters[0] == "redirect")
            {
                int index = Convert.ToInt32(parameters[1]);
                string booking_id = gvBookings.GetRowValues(index, gvBookings.KeyFieldName).ToString();
                string event_status = gvBookings.GetRowValues(index, "event_status").ToString();
                string start_date = gvBookings.GetRowValues(index, "delivery_dt").ToString();
                ASPxWebControl.RedirectOnCallback("Event-Details.aspx?booking_id=" + booking_id + "&start_date=" + start_date+ "&event_status=" + event_status);
            }
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            cpBooking.JSProperties["cpMessage"] = "Error!!!";
        }
    }

    protected void cpPayment_Callback(object sender, CallbackEventArgsBase e)
    {/*
        pcPayment.Width = 800;
        pcPayment.Height = 500;
        pcPayment.ShowOnPageLoad = true;*/
    }

    protected void cpReceipt_Callback(object sender, CallbackEventArgsBase e)
    {/*
        receipt_pc.Maximized = true;
        receipt_pc.ShowOnPageLoad = true;*/
    }

    protected void cpBooking_Callback(object sender, CallbackEventArgsBase e)
    {
        pcBooking.Maximized = true;
        pcBooking.ShowOnPageLoad = true;
        Session["payment_type"] = "Credit";
    }

    protected void cpItems_Callback(object sender, CallbackEventArgsBase e)
    {
        pcItems.ShowOnPageLoad = true;
    }
    

    protected void gvBookings_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
    {
        ASPxGridView gridView = (ASPxGridView)sender;
        if (e.DataColumn.FieldName == "event_status")
        {
            string status = e.GetValue("event_status").ToString();
            if (status == "confirmed")
            {
                e.Cell.BackColor = Color.Green;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "cancelled")
            {
                e.Cell.BackColor = Color.Black;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "tentative")
            {
                e.Cell.BackColor = Color.Red;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "collected")
            {
                e.Cell.BackColor = Color.Blue;
                e.Cell.ForeColor = Color.White;
            }
        }
    }
    protected void gvBookings_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            string bookingId = _id.ToString();
            int staffId = myCookies.Cookies.getStaffId();
            string booking_code = (string)e.Values["booking_code"];
            string customer_code = (string)e.Values["customer_code"];
            string venue = (string)e.Values["venue"];
            string eventStatus = (string)e.Values["event_status"];
            DateTime delivery_date = TimeUtils.convertDate(e.Values["delivery_dt"].ToString());
            int paid = (int)e.Values["paid"];
            int balance = (int)e.Values["balance"];
            int discount = (int)e.Values["discount"];

            DateTime todays_date = DateTime.Parse(DateTime.Now.ToShortDateString());


            int count = DateTime.Compare(delivery_date, todays_date);
            if (count >= 0 && eventStatus.Equals("cancelled"))
            {
                string table = "Event Booking";
                string details = "Id: " + bookingId
           + ", booking_code: " + booking_code
           + ", customer_code: " + customer_code
           + ", staff_id: " + staffId
           + ", venue: " + venue
           + ", event_status: " + eventStatus
           + ", delivery date: " + delivery_date
           + ", paid: " + paid
           + ", balance: " + balance
           + ", discount: " + discount;

                bookingAdapter.deleteEvent(bookingId);
                string action = "Delete";
                string action_by = myCookies.Cookies.getUserName();

               Utils.logAudit(action, table, details, action_by);

                gv.JSProperties["cpMessage"] = "Record Deleted ";
            }
            else
            {
                gv.JSProperties["cpMessage"] = "Booking Closed!!!";
            }

        }
        catch (Exception ex)
        {
            gv.JSProperties["cpMessage"] = "Error!!! \n" + ex.Message;
            Utils.logError(ex);
        }
        finally
        {
            gv.CancelEdit();
        }
    }

    protected void gvBookings_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            string bookingId = _id.ToString();
            int staffId = myCookies.Cookies.getStaffId();
            string booking_code = (string)e.NewValues["booking_code"];
            string customer_code = (string)e.NewValues["customer_code"];
            string venue = (string)e.NewValues["venue"];
            string eventStatus = (string)e.NewValues["event_status"];

            string oldEventStatus = (string)e.OldValues["event_status"];
            if (eventStatus.Equals("confirmed") && !oldEventStatus.Equals("cancelled"))
            {
                bookingAdapter.confirmEvent(bookingId);
                gv.JSProperties["cpMessage"] = "Event Confirmed";
            }
            else if (eventStatus.Equals("collected") && !oldEventStatus.Equals("cancelled"))
            {
                bookingAdapter.closeEvent(bookingId);
                gv.JSProperties["cpMessage"] = "Event Updated";
            }
            else
            {
                string old_booking_code = (string)e.OldValues["booking_code"];
                string old_customer_code = (string)e.OldValues["customer_code"];
                string old_venue = (string)e.OldValues["venue"];

                string table = "Event Booking";
                string details = "Id: " + bookingId
           + ", booking_code: New: " + booking_code + ", Old: " + old_booking_code
           + ", customer_code: New: " + customer_code + ", Old: " + old_customer_code
           + ", staff_id: New: " + staffId
           + ", venue: New: " + venue + ", Old: " + old_venue
           + ", event_status: New: " + eventStatus + ", Old: " + oldEventStatus;

                if (eventStatus.Equals("tentative") && !(oldEventStatus.Equals("cancelled")|| oldEventStatus.Equals("confirmed") || oldEventStatus.Equals("collected")))
                {
                    string customer = new customersTableAdapter().fnGetCustomerNameByCode(customer_code).ToString();
                    string summary = myCookies.Cookies.getStaffCode() +" Booking a/c " + customer;
                    /*Update Google Calendar*/

                    bool result = updateEvent(bookingId, summary);

                    if (result)
                    {
                        string action = "Update";
                        bookingAdapter.updateBookings(booking_code,customer_code, staffId, bookingId);

                        string action_by = myCookies.Cookies.getUserName();

                       Utils.logAudit(action, table, details, action_by);
                      
                        gv.JSProperties["cpMessage"] = "Record Updated ";
                    }
                    else
                        gv.JSProperties["cpMessage"] = "Error!!!";

                }
                else if (eventStatus.Equals("cancelled") && !(oldEventStatus.Equals("confirmed") || oldEventStatus.Equals("collected")))
                {
                    /*Cancel Event*/
                    bool result = cancelEvent(bookingId);

                    if (result)
                    {
                        bookingAdapter.cancelEvent(bookingId);
                        string action = "cancelled";
                        string action_by = myCookies.Cookies.getUserName();
                       Utils.logAudit(action, table, details, action_by);
                        gv.JSProperties["cpMessage"] = "Event Cancelled";
                    }
                    else
                        gv.JSProperties["cpMessage"] = "Error!!!";


                }else
                {
                    gv.JSProperties["cpMessage"] = "Booking " + oldEventStatus;
                }
            }

        }
        catch (Exception ex)
        {
            gv.JSProperties["cpMessage"] = "Error!!! \n" + ex.Message;
            Utils.logError(ex);
        }
        finally
        {
            gv.CancelEdit();
        }
    }


    public bool updateEvent(string eventId, string summary)
    {
        // Create the service.
        var service = CalendarUtils.FetchService(json_path);

        try
        {
            Event my_event = service.Events.Get("primary", eventId).Execute();
            my_event.Summary = summary;

            Event updated_event = service.Events.Update(my_event, "primary", my_event.Id).Execute();
            return true;
        }
        catch (Exception ex)
        {
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
            Utils.logError(ex);
            return false;
        }
    }
}