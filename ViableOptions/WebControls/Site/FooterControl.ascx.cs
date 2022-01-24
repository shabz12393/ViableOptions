using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebControls_Site_FooterControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            this.lblDate.Text = DateTime.Now.ToString("dddd, dd MMMM, yyyy");
            this.lblYear.Text = DateTime.Now.ToString("yyyy");
            this.lblUser.Text = myCookies.Cookies.getUserName();
        }
        catch (Exception)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}