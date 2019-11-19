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

public partial class ITINDependent : System.Web.UI.Page
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
        sql = "select * from itindependent where taxid='" + Session["taxid"].ToString()+ "' and fname='"+Session["fname"].ToString()+"' and mname='"+Session["mname"]+"' and lname='"+Session["lname"]+"'";
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
        if (Session["itindepent"] != "yes")
        {
            SqlCommand cmd2 = new SqlCommand("select count(*) from itindependent where taxid='" + Session["taxid"].ToString() + "' and fname='" + txtfname.Text + "' and mname='" + txtmname.Text + "' and lname='" + txtlname.Text + "'", cn);
            int count = Convert.ToInt16(cmd2.ExecuteScalar());
            if (count == 0)
            {
                sql = "insert into itindependent values('" + Session["taxid"] + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtpassportno.Text + "','" + txtpassportedate.Text + "','" + txtvisano.Text + "','" + txtvisaedate.Text + "','" + txtplaceofbirth.Text + "','" + txtaddressinthepassport.Text + "','" + txtdateofentryusa.Text + "')";
                SqlCommand cmd = new SqlCommand(sql, cn);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {

                    Response.Write("<script type='text/javascript'>");
                    Response.Write("window.close('ITINDependent.aspx')");
                    Response.Write("</script>");
                }
            }
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("update itindependent set pnumber='"+txtpassportno.Text+"',pedate='"+txtpassportedate.Text+"',vnumber='"+txtvisano.Text+"',vedate='"+txtvisaedate.Text+"',pbirth='"+txtplaceofbirth.Text+"',addressinp='"+txtaddressinthepassport.Text+"',dateentryusa='"+txtdateofentryusa.Text+"' where taxid='"+Session["taxid"].ToString()+"' and fname='"+txtfname.Text+"' and mname='"+txtmname.Text+"' and lname='"+txtlname.Text+"'", cn);
            cmd1.ExecuteNonQuery();
            Session.Remove("itindepent");
            Response.Redirect("welcome.aspx");
        }
    } 
    protected void txtpassportedate_TextChanged(object sender, EventArgs e)
    {

    }
}
