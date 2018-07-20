using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        send_order_confirmation_mail();
        //   Session["cart"] = null;

        int result = Convert.ToInt32(Session["Total"]);
        int result1 = Convert.ToInt32(Session["acc"]);
        Session["GTotal"] = result;
        int ab = Convert.ToInt32(Session["diff"]);
        int bc = Convert.ToInt32(Session["GTotal"]);
        int abc = (ab * bc)+ result1;

        String orderdetails1 = "Total amount to be paid= " + abc;
        glbl.Text = orderdetails1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("placedsuccessfully.aspx");
    }

    protected void send_order_confirmation_mail()
    {
        MailMessage mail = new MailMessage();
        string customeremail = (string)Session["email"];
        mail.To.Add(customeremail);
        mail.From = new MailAddress("nikitao8984@gmail.com");
        mail.Subject = "Order Confirmation";
        string msg = "Dear Customer,we have received your order.<br>Your order will be delivered as your sheduled time. <br>Kindly pay Cash on delivery.<br><br>Thank you ...<br><br> For more info contact us on: 7021867641 <br><br>";

        int result = Convert.ToInt32(Session["Total"]);
        int result1 = Convert.ToInt32(Session["acc"]);
        Session["GTotal"] = result ;
        int ab = Convert.ToInt32(Session["diff"]);
        int bc = Convert.ToInt32(Session["GTotal"]);
        int abc = (ab * bc)+result1;

        String orderdetails1 = "Total amount to be paid= " + abc;
        glbl.Text = orderdetails1;
        mail.Body = msg + orderdetails1;

        mail.IsBodyHtml = true;

        //'Attach file using FileUpload Control and put the file in memory stream

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        //'Or Your SMTP Server Address
        smtp.Credentials = new System.Net.NetworkCredential("nikitao8984@gmail.com", "nick9930");
        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);


        //        To enable sending mail from your account using following code
        //Open your account in gmail,-> My Account ->Apps with Account Access _>Turn ON ->allow access to less secure appps



    }

}

