using System;
using dsMainTableAdapters;


public partial class WebControls_Cashier_Add_Cash_Payment : System.Web.UI.UserControl
{
   private PaymentsTableAdapter paymentAdapter = new PaymentsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTotal.Text = "Total Due: " + Session["total"].ToString();
    }

    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        string booking_id = Session["booking_id"].ToString();
        int balance = Int32.Parse(Session["total"].ToString());

        string _notes = "";
        string receiptNo = "";
        int discount = 0;
        int cash = 0;
        int payment_mode_id = 5;
        int staffId = myCookies.Cookies.getStaffId();
        discount = Int32.Parse(seDiscount.Value.ToString());
        cash = Int32.Parse(seDeposit.Value.ToString());
        payment_mode_id = Int32.Parse(cbPaymentMode.SelectedItem.Value.ToString());
        receiptNo = tbReceipt.Text;
        DateTime created_dt = TimeUtils.getDate();
        _notes = mNotes.Text;
        try
        {
            if ((cash+discount) >= balance)
            {
                paymentAdapter.addPayment(staffId, payment_mode_id, cash, discount, receiptNo,_notes, created_dt, booking_id);
                cpForm.JSProperties["cpMessage"] = "Payment Recorded!!!";
            }else
            {
                cpForm.JSProperties["cpDenied"] = "Cash should be greather than or equal to balance!!!";
            }
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            cpForm.JSProperties["cpMessage"] = "Error!!!";
        }
    }
}