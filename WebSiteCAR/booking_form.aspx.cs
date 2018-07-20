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
    

    string diff;
    protected void Page_Load(object sender, EventArgs e)
    {
        pdate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
        ddate.Attributes["min"] = pdate.Attributes["min"];
       /* {
        DateTime start = new DateTime(TextBox Default2.pdate);
        DateTime end = new DateTime(TextBox Default2.ddate);
        TimeSpan difference = end - start;
        int a=difference.Days;
        lblday.Text=a;
            }*/
    }

  

    protected void pdate_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.DarkGray;
        }
    }

    

  


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["car"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "insert into booking_form(pdate,ddate,ptime,dtime,ploc,dloc,nop,dir,acc) values(@pdate,@ddate,@ptime,@dtime,@ploc,@dloc,@nop,@dir,@acc)";
        cmd.Parameters.AddWithValue("pdate", pdate.Text);
        cmd.Parameters.AddWithValue("ddate", ddate.Text);
        cmd.Parameters.AddWithValue("ptime", ptime.Text);
        cmd.Parameters.AddWithValue("dtime", dtime.Text);
        cmd.Parameters.AddWithValue("ploc", ploc.Text);
        cmd.Parameters.AddWithValue("dloc", dloc.Text);
        cmd.Parameters.AddWithValue("nop", nop.Text);
        cmd.Parameters.AddWithValue("dir", dir.Text);
        cmd.Parameters.AddWithValue("acc", acc.Text);
        String accer = acc.Text; double addcost=0;
        if (accer.Equals("Baby Seat"))
            addcost = 500;
        else if (accer.Equals("Travelling kit"))
            addcost = 500;
        else if (accer.Equals("Both"))
            addcost = 900;

       DateTime dt1 = Convert.ToDateTime(pdate.Text);
       DateTime dt2 = Convert.ToDateTime(ddate.Text);
       Session["diff"] = "" + ((dt1 > dt2) ? (dt1 - dt2).TotalDays : (dt2 - dt1).TotalDays);
       //lblday.Text = ((dt1>dt2)?(dt1-dt2).TotalDays:(dt2-dt1).TotalDays);
      // diff = "" + ((dt1 > dt2) ? (dt1 - dt2).TotalDays : (dt2 - dt1).TotalDays);
        
        Session["ac1"] = acc.Text;
        Session["acc"] = addcost;
        Session["pdate"] = pdate.Text;
        Session["ddate"] = ddate.Text;
        Session["ptime"] = ptime.Text;
        Session["dtime"] = dtime.Text;
        Session["ploc"] = ploc.Text;
        Session["dloc"] = dloc.Text;
        Session["nop"] = nop.Text;
        Session["dir"] = dir.Text;
       
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        Response.Redirect("viewcart.aspx");
    }
   // protected void Button2_Click(object sender, EventArgs e)
    //{
      //  Response.Redirect("booking_form.aspx");
    //}


   
}