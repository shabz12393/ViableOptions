using DevExpress.Web;
using System;
using dsMainTableAdapters;

public partial class WebControls_Admin_Payments_Payment_Modes : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void gvPaymentMode_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        gvPaymentMode.AddNewRow();
    }

    protected void gvPaymentMode_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {

        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            string mode = (string)e.NewValues["payt_mode"];

            new PaymentModesTableAdapter().Insert(mode);

            gv.JSProperties["cpMessage"] = "Record Inserted!!!";
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

    protected void gvPaymentMode_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int ID = Int32.Parse(e.Keys[0].ToString());
            string mode = (string)e.NewValues["payt_mode"];

            new PaymentModesTableAdapter().Update(mode, ID);

            gv.JSProperties["cpMessage"] = "Record Updated!!!";
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