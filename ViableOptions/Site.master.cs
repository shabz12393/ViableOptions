using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cpMain_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        try
        {
            string virtualPath = "~/Default.aspx";
            ASPxWebControl.RedirectOnCallback(virtualPath);
        }
        catch (Exception)
        {

        }
    }

    protected void cpChange_Callback(object sender, CallbackEventArgsBase e)
    {
        pcPassword.ShowOnPageLoad = true;
    }
}
