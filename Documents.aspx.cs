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

public partial class Documents : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    string sql;
    string str;
    string str1;
    string str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        cn.Open();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
            str2 = "Documents not Verfied";      
            str = uploadfile.FileName;
            uploadfile.PostedFile.SaveAs(Server.MapPath("~/UpLoadDocuments/" + str));

            str1 = "~/UpLoadDocuments/" + str;

            sql = "insert into documents values('" + Session["taxid"] + "','" + dropdocumenttype.SelectedItem.Text + "','" + str1 + "','"+str2+"')";
            SqlCommand cmd = new SqlCommand(sql, cn);
           int i= cmd.ExecuteNonQuery();
           if (i == 1)
           {
               Label1.Visible = true;
               Label1.Text = "your documents are uploaded successfully";
           }

    }
}
