using System;
using DevExpress.Web;
using dsMainTableAdapters;
using DevExpress.Data;

public partial class WebControls_Admin_Staff_Staff : System.Web.UI.UserControl
{
    private StaffsTableAdapter staffAdapter = new StaffsTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

        gvStaff.SortBy(gvStaff.Columns["full_name"], ColumnSortOrder.Ascending);
        gvStaff.ExpandAll();
    }

    protected void gvStaff_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxGridView gv = (ASPxGridView)sender;
        e.Cancel = true;
        try
        {
            object _id = e.Keys[0];
            int staffId = Int32.Parse(_id.ToString());
            string staffCode = (string)e.NewValues["staff_code"];
            string full_name = (string)e.NewValues["full_name"];
            string telephone = (string)e.NewValues["telephone"];
            string email = (string)e.NewValues["email"];
            string gender = (string)e.NewValues["gender"];
            string staff_status = (string)e.NewValues["staff_status"];
            staffAdapter.Update(staffCode, full_name, telephone, email, gender,staff_status, staffId);

            string old_full_name = (string)e.OldValues["full_name"];
            string old_telephone = (string)e.OldValues["telephone"];
            string old_email = (string)e.OldValues["email"];
            string old_gender = (string)e.OldValues["gender"];
            string old_staff_status = (string)e.OldValues["staff_status"];

            string action = "Update";
            string table = "Staff";
            string details = "Id: " + staffId
                + ", full name: New: " + full_name + ", Old: " + old_full_name
                + ", Telephone: New: " + telephone + ", Old: " + old_telephone
                + ", email: New: " + email + ", Old: " + old_email
                + ", gender: New: " + gender + ", Old: " + old_gender
                + ", staff_status: New: " + staff_status + ", Old: " + old_staff_status;

            string action_by = myCookies.Cookies.getUserName();

           Utils.logAudit(action, table, details, action_by);

            gv.JSProperties["cpMessage"] = "Record Updated";
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