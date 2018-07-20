using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["email"] == null))
            Response.Redirect("login.aspx");

        string connString = ConfigurationManager.ConnectionStrings["car"].ToString();//external Sql server 2008



        SqlConnection objConn = new SqlConnection(connString);




        int pid = int.Parse(Request.QueryString["pid"]);
        objConn.Open();
        SqlCommand objCmd = new SqlCommand("select * from products where pid=@pid", objConn);
        objCmd.Parameters.AddWithValue("@pid", pid);
        SqlDataReader rs = objCmd.ExecuteReader();

        rs.Read();
        string pname = rs.GetString(1);
        string pimage = rs.GetString(2);
        double pprice = rs.GetDouble(3);
        Cart c;

        if (Session["cart"] == null)
        {
            c = new Cart();
        }
        else
        {
            c = (Cart)Session["cart"];
        }
        c.Insert(pid, pprice, 1, pname, pimage);
        Session["cart"] = c;

        Response.Redirect("booking_form.aspx");

    }


}


