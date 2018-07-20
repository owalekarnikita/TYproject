using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AdminSite_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "insert into gallery (gname,gimageurl) values (@gname,@gimageurl)";
        cmd.Parameters.AddWithValue("gname", txtgname.Text);
        SaveImage();
        string gimage = "~/images/gallery/" + galimage.PostedFile.FileName.ToString();
        cmd.Parameters.AddWithValue("gimageurl", gimage);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblStatus.Text = "Uploaded Successfully";
        txtgname.Text = "";



    }
            protected void SaveImage()
        {
            if (galimage.HasFile)
            {
                string filename = galimage.PostedFile.FileName.ToString();
                //Dim fileext As String = System.IO.Path.GetExtension(productimage.FileName)
                galimage.SaveAs(Server.MapPath("~/images/gallery/" + filename));
            }


        }


    protected void  Button2_Click(object sender, EventArgs e)
{
    Response.Redirect("deletegallery.aspx");
}
}
