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

public partial class Dependent : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql,sql1,str;
    static DataSet ds;
    static int n;
    public void ClearData()
    {
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        txtother.Text = "";
        txtdob.Text = "";
        checkssntax.Checked = false;
        txtnoofyear.Text = "";

    }
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Session["fname"] = txtfname.Text;
        Session["mname"] = txtmname.Text;
        Session["lname"] = txtlname.Text;
        if (Session["depent"] != "yes")
            Button1.Visible = false;
        cn.Open();
        lblother.Visible = false;
        txtother.Visible = false;
        lblmsg3.Visible = false;
        if (!IsPostBack)
        {
          // FillData();
            FillData1();
        }
    }

    public void FillData1()
    {
        sql = "select * from dependent where taxid='"+Session["taxid"].ToString()+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        ds = new DataSet();
        da.Fill(ds, "dependent");
    }

    private void GetRecord(int n)
    {
        txtfname.Text = ds.Tables[0].Rows[n].ItemArray[1].ToString();
        txtmname.Text = ds.Tables[0].Rows[n].ItemArray[2].ToString();
        txtlname.Text = ds.Tables[0].Rows[n].ItemArray[3].ToString();
        droprelation.Text = ds.Tables[0].Rows[n].ItemArray[4].ToString();
        txtother.Text = ds.Tables[0].Rows[n].ItemArray[5].ToString();
        txtdob.Text = ds.Tables[0].Rows[n].ItemArray[6].ToString();
        string str = ds.Tables[0].Rows[n].ItemArray[7].ToString();
        if (str == "Yes")
        {
            checkssntax.Checked = true;
            itindependent.Visible = true;
        }
        else
        {
            itindependent.Visible = false;
            checkssntax.Checked = false;
           
        }
        
        txtnoofyear.Text = ds.Tables[0].Rows[n].ItemArray[8].ToString();
    }

    public void FillData()
    {
        sql = "select * from dependent where taxid=" + "'" + Session["taxid"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtfname.Text = dr[1].ToString();
            txtmname.Text = dr[2].ToString();
            txtlname.Text = dr[3].ToString();
            droprelation.Text = dr[4].ToString();
            txtother.Text = dr[5].ToString();
            txtdob.Text = dr[6].ToString();
            string str = dr[7].ToString();
            if (str == "Yes")
            {
                checkssntax.Checked = true;
                itindependent.Visible = true;
            }
            else
            {
                checkssntax.Checked = false;
                itindependent.Visible = false;
            }
            txtnoofyear.Text = dr[8].ToString();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (checkssntax.Checked == true)
            str = "Yes";
        else
            str = "No";
       
        SqlCommand cmd2=new  SqlCommand("select count(*) from dependent where taxid='" + Session["taxid"].ToString()+ "' and fname='"+txtfname.Text+"' and mname='"+txtmname.Text+"' and lname='"+txtlname.Text+"'",cn);
        int i = Convert.ToInt16(cmd2.ExecuteScalar());
        if (i == 0)
        {

            if (droprelation.SelectedItem.Text == "Other")
            {
                sql = "insert into dependent values('" + Session["taxid"] + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + droprelation.SelectedItem.Text + "','" + txtother.Text + "','" + txtdob.Text + "','" + str + "','" + txtnoofyear.Text + "')";
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.ExecuteNonQuery();
            }
            else
            {
                sql1 = "insert into dependent(taxid,fname,mname,lname,relation,dob,ssnitin,noofyearsinusa) values('" + Session["taxid"] + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + droprelation.SelectedItem.Text + "','" + txtdob.Text + "','" + str + "','" + txtnoofyear.Text + "')";
                SqlCommand cmd1 = new SqlCommand(sql1, cn);
                cmd1.ExecuteNonQuery();
            }
            //Response.Write("<script type='text/javascript'>");
            //Response.Write("window.close('Dependent.aspx')");
            //Response.Write("</script>");
            ClearData();
        }
        else
        {
            SqlCommand cmd3 = new SqlCommand("update dependent set ssnitin='"+str+"',noofyearsinusa='"+txtnoofyear.Text+"' where taxid='"+Session["taxid"].ToString()+"' and fname='"+txtfname.Text+"' and mname='"+txtmname.Text+"' and lname='"+txtlname.Text+"'", cn);
            cmd3.ExecuteNonQuery();
        }
    }
    protected void droprelation_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (droprelation.SelectedItem.Text == "Other")
        {
            lblother.Visible = true;
            txtother.Visible = true;
        }
    }
    protected void checkssntax_CheckedChanged(object sender, EventArgs e)
    {
        if(checkssntax.Checked == true)
        {
            Response.Write("<script type='text/javascript'>");
            Response.Write("window.open('ITINDependent.aspx')");
            Response.Write("</script>");
        }
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        if (n <=ds.Tables[0].Rows.Count - 1)
        {
            GetRecord(n);
            n += 1;
        }
        else
        {
            lblmsg3.Visible = true;
            lblmsg3.Text = "This is Last Record";
        }
    }
    protected void btnprevious_Click(object sender, EventArgs e)
    {
        if (n > 0)
        {
            n -= 1;
            GetRecord(n);
        }
        else
        {
            lblmsg3.Visible = true;
            lblmsg3.Text = "This is First Record";
        }
    }
    protected void itindependent_Click(object sender, EventArgs e)
    {
        Session["itindepent"] = "yes";
        Response.Redirect("ITINDependent.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("depent");
        Response.Write("<script type='text/javascript'>");
        Response.Write("window.close('Dependent.aspx')");
        Response.Write("</script>");
    }
}
