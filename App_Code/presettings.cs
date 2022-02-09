using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using GsmComm.GsmCommunication;
using GsmComm.PduConverter;
using System.Net.Mail;
using System.Net;
namespace presettings
{
        
    public class Class1
    {
        public static string conStr = "Data Source=ADMIN-E78E6B8E8\\SQLEXPRESS;Initial Catalog=construction;Integrated Security=True";

        public delegate void setCurrentUser(string uid);

        public static string curid;

        public static void setCurUser(string uid)
        {
            curid = uid;

        }

        public static string getRandomNumber(int from, int to)
        {
            Random r = new Random();
            return r.Next(from, to).ToString();

        }
        public static Boolean sendEmail(string subject, string message, string toaddress)
        {



            try
            {

                string toemail;


                MailAddress mailfrom = new MailAddress("projecttravel2@gmail.com");

                MailMessage newmsg = new MailMessage("projecttravel2@gmail.com", toaddress);

                newmsg.Subject = subject;
                newmsg.Body = message;//"Dear Applicant \n \n your paper has been: ";// +cboApprove.Text.ToString() + " \n \n From \n \n CMS " + cboApprove.Text.ToString();



                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.UseDefaultCredentials = false;


                smtp.Credentials = new NetworkCredential("projecttravel2@gmail.com", "Bjp12345");

                smtp.EnableSsl = true;
                smtp.Send(newmsg);

                return true;
            }
            catch (Exception ex)
            {
                return false; // lblError.Text = ex.Message.ToString();
            }
        }

        public static void sendSMS(string mno, string sms)
        {
            GsmCommMain comm = new GsmCommMain("COM12"); // 26

            try
            {

                if (comm.IsConnected())
                {
                    comm.Close();
                }
                comm.Open();
                SmsSubmitPdu pdu = new SmsSubmitPdu(sms, mno);
                comm.SendMessage(pdu);
                comm.Close();
                //return "S";

            }
            catch (Exception ex)
            {
                //return ex.Message.ToString();
            }
        }

    }

}
