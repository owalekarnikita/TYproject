using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String mobile;

        String password;
        String mycon = "Data Source=NICK\\SQLEXPRESS;Initial Catalog=WebSiteCAR;Integrated Security=True";
        String myquery = "Select * from signup where email='" + TextBox1.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";
            mobile = ds.Tables[0].Rows[0]["mobile"].ToString();
            password = ds.Tables[0].Rows[0]["pwd"].ToString();
            sendpassword(mobile, password, TextBox1.Text);

        }
        else
        {
            Label1.Text = "Your Username is Not Valid";

        }
        con.Close();

    }
    private void sendpassword(String mobileno, String password1, String username)
    {

        string message = "Hi " + username + " , Your Password for car rental system is " + password1 ;

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "Tsl5IRtSACM-BOCveQZBUsiFbJaOL8ZFZEIQGMP9fj"},
                {"numbers" , mobileno},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            string mobilelast = "*******" + mobileno.Substring(8);
            Label1.Text = "Your Password Has Been Sent to Registered Mobile Number " + mobilelast;
        }
    }


}