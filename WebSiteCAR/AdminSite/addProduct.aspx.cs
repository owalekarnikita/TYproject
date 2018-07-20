using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    string folderpath = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        lblStatus.Text = "connected Successfully !!";

        cmd.CommandText = "insert into products(pname,pimage,pprice,pdesc,cid, pdesc1,pdesc2) values (@pname,@pimage,@pprice,@pdesc,@cid,@pdesc1,@pdesc2)";
        cmd.Parameters.AddWithValue("pname", txtPname.Text);
        SaveImage();

        int catid = Convert.ToInt32(ddlcid.SelectedValue);
        
        if (catid == 1)
        {
            folderpath = "~/images/categoryproducts/micro/";
            // subcat=@"~\images\categoryproducts\breakfast\";
        }
        else if (catid == 2)
        {
            folderpath = "~/images/categoryproducts/suv/";
            //subcat=@"~\images\categoryproducts\maincourse\";
            //string path = "~\\ path \\" + filename.Trim();
        }
        else if (catid == 3)
        {
            folderpath = "~/images/categoryproducts/sidan/";
            //  subcat=@"~\images\categoryproducts\chinese\";
        }
        else if (catid == 4)
        {
            folderpath = "~/images/categoryproducts/luxury/";
            //    subcat=@"~\images\categoryproducts\deserts\";
        }
        else 
        {
            folderpath = "~/images/categoryproducts/";
            //    subcat=@"~\images\categoryproducts\deserts\";
        }


        if (pimage.HasFile)
        {
            string filename = pimage.PostedFile.FileName.ToString();

            pimage.SaveAs(Server.MapPath(folderpath + filename));

        }


   string proimage = folderpath + pimage.PostedFile.FileName.ToString();
        cmd.Parameters.AddWithValue("pimage", proimage);
        cmd.Parameters.AddWithValue("pprice", txtPrice.Text);
        cmd.Parameters.AddWithValue("pdesc", txtdesc.Text);
        cmd.Parameters.AddWithValue("pdesc1", txtdesc1.Text);
        cmd.Parameters.AddWithValue("pdesc2", txtdesc2.Text);
        cmd.Parameters.AddWithValue("cid", ddlcid.SelectedValue);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblStatus.Text = "Uploaded Successfully !!";

    }
    protected void SaveImage()
    {
        if (pimage.HasFile)
        {
            string filename = pimage.PostedFile.FileName.ToString();
            //Dim fileext As String = System.IO.Path.GetExtension(productimage.FileName)
            pimage.SaveAs(Server.MapPath(folderpath + filename));
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("deleteproduct.aspx");
    }
}