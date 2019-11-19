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

public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        lblmsg.Visible = false;
    }
   
    protected void btnshow_Click(object sender, EventArgs e)
    {
        sql = "select pwd from taxregistration where userid=" + "'" + txtuseid.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblpwd.Text = dr[0].ToString();
            lblmsg.Visible = true;
        }
        else
        {
            lblpwd.Text = "Invalid UserID";
        }
        dr.Close();
    }
}
