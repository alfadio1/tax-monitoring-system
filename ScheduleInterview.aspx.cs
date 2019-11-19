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
using System.Data.SqlClient;

public partial class ScheduleInterview : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string str = "No";
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cal.Visible = false;
        lblmsg.Visible = false;
        Label1.Visible = false;
        if (Page.IsPostBack == false)
        {
            txtselecteddate.Text = "";
        }
    }
        
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        sql = "insert into schedule(taxid,sdate,status) values('" + Session["taxid"] + "','" + txtselecteddate.Text + "','" + str + "')";
        
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "your request has been sent successfully";
        Response.Redirect("Welcome.aspx");
    }
    protected void btnshowcal_Click(object sender, EventArgs e)
    {
        cal.Visible = true;
        //lblmsg.Visible = false;
    }
    protected void cal_SelectionChanged(object sender, EventArgs e)
    {
        if (cal.SelectedDate <= DateTime.Now)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "You Selected Date is In Valid Please Select Valid Date";
        }
        else
        {

            txtselecteddate.Text = cal.SelectedDate.ToString();
        }
    }
}
