using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using dsMainTableAdapters;

using DevExpress.Data;

public partial class WebControls_Cashier_Bookings_Customers: System.Web.UI.UserControl
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
           bool response =  CatalogAccess.AddCustomer(full_name, telephone, email, gender, notes);

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
}