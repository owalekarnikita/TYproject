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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtemail.Text == "admin@gmail.com" && txtpassword.Text == "admin")
        {
            Session["email"] = txtemail.Text;
            Response.Redirect("~/AdminSite/adminhome.aspx");
        }

        else
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select username,pwd from signup where email=@email";
            cmd.Parameters.AddWithValue("email", txtemail.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();
             
            if (dr.Read())
            {
                Session["username"] = dr.GetString(0);
                    if (dr.GetString(1).Trim() == txtpassword.Text.Trim())
                    {
                        Session["email"] = txtemail.Text;
                        Cart c = new Cart();
                        Session["cart"] = c;
                        // CODE FOR SHOPPING CART
                        cmd.Dispose();
                        con.Close();
                        Response.Redirect("category.aspx");
                    }
                    else
                    {
                        lblmessage.Text = "please try again!";
                    }

                
            }
            else
            {
                lblmessage.Text = "please try again!";
            }

        }
    }
}