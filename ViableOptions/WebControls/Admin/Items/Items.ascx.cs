using DevExpress.Web;
using System;
using dsMainTableAdapters;

public partial class WebControls_Admin_Items_Items : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gvItems.GroupBy(gvItems.Columns["category_id"]);
        gvItems.ExpandAll();
    }

    protected void gvItems_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int item_id = Int32.Parse(e.Keys[0].ToString());
            string item = (string)e.NewValues["item"];
            int category_id = (int)e.NewValues["category_id"];
            int price = (int)e.NewValues["price"];
            int re_order_level = (int)e.NewValues["re_order_level"];

            new itemsTableAdapter().Update(category_id, item, price, re_order_level, item_id);

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