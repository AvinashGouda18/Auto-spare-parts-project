using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Net;
using System.IO;

/// <summary>
/// Summary description for Prolab
/// </summary>
public class Prolab
{
    public static string dbConnection = "Data Source=208.91.198.196;Initial Catalog=bhavani-db;Integrated Security=False;User ID=bhavavh3;Password=8%o!7o5A9f2~b7Pr";

    public Prolab()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string SendSMS(string mobile, string message)
    {
        //string url = "http://sms.foosms.com/pushsms.php?username=kulkarnigururaj&password=gururajmca1&sender=Hescom&to=" + mobile + "&message=" + message;
        // string url = "http://site6.way2sms.com/jsp/Main.jsp?id=9035774216.300007&sender=somanath=" + mobile + "&message=" + message;


        //  string url = "http://sms.foosms.com/pushsms.php?username=projectmaker&api_password=6c834pfwlac7m9339&sender=EBFLAG&to=" + mobile + "&message=" + message + "&priority=8";
        // string url = "http://www.kutility.in/app/smsapi/index.php?key=35B0CEDEB6F35D&routeid=416&type=text&contacts=" + mobile + "&senderid=BAVANI" + "&msg=" + message;// Hello+People%2C+have+a+great+day";
       // string url = "http://jskbulkmarketing.in/app/smsapi/index.php?key=25F198B07287FC&routeid=569&type=text&contacts=" + mobile + "&senderid=IALERT&msg=" + message;

        //string url = "http://byebyesms.com/app/smsapi/index.php?key=55F1808D812D03&routeid=7&type=flash&contacts=" + mobile + "&senderid=SMSMSG&msg=" + message;
        string url = "http://byebyesms.com/app/smsapi/index.php?key=55F1808D812D03&campaign=XXXXXX&routeid=7&type=text&contacts=" + mobile + "&senderid=SMSMSG&msg=" + message;

        HttpWebRequest httpreq = (HttpWebRequest)WebRequest.Create(url);
        try
        {
            //if (EnableSMS != null && !EnableSMS.Trim().Equals("") && EnableSMS.Trim().ToLower().Equals("true"))
            HttpWebResponse httpres = (HttpWebResponse)httpreq.GetResponse();
            StreamReader sr = new StreamReader(httpres.GetResponseStream());
            string results = sr.ReadToEnd();
            sr.Close();
            return results;
        }
        catch (Exception ex)
        {

            return ex.Message.ToString();
        }
    }

}
