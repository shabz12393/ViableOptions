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


public partial class WebControls_Admin_Items_Stock_Depreciated : System.Web.UI.UserControl
{
    private DeprecatedStockTableAdapter stockAdapter = new DeprecatedStockTableAdapter();
    private DeprecatedPaymentsTableAdapter paymentAdapter = new DeprecatedPaymentsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvStock_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        gvStock.AddNewRow();
    }

    protected void gvStock_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        e.Cancel = true;
        try
        {
            int staffId = Int32.Parse(myCookies.Cookies.getStaffId().ToString());
            string bookingId = (string)e.NewValues["booking_id"];
            int itemId = (int)e.NewValues["item_id"];
            decimal quantity = (decimal)e.NewValues["quantity"];
            string stockStatus = (string)e.NewValues["stock_status"];
            DateTime created_dt = TimeUtils.getDate();
            string _notes = (string)e.NewValues["notes"];
            stockAdapter.addDepreciatedStock(staffId, bookingId, itemId, quantity, stockStatus, created_dt, _notes);
            gvStock.JSProperties["cpMessage"] = "Record Inserted!!!";

        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            gvStock.JSProperties["cpMessage"] = "Error!!!";
        }
        finally
        {
            gvStock.CancelEdit();
        }
    }

    protected void gvStock_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        e.Cancel = true;
        try
        {
            object val = e.Keys[0];
            int serialNo = Int32.Parse(val.ToString());

            int staffId = Int32.Parse(myCookies.Cookies.getStaffId().ToString());
            string bookingId = (string)e.NewValues["booking_id"];
            int item_id = (int)e.NewValues["item_id"];
            decimal quantity = (decimal)e.NewValues["quantity"];
            string stockStatus = (string)e.NewValues["stock_status"];

            decimal old_qty = (decimal)e.OldValues["quantity"];
            string _notes = (string)e.NewValues["notes"];
            string old_stockStatus = (string)e.OldValues["stock_status"];

            stockAdapter.updateDeprecatedStock(item_id, staffId, quantity, old_qty, stockStatus, _notes, serialNo);

            string oldBookingId = (string)e.OldValues["booking_id"];
            int old_itemId = (int)e.OldValues["item_id"];
            string old_notes = (string)e.OldValues["notes"];

            string action = "Update";
            string table = "Depreciated Stock";
            string details = "Id: " + serialNo
                + ", staffId: New: " + staffId
                 + ", bookingId: New: " + bookingId + ", Old: " + oldBookingId
                + ", itemId: New: " + item_id + ", Old: " + old_itemId
                + ", quantity: New: " + quantity + ", Old: " + old_qty
                + ", stock status: New: " + stockStatus + ", Old: " + old_stockStatus
                + ", Notes: New: " + _notes + ", Old: " + old_notes;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);
            gvStock.JSProperties["cpMessage"] = "Transaction Updated!!!";
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            gvStock.JSProperties["cpMessage"] = "Error!!!";
        }
        finally
        {
            gvStock.CancelEdit();
        }
    }

    protected void gvPayments_BeforePerformDataSelect(object sender, EventArgs e)
    {
        Session["serial_no"] = (sender as ASPxGridView).GetMasterRowKeyValue();
    }

    protected void gvPayments_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        gv.AddNewRow();
    }

    protected void gvPayments_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
    {
        e.NewValues["deposit"] = 0;
        e.NewValues["pm_id"] = 5;
    }

    protected void gvPayments_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int serial_no = Int32.Parse(Session["serial_no"].ToString());
            int staffId = myCookies.Cookies.getStaffId();
            int deposit = (int)e.NewValues["deposit"];
            int paymentModeId = (int)e.NewValues["pm_id"];
            DateTime created_dt = TimeUtils.getDate();
            string receipt_no = (string)e.NewValues["receipt_no"];
            string notes = (string)e.NewValues["notes"];
            paymentAdapter.Insert(serial_no, staffId, deposit, paymentModeId,created_dt, receipt_no, notes);
            gv.JSProperties["cpDeposit"] = "Deposit Recorded!!!";

        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            gv.JSProperties["cpMessage"] = "Error";
        }
        finally
        {
            gv.CancelEdit();
        }
    }

    protected void gvPayments_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int paymentId = Int32.Parse(_id.ToString());
            int serial_no = Int32.Parse(Session["serial_no"].ToString());
            int staffId = myCookies.Cookies.getStaffId();
            int deposit = (int)e.NewValues["deposit"];
            int paymentModeId = (int)e.NewValues["pm_id"];
            string receipt_no = (string)e.NewValues["receipt_no"];
            string notes = (string)e.NewValues["notes"];


            int old_deposit = (int)e.OldValues["deposit"];
            int old_paymentModeId = (int)e.OldValues["pm_id"];
            string old_receipt_no = (string)e.OldValues["receipt_no"];
            string old_notes = (string)e.OldValues["notes"];
            string action = "Update";
            string table = "Depreciated Stock Payments";
            string details = "Id: " + paymentId
 + ", serial_no " + serial_no
    + ", deposit: New: " + deposit + ", Old: " + old_deposit
    + ", payment mode id: New: " + paymentModeId + ", Old: " + old_paymentModeId
     + ", receiptNo: New: " + receipt_no + ", Old: " + old_receipt_no
    + ", notes: New: " + notes + ", Old: " + old_notes;

            string action_by = myCookies.Cookies.getUserName();

            paymentAdapter.Update(staffId, deposit, paymentModeId, receipt_no, notes, paymentId);
           Utils.logAudit(action, table, details, action_by);

            gv.JSProperties["cpMessage"] = "Payment Updated!!!";
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