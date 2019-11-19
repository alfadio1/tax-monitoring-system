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

public partial class Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "insert into payment values('" + Session["taxid"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, cn);
        int i=cmd.ExecuteNonQuery();
        if (i == 1)
        {
            Label4.Visible = true;
            Label4.Text = "your amount will be credeted";
            clear();
        }
    }
    private void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}
