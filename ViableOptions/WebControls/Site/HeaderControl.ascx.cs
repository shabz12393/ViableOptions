using System;
using System.Data;
using System.Web.UI.HtmlControls;
using myCookies;



public partial class WebControls_Site_HeaderControl : System.Web.UI.UserControl
{
    private DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Page.IsPostBack)
            return;
        this.populateMenu();

    }
    private void populateMenu()
    {
        try
        {
            int roleId = Cookies.getRoleId();
            dt = CatalogAccess.GetMenuByRole(roleId);

            foreach (DataRow row in dt.Rows)
            {

                AddMenuItem(row["title"].ToString(), row["navigate_url"].ToString(), Int32.Parse(row["menu_id"].ToString()));
            }

        }
        catch (Exception ex)
        {
            Utils.logError(ex);
            Response.Redirect("~/Default.aspx");
        }
    }

    private void AddMenuItem(string text, string link, int menuId)
    {

        HtmlGenericControl li = new HtmlGenericControl("li");
        HtmlGenericControl anchor = new HtmlGenericControl("a");

        li.Attributes.Add("class", "nav-item p-2");
        anchor.Attributes.Add("class", "nav-link");
        anchor.InnerText = text;

        if (text.Equals("Settings"))
        {
            HtmlGenericControl span = new HtmlGenericControl("span");
            span.Attributes.Add("id", "popupZone");
            span.Attributes.Add("class", "popup");
            anchor.Attributes.Add("class", "nav-link dropdown-toggle");
            anchor.Attributes.Add("href", "javascript:void(0);");
            anchor.Attributes.Add("onclick", "onImageClick()");
            li.Controls.Add(span);
        }
        else if (link.Equals("#") && !text.Equals("Settings"))
        {
            li.Attributes.Add("class", "nav-item dropdown p-2");
            anchor.Attributes.Add("class", "nav-link dropdown-toggle");
            anchor.Attributes.Add("href", link);
            anchor.Attributes.Add("id", "navbarDropdown");
            anchor.Attributes.Add("role", "button");
            anchor.Attributes.Add("data-toggle", "dropdown");
            anchor.Attributes.Add("aria-haspopup", "true");
            anchor.Attributes.Add("aria-expanded", "false");
        }
        else
        {
            anchor.Attributes.Add("href", link);
        }

        DataTable dMenu = CatalogAccess.GetSubMenuByMenu(menuId);
        if (dMenu.Rows.Count > 0)
        {

            HtmlGenericControl div = new HtmlGenericControl("div");
            div.Attributes.Add("class", "dropdown-menu");
            //Create Sub-Menu List
            foreach (DataRow row in dMenu.Rows)
            {
                //Sub-Menu Configuration
                HtmlGenericControl a = new HtmlGenericControl("a");
                a.Attributes.Add("class", "dropdown-item");
                a.InnerText = row["title"].ToString();
                a.Attributes.Add("href", row["navigate_url"].ToString());
                //Sub-Menu Configuration
                HtmlGenericControl separator = new HtmlGenericControl("div");
                separator.Attributes.Add("class", "dropdown-divider");
                div.Controls.Add(a);
                div.Controls.Add(separator);
            }
            li.Controls.Add(div);
        }

        li.Controls.Add(anchor);
        menu.Controls.Add(li);
    }
}