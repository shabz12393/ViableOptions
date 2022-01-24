using System;
using System.Data;

public partial class WebControls_Settings_User_WUC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblStaffName.Text = "User: "+myCookies.Cookies.getUserName();
            lblRole.Text = "Role: "+myCookies.Cookies.getRole();
            if (myCookies.Cookies.getRole().Equals("Control"))
            {
                this.imgProfile.ImageUrl = "~/Images/Profile/staff male.png"; 
            }
            else 
            {
                DataTable dt = CatalogAccess.GetStaffDetail(myCookies.Cookies.getStaffId());
                imgProfile.ImageUrl = "~/Images/Profile/" + dt.Rows[0]["pic_url"].ToString();
            }
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
        }
    }
}