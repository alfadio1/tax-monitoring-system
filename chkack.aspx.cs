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

public partial class chkack : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from adminmail where receiver='" + Session["taxid"].ToString() + "' and senddate='" + Request.QueryString["sdate"].ToString() + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label5.Text = dr[0].ToString();
            Label6.Text = dr[2].ToString();
            if (dr[3].ToString()!= "")
            {
                Label4.Visible = true;
                HyperLink1.Visible = true;
                HyperLink1.Text = dr[3].ToString();
                HyperLink1.NavigateUrl = "~/admin/acks/" + dr[3].ToString();
            }
            TextBox1.Text = dr[4].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
}
