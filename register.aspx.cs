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
using presettings;
using System.IO;


public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtid.Text = presettings.Class1.getRandomNumber(11111, 99999);

                //DateTime.Today.Year.ToString() + "-" +presettings.Class1.getRandomNumber(11111, 99999);

        }
    }
    
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //Response.Redirect("addcompany.aspx");
    }
    protected void btnRegister0_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
        //txtcn.Enabled = false;
    }
    protected void btnAddProject_Click(object sender, EventArgs e)
    {
        try
        {



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
            con.Open();


            //string fn;
            //fn = Path.GetFileName(fu.FileName);

            string query = "insert into tblcustomer (customerid,fn,mn,ln,address,location,pincode,password,mobile,emailid) values (@customerid,@fn,@mn,@ln,@address,@location,@pincode,@password,@mobile,@emailid) ";
            SqlCommand dbcomm = new SqlCommand();
            dbcomm.Parameters.AddWithValue("@customerid", txtid.Text.ToString());
            dbcomm.Parameters.AddWithValue("@fn", txtfn.Text.ToString());
            dbcomm.Parameters.AddWithValue("@mn", txtmn.Text.ToString());
            dbcomm.Parameters.AddWithValue("@ln", txtln.Text.ToString());
            dbcomm.Parameters.AddWithValue("@address", txtaddress.Text.ToString());
            dbcomm.Parameters.AddWithValue("@location",txtLocation.Text.ToString());
            dbcomm.Parameters.AddWithValue("@pincode", txtpincode.Text.ToString());
            dbcomm.Parameters.AddWithValue("@password", txtState.Text.ToString());
            dbcomm.Parameters.AddWithValue("@mobile", txtMobile.Text.ToString());
            dbcomm.Parameters.AddWithValue("@emailid", txtEmailID.Text.ToString());
            //dbcomm.Parameters.AddWithValue("@proff", cboProff.Text.ToString());

            //dbcomm.Parameters.AddWithValue("@profffile", "~//docs//" + fn);



            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();

            
            //fu.SaveAs(Server.MapPath("~//docs//") + fn);
            lblError.Text = "Customer Registered Successfully";

            Response.Redirect("default.aspx");


        }
        catch (Exception ex)
        {
            lblError.Text = "Customer ID Already Exist";

        }
    }
    protected void txtcn_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}
