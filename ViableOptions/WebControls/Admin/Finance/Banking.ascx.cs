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

    protected void gvBanking_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        e.Cancel = true;
        try
        {
            object val = e.Keys[0];
            int bankingId = Int32.Parse(val.ToString());
            int amount = (int)e.NewValues["amount"];
            string transactionType = (string)e.NewValues["tran_type"];
            string _notes = (string)e.NewValues["bank_notes"];
            int staffId = Int32.Parse(myCookies.Cookies.getStaffId().ToString());
            bankingAdapter.Update(staffId, transactionType,amount, _notes,bankingId);

            string old_notes = (string)e.OldValues["bank_notes"];
            string oldTransactionType = (string)e.OldValues["tran_type"];
            int old_amount = (int)e.OldValues["amount"];

            string action = "Update";
            string table = "Banking";
            string details = "Id: " + bankingId 
                + ", Amount: New: "  + amount + ", Old: " + old_amount 
                + ", Transaction: New: "+ transactionType   + ", Old: " + oldTransactionType 
                + ", Notes: New: "+ _notes  + ", Old: " + old_notes;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);
            gvBanking.JSProperties["cpMessage"] = "Transaction Updated!!!";

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

    protected void gvBanking_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        e.Cancel = true;
        try
        {
            object val = e.Keys[0];
            int bankingId = Int32.Parse(val.ToString());
            int amount = (int)e.Values["amount"];
            string transactionType = (string)e.Values["tran_type"];
            string _notes = (string)e.Values["bank_notes"];

            int staffId = Int32.Parse(myCookies.Cookies.getStaffId().ToString());

            bankingAdapter.Delete(bankingId);

            string action = "Delete";
            string table = "Banking";
            string details = "Id: " + bankingId 
                + ", Amount: "  + amount 
                + ", Transaction: "  + transactionType 
                + ", Notes: " + _notes;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);

            gvBanking.JSProperties["cpMessage"] = "Transaction Deleted!!!";

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