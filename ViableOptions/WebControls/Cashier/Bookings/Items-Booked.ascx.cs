using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Drawing;
using DevExpress.Data;

public partial class WebControls_Cashier_Bookings_Items_Booked : System.Web.UI.UserControl
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        gvItems.GroupBy(gvItems.Columns["item_id"]);
        gvItems.SortBy(gvItems.Columns["item_id"], ColumnSortOrder.Descending);
        gvItems.ExpandAll();
        
    }

    protected void gvItems_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
    {
        ASPxGridView gridView = (ASPxGridView)sender;
        if (e.DataColumn.FieldName == "item_status")
        {
            string status = e.GetValue("item_status").ToString();
            if (status == "tentative")
            {
                e.Cell.BackColor = Color.Red;
                e.Cell.ForeColor = Color.White;
            }
            else if
                (status == "returned")
            {
                e.Cell.BackColor = Color.Green;
                e.Cell.ForeColor = Color.White;
            }
            else if
              (status == "booked")
            {
                e.Cell.BackColor = Color.Blue;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "cancelled")
            {
                e.Cell.BackColor = Color.Black;
                e.Cell.ForeColor = Color.White;
            }
        }
    }
}