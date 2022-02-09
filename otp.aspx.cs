using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Data.SqlClient;
using System.Text;

public partial class home : System.Web.UI.Page
{
    public static int cs, qty, tot, otp;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                lblName.Text = Session["name"].ToString();
                lblMobile.Text = Session["mobile"].ToString();
              //  sendOTP(lblMobile.Text.ToString());
                Response.Redirect("payment.aspx");
            }
            catch (Exception ex)
            {
                Response.Redirect("default.aspx");
            }
        }

    }

    void sendOTP(string mobile)
    {
        Random rnd = new Random();
        otp = rnd.Next(10000, 99999);
        Prolab.SendSMS(mobile, "OTP CODE : " + otp.ToString());

    }

    
    


    static public string EncodeTo64(string toEncode)
    {
        byte[] toEncodeAsBytes
              = System.Text.ASCIIEncoding.ASCII.GetBytes(toEncode);
        string returnValue
              = System.Convert.ToBase64String(toEncodeAsBytes);
        return returnValue;
    }


    static public string DecodeFrom64(string encodedData)
    {
        byte[] encodedDataAsBytes
            = System.Convert.FromBase64String(encodedData);
        string returnValue =
           System.Text.ASCIIEncoding.ASCII.GetString(encodedDataAsBytes);
        return returnValue;
    }
 
    protected void btnBack_Click(object sender, EventArgs e)
    {


    //    string s = "hallo world";
    ////    string ns[];
    //   // ns ="";

    //    int i;
    //    i =0;
    //    foreach (char c in s)
    //    {
    //        ns[i] = System.Convert.ToString(System.Convert.ToInt32(c) + 1);

    //    //    Console.WriteLine(System.Convert.ToInt32(c));
    //    }

        //string plaintext,enc,dec;

        //plaintext = "A";

        //enc = EncodeTo64(plaintext);

        //dec = DecodeFrom64(enc);

        //lblError.Text = plaintext + " | " +   enc + " | " + dec;

        //lblError.Text =
        Response.Redirect("buyerhome.aspx");
    
}

  string ConvertStringArrayToString(string[] array)
    {
        //
        // Concatenate all the elements into a StringBuilder.
        //
        StringBuilder builder = new StringBuilder();
        foreach (string value in array)
        {
            builder.Append(value);
            builder.Append('.');
        }
        return builder.ToString();
    }

    protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    void addSales()
    {
        
    }
    protected void btnAddProject_Click(object sender, EventArgs e)
    {
        if (txtOTP.Text.ToString().Equals(otp.ToString()))
        {
            Response.Redirect("payment.aspx");
        }
        else
        {
            lblError.Text = "Failed";
        }
        
       
    }
    protected void cboID_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    
    protected void cboCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        txtOTP.Text = "";
        lblError.Text = "";
        sendOTP(lblMobile.Text.ToString());
    }
}
