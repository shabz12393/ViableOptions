using System;

public partial class WebControls_Cashier_Reports_Stock : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void cpStock_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        string p = rblStatus.SelectedItem.Value.ToString();
        if (p.Equals("Low"))
        {
            wdvReport.ReportSourceId = "xrLowStock";
        }
        else if (p.Equals("Available"))
        {
            wdvReport.ReportSourceId = "xrStock";
        }
    }
}