using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;


public partial class WebControls_Cashier_Reports_Booking_Receipt: System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookingReceiptXR receipt = new BookingReceiptXR();
        receipt.Parameters["bookingId"].Value = Session["booking_id"].ToString();
        receipt.Parameters["bookingId"].Visible = false;
        wdvReport.OpenReport(receipt);
    }
}