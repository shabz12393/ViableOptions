using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;

public partial class WebControls_Control_Add_Sub_Menu : System.Web.UI.UserControl
{
    sub_menuTableAdapter subMenuAdapter = new sub_menuTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void Save()
    {
        int menuId = Int32.Parse(cbMenu.SelectedItem.Value.ToString());
        string title = tbTitle.Text;
        string url = tbUrl.Text;
        subMenuAdapter.Insert(menuId, title, url);
        cpForm.JSProperties["cpMessage"] = "Sub-Menu Added!!!";
        tbUrl.Text = "";
        tbTitle.Text = "";
    }

    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {

        try
        {
            Save();
        }
        catch (Exception ex)
        {
            cpForm.JSProperties["cpMessage"] = "Error!!! ";
            Utils.logError(ex);
            btnNew.ClientEnabled = true;
        }
    }
}