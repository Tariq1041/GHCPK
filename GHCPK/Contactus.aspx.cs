using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    //protected void Unnamed1_Click1(object sender, EventArgs e)
    
    //{
          
    //  string to = "tariq.cs3@gmail.com";
    //  string from =email_id.Value.ToString() ;///  .Value.ToString(); // just for reply
    //  string subject = "Web Site User Contact";

    //  // HTML enabled body
    //  string body = "Hello there ; <br/> "+ message.Value.ToString() +" <br/> Check out my Blog  ...SARDAR TARIQ </a>";


    //  System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage(from, to, subject, body);
      
    //  // If the mail doesn't contain HTML part you don't need to make it true.
    //  msg.IsBodyHtml = true;
      

    //  // Optional for sending an attachment
    // // System.Net.Mail.Attachment attach = new System.Net.Mail.Attachment(@"C:\myfile.csv");
      

    ////   msg.Attachments.Add(attach);
     
      
      
    //  // put your smtp credentials, Here I'm using gmail settings
    //  System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);


    //   // here user name is your gmai ID and password is your email password
    //   System.Net.NetworkCredential gmailAuthentication = new System.Net.NetworkCredential("tariq1041@gmail.com", "Adan1041");
      

    //  smtp.Credentials = gmailAuthentication;
      
    //  smtp.EnableSsl = true;
      

    //  try
    //  {
    //    smtp.Send(msg);

    //  //  Console.WriteLine("Mail sent !");
    //  }
    //  catch (Exception ex)
    //  {  
    //    Console.WriteLine(ex.ToString());
    //  }
      

      
    //}
    protected void btn_img_Click(object sender, ImageClickEventArgs e)
    {
        MailMessage mMailMessage = new MailMessage();
        // address of sender 
        mMailMessage.From = new MailAddress("tariq.cs3@gmail.com");
        // recipient address 
        mMailMessage.To.Add(new MailAddress("tariq1041@gmail.com"));
        // Check if the bcc value is empty 
        //if (txtBcc.Text != string.Empty)
        //{
        //    // Set the Bcc address of the mail message 
        //    mMailMessage.Bcc.Add(new MailAddress(txtBcc.Text));
        //}
        // Check if the cc value is empty 
        //if (txtCc.Text != string.Empty)
        //{
        //    // Set the CC address of the mail message 
        //    mMailMessage.CC.Add(new MailAddress(txtCc.Text));
        //} // Set the subject of the mail message 
        mMailMessage.Subject = name_id.Text;
        // Set the body of the mail message 
        mMailMessage.Body =message.Value.ToString();
        // Set the format of the mail message body as HTML 
        mMailMessage.IsBodyHtml = true;
        // Set the priority of the mail message to normal 
        mMailMessage.Priority = MailPriority.Normal;
        // Instantiate a new instance of SmtpClient 
        SmtpClient mSmtpClient = new SmtpClient();
        // Send the mail message 
        try
        {
            mSmtpClient.Send(mMailMessage);
        }
        catch (Exception ex)
        {
            ;//log error 
           // lblMessage.Text = ex.Message;
        }
        finally
        {
            mMailMessage.Dispose();
        } 
    }
}

