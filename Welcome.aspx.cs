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

public partial class Welcome : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {

       lbltaxid.Text = Session["taxid"].ToString();
        cn.Open();
        if (!IsPostBack)
        {
            FillData();
        }
    }
    public void FillData()
    {
        sql = "select userid from taxregistration where taxid=" + "'" + Session["taxid"] + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr[0].ToString();
        }
    }
}
