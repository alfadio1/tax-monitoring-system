using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedItem.Text == "Bank Information")
        {
            Session.Remove("test");
            Response.Redirect("BankInformation.aspx");
        }
        else if (Menu1.SelectedItem.Text == "Vehicle Information")
        {
            Session.Remove("test1");
            Response.Redirect("VehicleInformation.aspx");
        }
    }
}
