using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;
using System.Drawing;
using DevExpress.Data;

public partial class WebControls_Cashier_Bookings_Details_Payments : System.Web.UI.UserControl
{
    BookedItemsTableAdapter itemAdapter = new BookedItemsTableAdapter();
    BookingDetailsTableAdapter eventAdapter = new BookingDetailsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
            Load_Paymets();
    }
    private void Load_Paymets()
    {
        gvPayments.DataSource = CatalogAccess.GetPaymentsForBooking(Request.QueryString["booking_id"]);
        gvPayments.DataBind();
    }
    protected void gvPayments_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        string event_status = Request.QueryString["event_status"];
        if (event_status.Equals("cancelled"))
        {
            gv.JSProperties["cpMessage"] = "Event " + event_status;
        }
        else
        {
            try
            {
                object _id = e.Keys[0];
                int paymentId = Int32.Parse(_id.ToString());
                string bookingId = Request.QueryString["booking_id"];
                int staffId = myCookies.Cookies.getStaffId();
                int pm_id = (int)e.NewValues["pm_id"];
                int amount_refunded = (int)e.NewValues["amount_refunded"];
                int deposit = (int)e.OldValues["deposit"];
                int discount = (int)e.OldValues["discount"];
                string receiptNo = (string)e.NewValues["receipt_no"];
                string notes = (string)e.NewValues["notes"];


                int old_pm_id = (int)e.OldValues["pm_id"];
                int old_amount_refunded = (int)e.OldValues["amount_refunded"];
                string old_receiptNo = (string)e.OldValues["receipt_no"];

                if (amount_refunded <= deposit)
                {
                    new PaymentsTableAdapter().updatePayment(pm_id, amount_refunded, old_amount_refunded, discount, receiptNo, 
                        notes, bookingId, staffId, paymentId);

                    string old_notes = (string)e.OldValues["notes"];


                    string action = "Update";
                    string table = "Payments";
                    string details = "Id: " + paymentId
               + ", booking Id: " + bookingId
               + ", pm_id: New: " + pm_id + ", Old: " + old_pm_id
               + ", amount refunded: New: " + amount_refunded + ", Old: " + old_amount_refunded
               + ", deposit: " + deposit
                + ", discount: " + discount
               + ", Receipt No: New: " + receiptNo + ", Old: " + old_receiptNo
               + ", Notes: New: " + notes + ", Old: " + old_notes;

                    string action_by = myCookies.Cookies.getUserName();

                   Utils.logAudit(action, table, details, action_by);

                    gv.JSProperties["cpMessage"] = "Record Updated";
                }
                else
                {
                    gv.JSProperties["cpMessage"] = "Amount refunded should be less than or equal to Deposit!!!";
                }

            }
            catch (Exception ex)
            {
                gv.JSProperties["cpMessage"] = "Error";
                Utils.logError(ex);
            }
            finally
            {
                gv.CancelEdit();
            }
        }
        
    }
   
}