using DevExpress.Web;
using System;
using dsMainTableAdapters;

public partial class WebControls_Admin_Items_Categories : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvCategory_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        gvCategory.AddNewRow();
    }

    protected void gvCategory_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {

        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int ID = Int32.Parse(e.Keys[0].ToString());
            string category = (string)e.NewValues["category"];
            int category_id = (int)e.NewValues["category_id"];

            new CategoriesTableAdapter().Update(category, ID);

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

    protected void gvCategory_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            string category = (string)e.NewValues["category"];

            new CategoriesTableAdapter().Insert(category);

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
}