using System;
using DevExpress.Web;
using dsMainTableAdapters;


public partial class WebControls_Cashier_Stock_Depreciated : System.Web.UI.UserControl
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
            paymentAdapter.Insert(serial_no, staffId, deposit, paymentModeId, created_dt, receipt_no, notes);
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
}