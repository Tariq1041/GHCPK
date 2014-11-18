using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GHCPK_BAL;
using System.Collections;
using System.IO;


using System.Net.Mail;
using System.Net;


public partial class Admin_Contactus : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;
    DateTime current_date = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            sessionUser = Session["user"].ToString();
            sessinName = Session["Name"].ToString();
        }

    }
    protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            //DisplayMessage.Text = "Your Comments after sending the mail";
            //DisplayMessage.Visible = true;
            //YourSubject.Text = "";
            //YourEmail.Text = "";
            //YourName.Text = "";
            //Comments.Text = "";
        }
        catch (Exception) { }
    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "tariq.qau.cs@gmail.com";
        // any address where the email will be sending
        var toAddress = txt_email.Text.ToString();
        //Password of your gmail address
        const string fromPassword = "Adan1041";
        // Passing the values and make a email formate to display
        string subject = txt_subject.Text.ToString();
        string body = "From: " + txt_fname.Text + txt_lname.Text + "\n";
        body += "Email: " + txt_email.Text + "\n";
        body += "Subject: " + txt_subject.Text + "\n";
        body += "Question: \n" + txt_msg.Text + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }


    protected void linkreset_Click(object sender, ImageClickEventArgs e)
    {
        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_email.Text = "";
        txt_msg.Text = "";
        lblError2.Visible = false;
    }
}