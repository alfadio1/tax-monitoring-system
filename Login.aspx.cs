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

public partial class Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql,sql1;
       
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }
    
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if ((txtuserid.Text == "admin") && (txtpwd.Text == "admin"))
        {
            Response.Redirect("~/admin/adminpage.aspx");
        }
        else
        {
            sql = "select taxid from taxregistration where userid='" + txtuserid.Text + "' and pwd='" + txtpwd.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["taxid"] = dr[0].ToString();
                Response.Redirect("welcome.aspx");
                dr.Close();
            }

            else
            {
                dr.Close();
                sql1 = "select userid from interviewer where userid='" + txtuserid.Text + "' and pwd='" + txtpwd.Text + "'";
                SqlCommand cmd1 = new SqlCommand(sql1, cn);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    Session["userid"] = dr1[0].ToString();
                    Response.Redirect("~/Interviewer/Interview.aspx");
                }
                else
                {
                    lblmsg.Text = "Invalid UserID and Password";
                }

                dr1.Close();
            }
            dr.Close();
           
        }
    }
    protected void Login1_Load(object sender, EventArgs e)
    {

    }
}
 