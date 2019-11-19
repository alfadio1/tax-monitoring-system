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

public partial class ITIN : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    
    string sql;
   
    protected void Page_Load(object sender, EventArgs e)
    {

        txtfname.Text = Session["fname"].ToString();
        txtmname.Text = Session["mname"].ToString();
        txtlname.Text = Session["lname"].ToString();

        cn.Open();
        if (!IsPostBack)
        {
           FillData();
        }
    }
    public void FillData()
    {
        sql = "select * from itinspouse where taxid=" + "'" + Session["taxid"] + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtfname.Text = dr[1].ToString();
            txtmname.Text = dr[2].ToString();
            txtlname.Text = dr[3].ToString();
            txtpassportno.Text = dr[4].ToString();
            txtpassportedate.Text = dr[5].ToString();
            txtvisano.Text = dr[6].ToString();
            txtvisaedate.Text = dr[7].ToString();
            txtplaceofbirth.Text = dr[8].ToString();
            txtaddressinthepassport.Text = dr[9].ToString();
            txtdateofentryusa.Text = dr[10].ToString();
        }
       
        dr.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        if (Session["sitin"] == "yes")
        {
            SqlCommand cmd1 = new SqlCommand("select count(*) from itinspouse where taxid='" + Session["taxid"].ToString() + "'", cn);
            int j = Convert.ToInt16(cmd1.ExecuteScalar());
            if (j == 0)
            {
                sql = "insert into itinspouse values('" + Session["taxid"] + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtpassportno.Text + "','" + txtpassportedate.Text + "','" + txtvisano.Text + "','" + txtvisaedate.Text + "','" + txtplaceofbirth.Text + "','" + txtaddressinthepassport.Text + "','" + txtdateofentryusa.Text + "')";
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.ExecuteNonQuery();
            }
            //if (i == 1)
            //{
                Session.Remove("sitin");
                Session.Remove("sitin1");
                Response.Write("<script type='text/javascript'>");
                Response.Write("window.close('ITINSpouse.aspx')");
                Response.Write("</script>");
            //}
        }
        if (Session["sitin1"] =="yes")
        {
            SqlCommand cmd1 = new SqlCommand("update itinspouse set pnumber='"+txtpassportno.Text+"',pedate='"+txtpassportedate.Text+"',vnumber='"+txtvisano.Text+"',vedate='"+txtvisaedate.Text+"',pbirth='"+txtplaceofbirth.Text+"',addressinp='"+txtaddressinthepassport.Text+"',dateentryusa='"+txtdateofentryusa.Text+"' where taxid='" + Session["taxid"].ToString() + "'", cn);
            cmd1.ExecuteNonQuery();
            Session.Remove("sitin1");
        }
    }
}
