using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;
public partial class WebControls_Control_Staff : System.Web.UI.UserControl
{
    private StaffsTableAdapter staffAdapter = new StaffsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cpNew_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        pcNew.Height = 500;
        pcNew.Width = 750;
        pcNew.ShowOnPageLoad = true;
    }

    protected void gvStaff_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int staffId = Int32.Parse(_id.ToString());
            string staffCode = (string)e.NewValues["staff_code"];
            string full_name = (string)e.NewValues["full_name"];
            string telephone = (string)e.NewValues["telephone"];
            string email = (string)e.NewValues["email"];
            string gender = (string)e.NewValues["gender"];
            string status = (string)e.NewValues["staff_status"];
            staffAdapter.Update(staffCode, full_name, telephone, email, gender,status, staffId);
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
}