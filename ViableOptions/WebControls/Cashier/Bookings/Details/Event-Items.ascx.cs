using System;
using DevExpress.Web;
using dsMainTableAdapters;
using System.Drawing;

public partial class WebControls_Cashier_Booking_Details_Event_Items : System.Web.UI.UserControl
{
    BookedItemsTableAdapter itemAdapter = new BookedItemsTableAdapter();
    BookingDetailsTableAdapter eventAdapter = new BookingDetailsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
            Load_Items();
    }
    private void Load_Items()
    {
        gvItems.DataSource = CatalogAccess.GetItemsBooked(Request.QueryString["booking_id"]);
        gvItems.DataBind();
    }
    protected void gvItems_BeforePerformDataSelect(object sender, EventArgs e)
    {
        Session["booking_id"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        Session["_date"] = (sender as ASPxGridView).GetMasterRowFieldValues("_date");
    }
    protected void gvItems_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true; string event_status = Request.QueryString["event_status"];
        if (event_status.Equals("cancelled") || event_status.Equals("collected"))
        {
            gv.JSProperties["cpMessage"] = "Event " + event_status;
        }
        else
        {
            try
            {
                object _id = e.Keys[0];
                int serialNo = Int32.Parse(_id.ToString());
                string bookingId = Request.QueryString["booking_id"];
                int staffId = myCookies.Cookies.getStaffId();
                int price = (int)e.OldValues["price"];
                decimal quantity = (decimal)e.NewValues["quantity"];
                string booking_id = Request.QueryString["booking_id"];
                int itemId = (int)e.OldValues["item_id"];
                decimal old_quantity = (decimal)e.OldValues["quantity"];
                string _status = (string)e.NewValues["item_status"];

                string old_status = (string)e.OldValues["item_status"];

                /* int balance = Int32.Parse(eventAdapter.fnGetBalanceForBooking(booking_id).ToString());
                 decimal amount = quantity * price;*/
                if (old_quantity >= quantity)
                {/*Reduce on the number of items*/

                    itemAdapter.returnItemForEvent(quantity, itemId, old_status, booking_id, serialNo);

                    string action = "Update";
                    string table = "Event Items";
                    string details = "Id: " + serialNo
          + ", booking_id: " + booking_id
          + ", itemId: " + itemId
          + ", Quantity: New: " + quantity + ", Old: " + old_quantity;

                    string action_by = myCookies.Cookies.getUserName();

                   Utils.logAudit(action, table, details, action_by);
                    gv.JSProperties["cpMessage"] = "Record Updated!!!";
                }
                else if (quantity > old_quantity)
                {
                    /*Update the item quantity for the event*/
                    itemAdapter.addMoreEventItems(quantity, old_quantity, old_status, itemId, booking_id, serialNo);
                    gv.JSProperties["cpMessage"] = "Record Updated!!!";
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

    protected void gvItems_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
    {
        ASPxGridView gridView = (ASPxGridView)sender;
        if (e.DataColumn.FieldName == "item_status")
        {
            string status = e.GetValue("item_status").ToString();
            if (status == "tentative")
            {
                e.Cell.BackColor = Color.Red;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "returned")
            {
                e.Cell.BackColor = Color.Orange;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "collected")
            {
                e.Cell.BackColor = Color.Green;
                e.Cell.ForeColor = Color.White;
            }
            else if
              (status == "booked")
            {
                e.Cell.BackColor = Color.Blue;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "cancelled")
            {
                e.Cell.BackColor = Color.Black;
                e.Cell.ForeColor = Color.White;
            }
        }
    }

    protected void cpItems_Callback(object sender, CallbackEventArgsBase e)
    {
        string event_status = Request.QueryString["event_status"];
        if (event_status.Equals("collected") || event_status.Equals("confirmed"))
        {
            cpItems.JSProperties["cpMessage"] = "Event is Closed";
        }
        else if (event_status.Equals("cancelled"))
        {
            cpItems.JSProperties["cpMessage"] = "Event " + event_status;
        }
        else
        {
            Session["booking_id"] = Request.QueryString["booking_id"];
            Session["start_date"] = Request.QueryString["start_date"];
            pcItems.Maximized = true;
            pcItems.ShowOnPageLoad = true;
        }
    }
}