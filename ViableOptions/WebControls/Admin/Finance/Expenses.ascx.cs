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

    protected void gvExpenses_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int expenseId = Int32.Parse(_id.ToString());
            int staffId = myCookies.Cookies.getStaffId();
            int payment_mode_id = (int)e.OldValues["payment_mode_id"];
            string expense = (string)e.NewValues["expense"];
            string old_expense = (string)e.OldValues["expense"];
            int amount = (int)e.NewValues["amount"];
            int old_amount = (int)e.OldValues["amount"];
            string reason = (string)e.NewValues["reason"];
            string old_reason = (string)e.OldValues["reason"];
            

            expenseAdapter.Update(staffId, payment_mode_id, expense, amount, reason, expenseId);

            string action = "Update";
            string table = "Expenses";
            string details = "Id: " + expenseId 
                + ", Expense: New: " + expense  + ", Old: " + old_expense 
                + ", Amount: New: " + amount  + ", Old: " + old_amount 
                + ", Reason: New: "+ reason  + ", Old: " + old_reason;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);
            gv.JSProperties["cpMessage"] = "Record Updated!!!";

        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            gv.JSProperties["cpMessage"] = "Error";

        }
        finally
        {
            gv.CancelEdit();
        }
    }

    protected void gvExpenses_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int expenseId = Int32.Parse(_id.ToString());
            int staffId = myCookies.Cookies.getStaffId();
            string expense = (string)e.Values["expense"];
            int amount = (int)e.Values["amount"];
            string reason = (string)e.Values["reason"];

            
            string action = "Delete";
            string table = "Expenses";
            string details = "Id: " + expenseId 
                + ", Amount: " + amount 
                + ", Reason: " + reason;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);

            expenseAdapter.Delete(expenseId);
                gv.JSProperties["cpMessage"] = "Record Deleted!!!";
         
        }
        catch (Exception ex)
        {
            gv.JSProperties["cpMessage"] = "Error"; gv.JSProperties["cpMessage"] = "Error";
            Utils.logError(ex);

        }
        finally
        {
            gv.CancelEdit();
        }
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