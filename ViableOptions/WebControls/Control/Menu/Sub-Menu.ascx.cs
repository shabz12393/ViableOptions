using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dsMainTableAdapters;
using DevExpress.Web;

public partial class WebControls_Control_Menu_Sub_Menu : System.Web.UI.UserControl
{
    private sub_menuTableAdapter subMenuAdapter = new sub_menuTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvSubMenu.GroupBy(gvSubMenu.Columns["role_id"]);
        gvSubMenu.GroupBy(gvSubMenu.Columns["menu_id"]);
        gvSubMenu.ExpandAll();
    }
    
    protected void subMenuGv_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int id = Int32.Parse(_id.ToString());
            int menuId = (int)e.NewValues["menu_id"];
            string title = (string)e.NewValues["title"];
            string navigateUrl = (string)e.NewValues["navigate_url"];
            subMenuAdapter.Update(menuId, title, navigateUrl, id);
            gv.JSProperties["cpMessage"] = "Record Updated";
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

    protected void subMenuGv_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int id = Int32.Parse(_id.ToString());
            subMenuAdapter.Delete(id);
            gv.JSProperties["cpMessage"] = "Record Deleted";
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