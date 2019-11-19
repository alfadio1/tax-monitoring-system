using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string str,str1,str2,sql;
    int idno;
    public void ClearData()
    {
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        txtphone.Text = "";
        txtuserid.Text = "";
        txtpwd.Text = "";
        txtconfirmpwd.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        lbltax.Visible = false;
        if (!IsPostBack)
        {
            Generate();
        }
    }
    public void Generate()
    {
        sql = "select max(taxid) from taxregistration";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            str = dr[0].ToString();
            if (str == "")
            {
                str1 = "TAX001";
            }
            else
            {
                str2 = str.Substring(3, str.Length - 3);
                idno = Convert.ToInt32(str2) + 1;
                str1 = "TAX00" + idno.ToString();
            }
        }
       lbltax.Text = str1;
    }
    protected void register_Click(object sender, EventArgs e)
    {
        sql = "insert into taxregistration values ('" + lbltax.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtphone.Text + "','" + txtuserid.Text + "','" + txtpwd.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        
        Response.Redirect("login.aspx");

        lblmsg.Text = "Your UserID " + txtuserid.Text + " Registered";
        ClearData();
    }
}
