using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webprojekt1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage(txtInputEmail.Text, lblOurMAil.Text, txtSubject.Text, txtMessageBody.Text);
            SmtpClient smtpPaperCut = new SmtpClient("localhost");
            try
            {
                smtpPaperCut.Send(message);
            }
            catch (Exception ex)
            {

                lblWrongmessage.Text = ex.ToString();
            }
        }
    }
}