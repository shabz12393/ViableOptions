using System;
using System.Web;
using dsMainTableAdapters;
using Encryptor;

public partial class WebControls_Default : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        myCookies.Cookies.resetCookie();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        DateTime now = DateTime.Now;

        HttpCookie staffIdCookie = Response.Cookies["staffId"];
        HttpCookie roleCookie = Response.Cookies["role"];
        HttpCookie userNameCookie = Response.Cookies["userName"];
        HttpCookie roleIdCookie = Response.Cookies["roleId"];
        HttpCookie staffCodeCookie = Response.Cookies["staffCode"];
        try
        {

            UserDetails u = CatalogAccess.ViableLogin(tbUserName.Text, StringCipher.Encrypt(tbPassword.Text));


            staffIdCookie.Value = u.user_id.ToString();
            userNameCookie.Value = u.full_name;
            staffCodeCookie.Value = u.staff_code;

            roleIdCookie.Value = u.role_id.ToString();
            roleCookie.Value = u.role;

            // Set the cookie expiration date.

            staffIdCookie.Expires = now.AddHours(6);
            userNameCookie.Expires = now.AddHours(6);
            roleIdCookie.Expires = now.AddHours(6);
            roleCookie.Expires = now.AddHours(6);
            staffCodeCookie.Expires = now.AddHours(6);


            HttpContext.Current.Response.Cookies.Add(staffIdCookie);
            HttpContext.Current.Response.Cookies.Add(userNameCookie);
            HttpContext.Current.Response.Cookies.Add(roleIdCookie);
            HttpContext.Current.Response.Cookies.Add(roleCookie);
            HttpContext.Current.Response.Cookies.Add(staffCodeCookie);

            if (u.role == "Control")
            {
                string url = "~/Control/Staff.aspx";
                Response.Redirect(url);
            }
            else if (u.role == "Admin")
            {
                string url = "~/Admin/Dashboard.aspx";
                Response.Redirect(url);
            }
            else if (u.role == "Showroom")
            {
                string url = "~/Cashier/Dashboard.aspx";
                Response.Redirect(url);
            }
        }
        catch (Exception ex)
        {
            this.lblError.Text = "Check username and password";
            Utils.logError(ex);
        }
    }
}