using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class WebControls_Control_Company : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void gvCompany_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
    {
        gvCompany.AddNewRow();
    }
}