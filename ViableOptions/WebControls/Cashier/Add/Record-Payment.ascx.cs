using System;
using dsMainTableAdapters;


public partial class WebControls_Cashier_Add_Record_Payment : System.Web.UI.UserControl
{
    private BookingDetailsTableAdapter detailAdapter = new BookingDetailsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTotal.Text = string.Format("Balance Due: {0:n0}", Int32.Parse(detailAdapter.fnGetBalanceForBooking(Request.QueryString["booking_id"].ToString()).ToString()));
    }

    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        // Products url
        if (e.Parameter.ToString().Equals("Update"))
        {
            lblTotal.Text = string.Format("Balance Due: {0:n0}", 
                Int32.Parse(detailAdapter.fnGetBalanceForBooking(Request.QueryString["booking_id"].ToString()).ToString()));
        }
        else
        {
            string booking_id = Request.QueryString["booking_id"];
            int balance = Int32.Parse(detailAdapter.fnGetBalanceForBooking(booking_id).ToString());

            string notes = "";
            string receipt_no = "";
            int discount = 0;
            int deposit = 0;
            int staff_id = myCookies.Cookies.getStaffId();
            discount = Int32.Parse(seDiscount.Value.ToString());
            deposit = Int32.Parse(seCash.Value.ToString());
            int pm_id = Int32.Parse(cbPaymentMode.SelectedItem.Value.ToString());
            receipt_no = tbReceipt.Text;
            DateTime created_dt = TimeUtils.getDate();
            notes = mNotes.Text;
            try
            {
                if ((deposit + discount) <= balance)
                {
                    bool response = CatalogAccess.Add_Payment(staff_id, pm_id, deposit, discount, receipt_no, notes, created_dt, booking_id);
                    cpForm.JSProperties["cpMessage"] = response ? "Insert successful" : "Insert failed";
                }
                else
                {
                    cpForm.JSProperties["cpMessage"] = "Cash should be less than or equal to balance!!!";
                }
            }
            catch (Exception ex)
            {
                Utils.logError(ex);
                cpForm.JSProperties["cpMessage"] = "Error!!!";
            }
        }
        
    }
}