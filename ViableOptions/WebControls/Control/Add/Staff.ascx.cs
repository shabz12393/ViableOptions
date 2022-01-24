using System;
using System.IO;
using DevExpress.Web;
using dsMainTableAdapters;

public partial class WebControls_Control_Add_Staff : System.Web.UI.UserControl
{
    StaffsTableAdapter staffAdapter = new StaffsTableAdapter();
    const String contentDirectory = "~/Images/Profile/";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ucProfile_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
    {
        try
        {
            SaveContentPostedFiles(e.UploadedFile);
        }
        catch (Exception ex)
        {
            cpForm.JSProperties["cpMessage"] = "Error!!!";
            Utils.logError(ex);
        }
    }
    String SaveContentPostedFiles(UploadedFile uploadedFile)
    {

        FileInfo fileInfo = new FileInfo(uploadedFile.FileName);
        try
        {
            if (!uploadedFile.IsValid)
                return string.Empty;
            String CourseFileName = Server.MapPath(contentDirectory) + fileInfo.Name;
            uploadedFile.SaveAs(CourseFileName);

            Session["V_ContentFileName"] = fileInfo.Name;

            return "File Upload Complete";
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            return "An error occured ";

        }
    }
    protected void cpForm_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {

        try
        {
            string pic_url = "";
            string full_name = tbSurName.Text;
            string staff_code = tbStaffCode.Text;
            string telephone = tbTelephone.Text;
            string email = tbEmail.Text;
            string gender = rblGender.SelectedItem.ToString();
            if (Session["V_ContentFileName"] != null)
            {
                pic_url = Session["V_ContentFileName"].ToString();
                staffAdapter.Insert(staff_code, full_name, telephone, email, gender, pic_url);
            }
            else if (gender == "Male")
            {
                pic_url = "staff male.png";
                staffAdapter.Insert(staff_code, full_name, telephone, email, gender, pic_url);
            }
            else if (gender == "Female")
            {
                pic_url = "staff female.png";
                staffAdapter.Insert(staff_code, full_name, telephone, email, gender, pic_url);

            }
            cpForm.JSProperties["cpMessage"] = "Staff Added!!!";
            tbSurName.Text = "";
            tbTelephone.Text = "";
            tbEmail.Text = "";
        }
        catch (Exception ex)
        {
            Utils.logError(ex);
        }
    }
}