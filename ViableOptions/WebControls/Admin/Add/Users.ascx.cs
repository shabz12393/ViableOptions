using System;
using dsMainTableAdapters;
using Encryptor;

public partial class WebControls_Admin_Add_Users : System.Web.UI.UserControl
{
    AccountsTableAdapter acctAdapter = new AccountsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        try
        {
            string cypherStr = StringCipher.cypher_str;
            int staffId = Int32.Parse(cbStaff.SelectedItem.Value.ToString());
            string user_name = tbUserName.Text;
            string password = StringCipher.Encrypt(tbPassword.Text);
            int roleId = Int32.Parse(cbRoles.SelectedItem.Value.ToString());
            acctAdapter.Insert(staffId, user_name, password, roleId);
            string clear = "";
            tbUserName.Text = clear;
            tbPassword.Text = clear;
            cpForm.JSProperties["cpMessage"] = "User Created Successfully!!!";
        }
        catch (Exception ex)
        {
            cpForm.JSProperties["cpMessage"] = "Error!!!";
            Utils.logError(ex);
        }
    }
}