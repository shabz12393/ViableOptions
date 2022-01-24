using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;
using System.Drawing;
using DevExpress.Data;

public partial class WebControls_Cashier_Bookings_Booking_Details : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cpReceipt_Callback(object sender, CallbackEventArgsBase e)
    {
        Session["booking_id"] = Request.QueryString["booking_id"];
        pcReceipt.Maximized = true;
        pcReceipt.ShowOnPageLoad = true;
    }
    
    
}