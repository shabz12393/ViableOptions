using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dsMainTableAdapters;
using DevExpress.Web;

public partial class WebControls_Admin_Stock_Data_Item_Stock : System.Web.UI.UserControl
{
    private item_stockTableAdapter stockAdapter = new item_stockTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvStock.GroupBy(gvStock.Columns["category"]);
        gvStock.ExpandAll();
    }
    protected void gvStock_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int stock_id = Int32.Parse(_id.ToString());
            int item_id = (int)e.OldValues["item_id"];
            decimal stock = (decimal)e.NewValues["stock"];

            decimal old_stock = (decimal)e.OldValues["stock"];

            stockAdapter.Update(item_id, stock, stock_id);

            string action = "Update";
            string table = "Item Stock";
            string details = "Id: "
       + ", Item Id: " + item_id
       + ", Stock : New: " + stock + ", Old: " + old_stock;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);

            gv.JSProperties["cpMessage"] = "Stock Updated";

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