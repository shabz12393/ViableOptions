using System;

public partial class WebControls_Details_Info : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Load_Info();
    }
    private void Load_Info()
    {
        gvBookings.DataSource = CatalogAccess.GetBookingDetails(Request.QueryString["booking_id"]);
        gvBookings.DataBind();
    }
    
}