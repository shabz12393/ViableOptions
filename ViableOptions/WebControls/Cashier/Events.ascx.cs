using DevExpress.Web;
using System;
using dsMainTableAdapters;
using DevExpress.Data;

public partial class WebControls_Cashier_Events : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gvEvents.SortBy(gvEvents.Columns["event_type"], ColumnSortOrder.Ascending);
        gvEvents.ExpandAll();
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
}