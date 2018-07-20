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
        //string first = Session["username"];
        //txtusername.Text = first;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection objConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
        try
        {
            objConn.Open();
            int intInsert;
            String strInsertQry;

            strInsertQry = "insert into tbl_feedback(name,contact,email,feedback) values(@name,@contact,@email,@feedback)";
            SqlCommand Cmdins = new SqlCommand(strInsertQry, objConn);


            Cmdins.Parameters.AddWithValue("@name", Session["username"]);
            Cmdins.Parameters.AddWithValue("@contact", txtmobileno.Text);
            Cmdins.Parameters.AddWithValue("@email", Session["email"]);
            Cmdins.Parameters.AddWithValue("@feedback", txtfeedback.Text);

            intInsert = Cmdins.ExecuteNonQuery();


            if (intInsert > 0)
                Response.Redirect("index.aspx");


            objConn.Close();

        }
        catch (Exception ex) { throw ex; }

    }
}