using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebControls_Control_Menu_Menu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gvMenu.GroupBy(gvMenu.Columns["role_id"]);
        gvMenu.ExpandAll();
    }

    protected void gvMenu_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        gvMenu.AddNewRow();
    }
}