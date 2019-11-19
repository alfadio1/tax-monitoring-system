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

public partial class VehicleInformation : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    static DataSet ds;
    static int ptr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible= false;
        cn.Open();
        if (Session["vehicle"] != "yes")
        {
            Button1.Visible = false;
            //Clear();
        }
        if (!IsPostBack)
        {
            if (Session["vehicle"] != "yes")
            {
                //Button1.Visible = false;
                Clear();
            }
            FillData();
           // FillData1();
        }
    }

    public void FillData1()
    {
        sql = "select * from vehicle";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtmake.Text = dr[0].ToString();
            txtmodel.Text = dr[1].ToString();
            txtpdate.Text = dr[2].ToString();
            txtbmileage.Text = dr[3].ToString();
            txtemileage.Text = dr[4].ToString();
        }
        dr.Close();
    }
    public void Clear()
    {
        txtmake.Text="";
        txtmodel.Text = "";
        txtpdate.Text = "";
        txtbmileage.Text = "";
        txtemileage.Text = "";
        
    }

    public void FillData()
    {
        sql = "select * from vehicle  where taxid='"+Session["taxid"].ToString()+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        ds = new DataSet();
        da.Fill(ds, "vehicle");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        sql = "insert vehicle values('"+txtmake.Text+"','"+txtmodel.Text+"','"+txtpdate.Text+"','"+txtbmileage.Text+"','"+txtemileage.Text+"','"+Session["taxid"]+"')";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        Label2.Visible = true;
        Label2.Text = "information submitted successfully";
        Clear();

        //Response.Write("<script type='text/javascript'>");
        //Response.Write("window.close('VehicleInformation.aspx')");
        //Response.Write("</script>");
    }

   // public void 
    public void GetData(int ptr)
    {
        txtmake.Text = ds.Tables[0].Rows[ptr].ItemArray[0].ToString();
        txtmodel.Text = ds.Tables[0].Rows[ptr].ItemArray[1].ToString();
        txtpdate.Text = ds.Tables[0].Rows[ptr].ItemArray[2].ToString();
        txtbmileage.Text = ds.Tables[0].Rows[ptr].ItemArray[3].ToString();
        txtemileage.Text = ds.Tables[0].Rows[ptr].ItemArray[4].ToString();
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        if (ptr < ds.Tables[0].Rows.Count - 1)
        {
            ptr += 1;
            GetData(ptr);
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
        Session.Remove("vehicle");
        Response.Write("<script type='text/javascript'>");
        Response.Write("window.close('VehicleInformation.aspx')");
        Response.Write("</script>");
    }
}
