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
    public static int cs, qty, tot;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //txtCategory.Text = presettings.Class1.getRandomNumber(11111, 99999);
           // getProduct();
         
            //getDetails();
        }
        //    txtDate.Text = DateTime.Today.Date.ToShortDateString();

        //    getSubCategory();
        //    updateContractor();
        //    //getContractor();
        //    //getDetails();
        //    //btnAddProject.Text = "Verify";
        //}
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
        Response.Redirect("adminhome.aspx");
    
}

  
    protected void btnAddProject_Click(object sender, EventArgs e)
    {

       
      




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
    
   
}
