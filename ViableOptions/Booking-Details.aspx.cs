using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booking_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            this.lblDate.Text = DateTime.Now.ToString("dddd, dd MMMM, yyyy");
            this.lblYear.Text = DateTime.Now.ToString("yyyy");
        }
        catch (Exception)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}