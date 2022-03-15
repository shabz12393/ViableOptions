using System;
using DevExpress.Web;
using dsMainTableAdapters;
using Encryptor;


public partial class WebControls_Admin_Staff_Users_Users : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvUsers_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int account_id = Int32.Parse(e.Keys[0].ToString());

            int userId = (int)e.Values["user_id"];
            string userName = (string)e.Values["user_name"];

            string action = "Delete";
            string table = "Users";
            string details = "Id: " + account_id
             + ", userId: New: " + userId + ", Old: " + userId
             + ", userName: New: " + userName + ", Old: " + userName;

            string action_by = myCookies.Cookies.getUserName();

            new AccountsTableAdapter().Delete(account_id);
            Utils.logAudit(action, table, details, action_by);
            gv.JSProperties["cpMessage"] = "User Deleted";
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

    protected void gvUsers_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object val = e.Keys[0];
            int account_id = Int32.Parse(val.ToString());
            int userId = (int)e.NewValues["user_id"];
            string userName = (string)e.NewValues["user_name"];
            string tempPassword = (string)e.NewValues["user_password"];
            string userPassword = StringCipher.Encrypt(tempPassword);
            int roleId = (int)e.NewValues["role_id"];

            int old_userId = (int)e.OldValues["user_id"];
            string old_userName = (string)e.OldValues["user_name"];
            int old_roleId = (int)e.OldValues["role_id"];
            
            string action = "Update";
            string table = "Users";
            string details = "Id: " + account_id
              + ", userId: New: " + userId + ", Old: " + old_userId
               + ", userName: New: " + userName + ", Old: " + old_userName;

            string action_by = myCookies.Cookies.getUserName();

            bool response = CatalogAccess.UpdateAcount(userId, userName, userPassword, roleId, account_id);

            Utils.logAudit(action, table, details, action_by);

            gv.JSProperties["cpMessage"] = response ? "Update successful" : "Update failed";

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