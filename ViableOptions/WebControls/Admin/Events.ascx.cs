using System;
using dsMainTableAdapters;
using DevExpress.Web;

public partial class WebControls_Admin_Events : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvEvents_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        gvEvents.AddNewRow();
    }
    protected void gvEvents_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            string event_type = (string)e.NewValues["event_type"];
            new EventsTableAdapter().Insert(event_type);
            gv.JSProperties["cpMessage"] = "Event Added!!!";
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
    protected void gvEvents_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int id = Int32.Parse(e.Keys[0].ToString());
            string event_type = (string)e.NewValues["event_type"];

            new EventsTableAdapter().Update(event_type, id);
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