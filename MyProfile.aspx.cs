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

public partial class MyProfile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
   
    string sql,sql1,sql2,sql3,str;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lbltaxid.Text = Session["taxid"].ToString();
        Label1.Visible = false;
        cn.Open();
        if (!IsPostBack)
        {
            FillData(); 
        }
    }

    public void FillData()
    {
        sql = "select * from myprofile where taxid=" + "'" + Session["taxid"] + "'";
        ///Response.Write(sql);
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbltaxid.Text = dr[0].ToString();
            txtfname.Text = dr[1].ToString();
            txtmname.Text = dr[2].ToString();
            txtlname.Text = dr[3].ToString();
            radiogender.Text = dr[4].ToString();
            txtdob.Text = dr[5].ToString();
            txtssn.Text = dr[6].ToString();
            txtaddress.Text = dr[7].ToString();
            txtcity.Text = dr[8].ToString();
            txtstate.Text = dr[9].ToString();
            txtzip.Text = dr[10].ToString();
            txtemail.Text = dr[11].ToString();
            listoccuiption.Text = dr[12].ToString();
            radiomaritalstatus.Text = dr[13].ToString();
            radiodependency.Text = dr[14].ToString();
            txtpassno.Text = dr[18].ToString();
            txtpassexp.Text = dr[19].ToString();
            txtvisano.Text = dr[20].ToString();
            txtvisaexp.Text = dr[21].ToString();
            radiobank.Text = dr[16].ToString();
            radiovehicle.Text = dr[17].ToString();
        }
        
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        str = "New";

               
        //lbltaxid.Text = Session["taxid"].ToString();
        sql = "select taxid from myprofile where taxid=" + "'" + Session["taxid"] + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            sql1 = "update myprofile set fname='" + txtfname.Text + "',mname='" + txtmname.Text + "',lname='" + txtlname.Text + "',gender='" + radiogender.SelectedItem.Text + "',dob='" + txtdob.Text + "',ssnitin='" + txtssn.Text + "',address='" + txtaddress.Text + "',city='" + txtcity.Text + "',state='" + txtstate.Text + "',zip='" + txtzip.Text + "',email='" + txtemail.Text + "',occuiption ='" + listoccuiption.SelectedItem.Text + "',mstatus='" + radiomaritalstatus.SelectedItem.Text + "',dependency='" + radiodependency.SelectedItem.Text + "',pnumber= '" + txtpassno.Text + "',pexp='" + txtpassexp.Text + "',vnumber='" + txtvisano.Text + "',vexp='" + txtvisaexp.Text + "',bank='" + radiobank.SelectedItem.Text + "',vehicle='" + radiovehicle.SelectedItem.Text + "' where taxid=" + "'" + Session["taxid"] + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, cn);
            dr.Close();
            cmd1.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your profile has been updated successfully";
            
        }
        else if (txtssn.Text == "")
        {
            dr.Close();
            sql2 = "insert myprofile(taxid,fname,mname,lname,gender,dob,address,city,state,zip,email,occuiption,mstatus,dependency,ctype,pnumber,pexp,vnumber,vexp,bank,vehicle) values('" + Session["taxid"].ToString() + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + radiogender.SelectedItem.Text + "','" + txtdob.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzip.Text + "','" + txtemail.Text + "','" + listoccuiption.SelectedItem.Text + "','" + radiomaritalstatus.SelectedItem.Text + "','" + radiodependency.SelectedItem.Text + "','" + str + "','"+txtpassno.Text+"','"+txtpassexp.Text+"','"+txtvisano.Text+"','"+txtvisaexp.Text+"','"+radiobank.SelectedItem.Text+"','"+radiovehicle.SelectedItem.Text+"')";
            //Label2.Text = sql2;
            SqlCommand cmd2 = new SqlCommand(sql2, cn);
            cmd2.ExecuteNonQuery();
            //Clear();
            Label1.Visible = true;
            Label1.Text = "your profile has been submitted successfully";
        }
        else
        {
            dr.Close();
            sql3 = "insert myprofile(taxid,fname,mname,lname,gender,dob,ssnitin,address,city,state,zip,email,occuiption,mstatus,dependency,ctype,pnumber,pexp,vnumber,vexp,bank,vehicle) values('" + Session["taxid"].ToString() + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + radiogender.SelectedItem.Text + "','" + txtdob.Text + "','" + txtssn.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzip.Text + "','" + txtemail.Text + "','" + listoccuiption.SelectedItem.Text + "','" + radiomaritalstatus.SelectedItem.Text + "','" + radiodependency.SelectedItem.Text + "','" + str + "','" + txtpassno.Text + "','" + txtpassexp.Text + "','" + txtvisano.Text + "','" + txtvisaexp.Text + "','" + radiobank.SelectedItem.Text + "','" + radiovehicle.SelectedItem.Text + "')";
            //Label2.Text = sql2;
            SqlCommand cmd3 = new SqlCommand(sql3, cn);
            cmd3.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your profile has been submitted successfully";
        }
        dr.Close();
    }
    public void Clear()
    {
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        foreach (ListItem li in radiogender.Items)
        {
            li.Selected = false;
        }
        txtdob.Text = "";
        txtssn.Text = "";
        txtaddress.Text = "";
        txtcity.Text = "";
        txtstate.Text = "";
        txtzip.Text = "";
        txtemail.Text = "";
        txtpassno.Text = "";
        txtpassexp.Text = "";
        txtvisano.Text = "";
        txtvisaexp.Text = "";
        foreach (ListItem li1 in listoccuiption.Items)
        {
            li1.Selected = false;
        }
        foreach (ListItem li2 in radiomaritalstatus.Items)
        {
            li2.Selected  = false;
        }
        foreach (ListItem li3 in radiodependency.Items)
        {
            li3.Selected = false;
        }
        foreach (ListItem li4 in radiobank.Items)
        {
            li4.Selected = false;
        }
        foreach (ListItem li5 in radiovehicle.Items)
        {
            li5.Selected = false;
        }
    }
    protected void radiomaritalstatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radiomaritalstatus.SelectedItem.Text == "Marrried")
        {
            Session["married"] = "yes";
            Response.Write("<script type='text/javascript'>");
            Response.Write("window.open('Spouse.aspx')");
            Response.Write("</script>");
        }
    }
    protected void radiodependency_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radiodependency.SelectedItem.Text == "Yes")
        {
            Session["depent"] = "yes";
            Response.Write("<script type='text/javascript'>");
            Response.Write("window.open('Dependent.aspx')");
            Response.Write("</script>");
        }
    }
    protected void radiobank_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radiobank.SelectedItem.Text == "Yes")
        {
            Session["bank"] = "yes";
            Response.Write("<script type='text/javascript'>");
            Response.Write("window.open('BankInformation.aspx')");
            Response.Write("</script>");
        }
    }
    protected void radiovehicle_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radiovehicle.SelectedItem.Text =="Yes")
        {
            Session["vehicle"] = "yes";
            Response.Write("<script type='text/javascript'>");
            Response.Write("window.open('VehicleInformation.aspx')");
            Response.Write("</script>");
        }
    }
    protected void WebUserControl1_Load(object sender, EventArgs e)
    {

    }
}
