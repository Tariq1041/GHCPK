using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Mail;
using System.Net.Mail;

public partial class Test_Mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Send(string from, string to, string Message, string subject, string host, int port, string password)
    {
        System.Net.Mail.MailMessage email = new System.Net.Mail.MailMessage();
        email.From = new MailAddress(from);
        email.Subject = subject;
        email.Body = Message;
        SmtpClient smtp = new SmtpClient(host, port);
        smtp.UseDefaultCredentials = false;
        NetworkCredential nc = new NetworkCredential(txtFrom.Text.Trim(), password);
        smtp.Credentials = nc;
        smtp.EnableSsl = true;
        email.IsBodyHtml = true;

        email.To.Add(to);

        string fileName = "";
      /*  if (FileUpload1.PostedFile != null)
        {
            HttpPostedFile attchment = FileUpload1.PostedFile;
            int FileLength = attchment.ContentLength;
            if (FileLength > 0)
            {
                fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Path.Combine(Server.MapPath("~/EmailAttachment"), fileName));
                Attachment attachment = new Attachment(Path.Combine(Server.MapPath("~/EmailAttachment"), fileName));
                email.Attachments.Add(attachment);
            }
        }*/
        smtp.Send(email);

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        Send(txtFrom.Text, txtTo.Text, txtMessage.Text, txtSubject.Text, "smtp.gmail.com", 587, "Adan1041");
    }
}