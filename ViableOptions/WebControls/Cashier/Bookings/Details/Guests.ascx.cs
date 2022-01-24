using System;

public partial class WebControls_Cashier_Bookings_Details_Guests : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Load_Guests();
    }

    private void Load_Guests()
    {
        gvGuests.DataSource = CatalogAccess.GetGuestsForBooking(Request.QueryString["booking_id"]);
        gvGuests.DataBind();
    }
}