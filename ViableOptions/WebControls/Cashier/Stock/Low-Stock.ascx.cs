using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Drawing;
using DevExpress.Data;

public partial class WebControls_Cashier_Stock_Low_Stock : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void gvStock_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
    {
        ASPxGridView gridView = (ASPxGridView)sender;
        if (e.DataColumn.FieldName == "message")
        {
            string message = e.GetValue("message").ToString();
            if (message == "Low Stock")
            {
                e.Cell.BackColor = Color.Red;
                e.Cell.ForeColor = Color.White;
            }
        }
    }
}