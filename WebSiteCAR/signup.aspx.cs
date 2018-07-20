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
        if (username.Text == "" || email.Text=="" || pwd.Text=="")
        { lbl.Text = "please fill in the valid details"; }
        else
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into signup(username,email,mobile,pwd) values(@username,@email,@mobile,@pwd)";
            cmd.Parameters.AddWithValue("username", username.Text);
            cmd.Parameters.AddWithValue("email", email.Text);
            cmd.Parameters.AddWithValue("mobile", mobile.Text);
            cmd.Parameters.AddWithValue("pwd", pwd.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            Response.Redirect("login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e) { 
    
    }
}
