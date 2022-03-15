using System;
using DevExpress.Web;
using dsMainTableAdapters;
using DevExpress.Data;

public partial class WebControls_Admin_Customers: System.Web.UI.UserControl
{
    private customersTableAdapter customerAdapter = new customersTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

        gvCustomers.SortBy(gvCustomers.Columns["full_name"], ColumnSortOrder.Ascending);
        gvCustomers.ExpandAll();
    }

    protected void gvCustomers_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        gvCustomers.AddNewRow();
    }

    protected void gvCustomers_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            string full_name = (string)e.NewValues["full_name"];
            string telephone = (string)e.NewValues["telephone"];
            string email = (string)e.NewValues["email"];
            string gender = (string)e.NewValues["gender"];
            string notes = (string)e.NewValues["notes"];
            bool response = CatalogAccess.AddCustomer(full_name, telephone, email, gender, notes);

            gv.JSProperties["cpMessage"] = response ? "Insert successful" : "Insert failed";
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

    protected void gvCustomers_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int customerId = Int32.Parse(_id.ToString());
            string customerCode = (string)e.OldValues["customer_code"];


            string old_full_name = (string)e.OldValues["full_name"];
            string old_telephone = (string)e.OldValues["telephone"];
            string old_email = (string)e.OldValues["email"];
            string old_gender = (string)e.OldValues["gender"];
            string old_notes = (string)e.OldValues["notes"];

            string full_name = (string)e.NewValues["full_name"];
            string telephone = (string)e.NewValues["telephone"];
            string email = (string)e.NewValues["email"];
            string gender = (string)e.NewValues["gender"];
            string notes = (string)e.NewValues["notes"];

            customerAdapter.Update(full_name, telephone, email, gender, notes,customerId);

            string action = "Update";
            string table = "Customers";
            string details = "Id: " + customerId
            + ", customer_code: " + customerCode
            + ", full name: New: " + full_name + ", Old: " + old_full_name
            + ", telephone: New: " + telephone + ", Old: " + old_telephone
            + ", email: New: " + email + ", Old: " + old_email
            + ", gender: New: " + gender + ", Old: " + old_gender
            + ", notes: New: " + notes + ", Old: " + old_notes;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);

            gv.JSProperties["cpMessage"] = "Record Updated!!!";
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
}