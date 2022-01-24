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

public partial class WebControls_Admin_Finance_Expenses : System.Web.UI.UserControl
{
    private expensesTableAdapter expenseAdapter = new expensesTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvExpenses.SortBy(gvExpenses.Columns["_date"], ColumnSortOrder.Descending);
    }

    protected void gvExpenses_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        gvExpenses.AddNewRow();
    }

    protected void gvExpenses_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            int staffId = myCookies.Cookies.getStaffId();
            int payment_mode_id = (int)e.NewValues["payment_mode_id"];
            string expense = (string)e.NewValues["expense"];
            int amount = (int)e.NewValues["amount"];
            string reason = (string)e.NewValues["reason"];
            expenseAdapter.Insert(staffId, payment_mode_id, expense, amount, reason);
            gv.JSProperties["cpMessage"] = "Expense Recorded";

        }
        catch (Exception ex)
        {
            gv.JSProperties["cpMessage"] = "Error";
            Utils.logError(ex);
        }
        finally
        {
            gv.CancelEdit();
        }
    }

    protected void gvExpenses_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
    {
        e.NewValues["payment_mode_id"] = 5;
        e.NewValues["amount"] = 0;
    }
}