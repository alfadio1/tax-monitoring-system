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

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql,sql1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        lblerror.Visible = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //sql = "select pwd from registration where taxid=" + "'"+Session["taxid"]+"'";
        ////lblerror.Text = sql;
        ////txtoldpwd.Text = sql;
        ////Response.Write(sql);
        //SqlCommand cmd = new SqlCommand(sql, cn);
        //SqlDataReader dr = cmd.ExecuteReader();
        //if (dr.Read())
        //{
        //    txtoldpwd.Text = dr[0].ToString();
        //}
        //else
        //{
            sql1 = "update taxregistration set pwd='" + txtnewpwd.Text + "' where pwd=" + "'" + txtoldpwd.Text + "' and taxid=" + "'" + Session["taxid"] + "'";
           // lblerror.Text = sql1;
            SqlCommand cmd1 = new SqlCommand(sql1, cn);
            int i= cmd1.ExecuteNonQuery();
            if(i==1)
            {
                lblerror.Visible = true;
                lblerror.Text="Your Password is Changed";
            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text="You Entered Password is Wrong";
            }
        //}
    }
}
