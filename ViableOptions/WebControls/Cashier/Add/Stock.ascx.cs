using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Drawing;
using System.Text.RegularExpressions;
using dsMainTableAdapters;
using System.Globalization;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Calendar.v3;
using System.Threading;
using Google.Apis.Util.Store;
using Google.Apis.Services;

public partial class WebControls_Cashier_Add_Stock : System.Web.UI.UserControl
{
    private item_stockTableAdapter stockAdapter = new item_stockTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        try
        {
            int itemId = Int32.Parse(cbItems.SelectedItem.Value.ToString());
            decimal stock = Int32.Parse(seStock.Value.ToString());
            stockAdapter.Insert(itemId, stock);
            cpForm.JSProperties["cpMessage"] = "Stock Added";

        }
        catch (Exception ex)
        {
            cpForm.JSProperties["cpMessage"] = "Error!!!";
            Utils.logError(ex);
        }
    }
}