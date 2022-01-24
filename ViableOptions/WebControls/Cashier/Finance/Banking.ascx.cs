using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;
using System.Drawing;
using DevExpress.Data;

public partial class WebControls_Admin_Finance_Banking : System.Web.UI.UserControl
{
    private bankingTableAdapter bankingAdapter = new bankingTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvBanking.GroupBy(gvBanking.Columns["tran_type"]);
        gvBanking.SortBy(gvBanking.Columns["_date"], ColumnSortOrder.Descending);
        gvBanking.ExpandAll();
    }

    protected void gvBanking_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        gvBanking.AddNewRow();
    }

    protected void gvBanking_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        e.Cancel = true;
        try
        {
            int amount = (int)e.NewValues["amount"];
            string transactionType = (string)e.NewValues["tran_type"];
            string _notes = (string)e.NewValues["bank_notes"];
            int staffId = Int32.Parse(myCookies.Cookies.getStaffId().ToString());
            bankingAdapter.Insert(staffId, transactionType, amount, _notes);
            gvBanking.JSProperties["cpMessage"] = "Transaction Added!!!";

        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            gvBanking.JSProperties["cpMessage"] = "Error!!!";
        }
        finally
        {
            gvBanking.CancelEdit();
        }
    }

}