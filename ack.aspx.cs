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

public partial class ack : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        filldata();
    }
    private void filldata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from adminmail where receiver='" + Session["taxid"].ToString() + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "mail");
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
    }
}
