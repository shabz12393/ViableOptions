using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class WebControls_Admin_Dashboard_Charts : System.Web.UI.UserControl
{
    string dvDefinition;
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        dashboard.DashboardId = "dvDashboard";
    }
    protected void dvDashboard_DashboardLoading(object sender, DevExpress.DashboardWeb.DashboardLoadingWebEventArgs e)
    {
        if (e.DashboardId == "dvDashboard")
        {
            string report = rblStatus.SelectedItem.Value.ToString();
            if (report.Equals("Booking"))
            {
                path = Server.MapPath("~/Admin/Dashboards/Booking-Trend.xml");
                e.DashboardXml = XDocument.Load(path);
            }
            else if (report.Equals("Payments"))
            {
                path = Server.MapPath("~/Admin/Dashboards/Payment-Trend.xml");
                e.DashboardXml = XDocument.Load(path);
            }
            else if (report.Equals("Items"))
            {
                path = Server.MapPath("~/Admin/Dashboards/Items-Trend.xml");
                e.DashboardXml = XDocument.Load(path);
            }
        }
    }
}