using System;
using DevExpress.Web;
using DevExpress.Data;

public partial class WebControls_Cashier_Payments_Refunds : System.Web.UI.UserControl
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        gvRefunds.SortBy(gvRefunds.Columns["created_dt"], ColumnSortOrder.Descending);
        gvRefunds.ExpandAll();
    }

    protected void gvDetails_BeforePerformDataSelect(object sender, EventArgs e)
    {
        Session["payment_id"] = (sender as ASPxGridView).GetMasterRowFieldValues("payment_id");
    }
}