using System;
using dsMainTableAdapters;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3;

public partial class WebControls_Cashier_Add_book_items : System.Web.UI.UserControl
{
    private BookedItemsTableAdapter eventAdapter = new BookedItemsTableAdapter();
    private BookingDetailsTableAdapter detailAdapter = new BookingDetailsTableAdapter();

    UserCredential credential;
    static string[] Scopes = { CalendarService.Scope.CalendarReadonly };
    static string ApplicationName = "Viable-Option Calendar";

    protected void Page_Load(object sender, EventArgs e)
    {
            loadItems();
    }

    private void loadItems()
    {
        cbItem.DataSource = CatalogAccess.GetItems();
        cbItem.DataBind();
    }

    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        int price;
        string booking_id = Session["booking_id"].ToString();
        if (e.Parameter.Equals("Add"))
        {
            int staffId = myCookies.Cookies.getStaffId();
            int itemId = Int32.Parse(cbItem.SelectedItem.Value.ToString());
            decimal quantity = Decimal.Parse(seQty.Value.ToString());
            int available_stock = Int32.Parse(cbStock.SelectedItem.Value.ToString());
            if (available_stock >= quantity)
            {
                try
                {
                    if (cbOverride.Checked)
                    {
                        price = Int32.Parse(sePrice.Value.ToString());
                    }
                    else
                    {
                        price = Int32.Parse(cbPrice.SelectedItem.ToString());
                    }
                    eventAdapter.addEventItems(booking_id, staffId, itemId, price, quantity);
                    cbItem.SelectedIndex = -1;
                    cbStock.SelectedIndex = -1;
                    cbPrice.SelectedIndex = -1;
                    cbAmount.SelectedIndex = -1;
                    seQty.Value = 1;
                    sePrice.Value = 1;
                    cbOverride.Checked = false;
                    cpForm.JSProperties["cpMessage"] = "Success";
                }
                catch (Exception ex)
                {
                    Utils.logError(ex);
                    cpForm.JSProperties["cpMessage"] = "Error!!!";
                }
            }
            else
            {
                cpForm.JSProperties["cpMessage"] = "Available Stock: " + available_stock;
            }
        }
        else
        {
            cpForm.JSProperties["cpSubmit"] = "Success";
        }

    }

    protected void gvItems_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        string booking_id = Session["booking_id"].ToString();
        int paid = Int32.Parse(detailAdapter.fnGetPaidForBooking(booking_id).ToString());
        e.Cancel = true;
        try
        {
            object val = e.Keys[0];
            int serialNo = Int32.Parse(val.ToString());
            int itemId = (int)e.OldValues["item_id"];
            decimal oldQty = (decimal)e.OldValues["quantity"];
            decimal quantity = (decimal)e.NewValues["quantity"];
            int amount = (int)e.OldValues["amount"];
            if (!(paid > 0))
            {
                eventAdapter.updateBookedItems(booking_id, itemId, quantity, oldQty, amount, serialNo);
                gvItems.JSProperties["cpMessage"] = "Cart Updated!!!";
            }
            else
            {
                gvItems.JSProperties["cpMessage"] = "Payment already made!!!";
            }
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            gvItems.JSProperties["cpMessage"] = "Error!!!";
        }
        finally
        {
            gvItems.CancelEdit();
        }
    }

    protected void gvItems_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        string booking_id = Session["booking_id"].ToString();
        int paid = Int32.Parse(detailAdapter.fnGetPaidForBooking(booking_id).ToString());
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int serialNo = Int32.Parse(_id.ToString());
            int itemId = (int)e.Values["item_id"];
            decimal quantity = (decimal)e.Values["quantity"];
            int amount = (int)e.Values["amount"];
            if (!(paid > 0))
            {
                eventAdapter.deleteBookedItem(booking_id, itemId, quantity, amount, serialNo);
                gvItems.JSProperties["cpMessage"] = "Record Deleted";
            }
            else
            {
                gvItems.JSProperties["cpMessage"] = "Payment already made!!!";
            }
        }
        catch (Exception ex)
        {
            gvItems.JSProperties["cpMessage"] = "Error";
            Utils.logError(ex);
        }
        finally
        {
            gvItems.CancelEdit();
        }
    }


    protected void cbItem_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       /* Session["itemId"] = cbItem.SelectedItem.Value.ToString();

        odsStock.SelectParameters["start_date"].DefaultValue = DateTime.Parse(Session["start_date"].ToString()).ToShortDateString();
        odsStock.SelectParameters["itemId"].DefaultValue = Session["itemId"].ToString();
        cbStock.DataSource = odsStock;
        cbStock.DataBind();

        odsPrice.SelectParameters["itemId"].DefaultValue = Session["itemId"].ToString();
        cbPrice.DataSource = odsPrice;
        cbPrice.DataBind();*/
    }
}