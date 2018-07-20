using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "insert into add_category1 (cid,cname,cimageurl) values (@cid,@cname,@cimageurl)";
        cmd.Parameters.AddWithValue("cid", TextBox1.Text);
        cmd.Parameters.AddWithValue("cname", txtCname.Text);
        SaveImage();
        string cimage = "~/images/category/" + catimage.PostedFile.FileName.ToString();
        cmd.Parameters.AddWithValue("cimageurl", cimage);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblStatus.Text = "Uploaded Successfully";
        txtCname.Text = "";



    }
            protected void SaveImage()
        {
            if (catimage.HasFile)
            {
                string filename = catimage.PostedFile.FileName.ToString();
                //Dim fileext As String = System.IO.Path.GetExtension(productimage.FileName)
                catimage.SaveAs(Server.MapPath("~/images/category/" + filename));
            }


        }
            protected void Button2_Click(object sender, EventArgs e)
            {
                Response.Redirect("deletecategory.aspx");
            }
}

