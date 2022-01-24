using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dsMainTableAdapters;
using Encryptor;

public partial class WebControls_Settings_Password : System.Web.UI.UserControl
{
    private AccountsTableAdapter userAdapter = new AccountsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cpPassword_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        try
        {
            string _newPassword = StringCipher.Encrypt(tbNewPassword.Text);
            this.userAdapter.changePassword(Int32.Parse(myCookies.Cookies.getStaffId().ToString()),
            StringCipher.Encrypt(tbOldPassword.Text), _newPassword);
            this.tbOldPassword.Text = "";
            this.tbNewPassword.Text = "";
            this.tbConfirmPassword.Text = "";
            this.cpPassword.JSProperties["cpUpdate"] = "Password Changed";
        }
        catch (Exception ex)
        {
            this.cpPassword.JSProperties["cpError"] = "Error!!!";
            Utils.logError(ex);
        }
    }
}