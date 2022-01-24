using System;
using DevExpress.Web;
using System.Drawing;

public partial class WebControls__Details_Items : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Load_Items();
    }
    private void Load_Items()
    {
        gvItems.DataSource = CatalogAccess.GetItemsBooked(Request.QueryString["booking_id"]);
        gvItems.DataBind();
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
            else if (status == "returned")
            {
                e.Cell.BackColor = Color.Orange;
                e.Cell.ForeColor = Color.White;
            }
            else if (status == "collected")
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