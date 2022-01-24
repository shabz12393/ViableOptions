using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dsMainTableAdapters;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Calendar.v3;
using System.Threading;
using Google.Apis.Util.Store;
using Google.Apis.Services;
using System.IO;
using System.Diagnostics;

public partial class WebControls_Cashier_Add_Item : System.Web.UI.UserControl
{
    private itemsTableAdapter itemAdapter = new itemsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        int categoryId = Int32.Parse(cbCategory.SelectedItem.Value.ToString());
        string item = tbItem.Text;
        int price = Int32.Parse(sePrice.Value.ToString());
        int re_order_level = Int32.Parse(seOrderLevel.Value.ToString());
        decimal stock = Decimal.Parse(seStock.Value.ToString());
        try
        {
            itemAdapter.addItem(categoryId, item, price, re_order_level, stock);
            seOrderLevel.Value = 0;
            sePrice.Value = 0;
            seStock.Value = 0;
            tbItem.Text = "";
            cpForm.JSProperties["cpMessage"] = "Item Added!!!";
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            cpForm.JSProperties["cpMessage"] = "Error!!!";
        }
    }
}