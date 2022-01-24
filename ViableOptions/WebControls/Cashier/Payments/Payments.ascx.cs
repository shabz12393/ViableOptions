using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Drawing;
using DevExpress.Data;

public partial class WebControls_Cashier_Payments : System.Web.UI.UserControl
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        gvPayments.GroupBy(gvPayments.Columns["payment_date"]);
        gvPayments.SortBy(gvPayments.Columns["payment_date"], ColumnSortOrder.Descending);
        gvPayments.ExpandAll();
    }
}