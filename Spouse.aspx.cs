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

public partial class Spouse : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    string str;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["fname"] = txtfname.Text;
        Session["mname"] = txtmname.Text;
        Session["lname"] = txtlname.Text;

       
        cn.Open();
        if (!IsPostBack)
        {
            FillData();
        }
    }
    public void FillData()
    {
        sql = "select * from spouse where taxid=" + "'" + Session["taxid"] + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtfname.Text = dr[1].ToString();
            txtmname.Text = dr[2].ToString();
            txtlname.Text = dr[3].ToString();
            txtdob.Text = dr[4].ToString();
            occupationdropdownlist.Text = dr[5].ToString();
            string str = dr[6].ToString();
            if (str == "Yes")
            {
                checkssntax.Checked = true;
                itinspouse.Visible = true;
            }
            else
            {
                checkssntax.Checked = false;
                itinspouse.Visible = false;
            }
        }
       
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (checkssntax.Checked == true)
            str = "Yes";
        else
        
            str = "No";
        if (Session["married"] == "yes")
        {
            SqlCommand cmd1 = new SqlCommand("select count(*) from spouse where taxid='" + Session["taxid"].ToString() + "'", cn);
            int j=Convert.ToInt16(cmd1.ExecuteScalar());
            if (j == 0)
            {
                sql = "insert into spouse values('" + Session["taxid"] + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtdob.Text + "','" + occupationdropdownlist.SelectedItem.Text + "','" + str + "')";
                SqlCommand cmd = new SqlCommand(sql, cn);
                i = cmd.ExecuteNonQuery();
                // Session.Remove("married");
            }
          
                //if (i == 1)
                //{
                    Session.Remove("married");
                    Response.Write("<script type='text/javascript'>");
                    Response.Write("window.close('Spouse.aspx')");
                    Response.Write("</script>");
                //}
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("update spouse set fname='" + txtfname.Text + "',mname='" + txtmname.Text + "',lname='" + txtlname.Text + "',dob='" + txtdob.Text + "',occupation='" + occupationdropdownlist.SelectedItem.Text + "',ssnitin='" + str + "' where taxid='" + Session["taxid"].ToString() + "'", cn);
            cmd2.ExecuteNonQuery();
        }
    }
    protected void checkssntax_CheckedChanged(object sender, EventArgs e)
    {
        if (checkssntax.Checked == true)
        {
            Session["sitin"] = "yes";
            Response.Write("<script type='text/javascript'>");
            Response.Write("window.open('ITINSpouse.aspx')");
            Response.Write("</script>");
        }
    }
    protected void itinspouse_Click(object sender, EventArgs e)
    {
        Session["sitin1"] = "yes";
        Response.Redirect("ITINSpouse.aspx");
    }
}
