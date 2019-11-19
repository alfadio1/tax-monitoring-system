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

public partial class BankInformation : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    static DataSet ds;
   static int ptr;
    string str;
    string sql1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
      
        Label2.Visible = false;
        if (Session["bank"] != "yes")
            Button1.Visible = false;
        cn.Open();
        if (!IsPostBack)
        {
            FillData();
          //  FillData1();
        }
    }
    public void ClearData()
    {
        txtbname.Text = "";
        txtanumber.Text = "";
        txtrnumber.Text = "";
        foreach (ListItem li in radioatype.Items)
        {
            li.Selected = false;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        sql1 = "select anumber from bank where anumber='" + txtanumber.Text + "' and taxid='"+Session["taxid"].ToString()+"'";
        SqlCommand cmd1=new SqlCommand(sql1,cn);
        SqlDataReader dr=cmd1.ExecuteReader();
        if (dr.Read())
        {
            Label1.Visible = true;
            Label1.Text = "Account Number is Already Exists";
           
        }
        else
        {
            dr.Close();
            sql = "insert into bank(bname,anumber,rnumber,atype,taxid) values('" + txtbname.Text + "','" + txtanumber.Text + "','" + txtrnumber.Text + "','" + radioatype.SelectedItem.Text + "','" + Session["taxid"] + "')";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "bank information submitted successfully";

        }
        ClearData();

        
        //Response.Write("<script type='text/javascript'>");
        //Response.Write("window.close('BankInformation.aspx')");
        //Response.Write("</script>");
    }
    public void FillData()
    {
        sql = "select * from bank where taxid='"+Session["taxid"].ToString()+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        ds = new DataSet();
        da.Fill(ds, "bank");
    }
    public void FillData1()
    {
        sql = "select * from bank taxid='"+Session["taxid"].ToString()+"'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtbname.Text = dr[0].ToString();
            txtanumber.Text = dr[1].ToString();
            txtrnumber.Text = dr[2].ToString();
            radioatype.Text = dr[3].ToString();
        }
        dr.Close();
    }
    public void GetData(int ptr)
    {
        txtbname.Text = ds.Tables[0].Rows[ptr].ItemArray[0].ToString();
        txtanumber.Text = ds.Tables[0].Rows[ptr].ItemArray[1].ToString();
        txtrnumber.Text = ds.Tables[0].Rows[ptr].ItemArray[2].ToString();
        radioatype.Text = ds.Tables[0].Rows[ptr].ItemArray[3].ToString();
    }

    protected void btnnext_Click(object sender, EventArgs e)
    {
        
        if (ptr<=ds.Tables[0].Rows.Count - 1)
        {    
            GetData(ptr);
            ptr += 1;   
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "This is Last Record";
        }
    }
    protected void btnprevious_Click(object sender, EventArgs e)
    {
        if (ptr > 0)
        {
            ptr -= 1;
            GetData(ptr);
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "This is First Record";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("bank");
        Response.Write("<script type='text/javascript'>");
        Response.Write("window.close('BankInformation.aspx')");
        Response.Write("</script>");
        //string str = "Yes";
        //if (str==Session["test"])
        //    Response.Redirect("myprofile.aspx");
        //else
        //    Response.Redirect("welcome.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ClearData();
    }
}
