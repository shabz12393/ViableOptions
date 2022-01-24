using System;

public partial class WebControls_Details_Payments : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            Load_Paymets();
    }
    private void Load_Paymets()
    {
        gvPayments.DataSource = CatalogAccess.GetPaymentsForBooking(Request.QueryString["booking_id"]);
        gvPayments.DataBind();
    }
}