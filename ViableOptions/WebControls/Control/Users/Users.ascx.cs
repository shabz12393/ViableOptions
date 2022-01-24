using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;
using Encryptor;

public partial class WebControls_Control_Users_Users : System.Web.UI.UserControl
{
    AccountsTableAdapter editAdapter = new AccountsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void gvUsers_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object val = e.Keys[0];
            int serialNo = Int32.Parse(val.ToString());
            int userId = (int)e.NewValues["user_id"];
            string userName = (string)e.NewValues["user_name"];
            string tempPassword = (string)e.NewValues["user_password"];
            string userPassword = StringCipher.Encrypt(tempPassword);
            int roleId = (int)e.NewValues["role_id"];
            editAdapter.Update(userId, userName, userPassword, roleId, serialNo);
            gv.JSProperties["cpDelete"] = "User Updated";
        }
        catch (Exception ex)
        {
            gv.JSProperties["cpDelete"] = "Error";
            Utils.logError(ex);
        }
        finally
        {
            gv.CancelEdit();
        }
    }

    protected void gvUsers_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _serialNo = e.Keys[0];
            int serialNo = Int32.Parse(_serialNo.ToString());
            editAdapter.Delete(serialNo);
            gv.JSProperties["cpDelete"] = "User Deleted";
        }
        catch (Exception ex)
        {
            gv.JSProperties["cpDelete"] = "Error";
            Utils.logError(ex);
        }
        finally
        {
            gv.CancelEdit();
        }
    }
}