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
           // txtid.Text = presettings.Class1.getRandomNumber(11111, 99999);
            getCustomerID();
            getDetails();
        }
    }
    void getDetails()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
        string sql;
        sql = "select fn,mn,ln,address,location,pincode,password,mobile,emailid,proff,profffile from tblcustomer where customerid ='" + cboID.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            txtfn.Text = dr[0].ToString();
            txtmn.Text = dr[1].ToString();
            txtln.Text = dr[2].ToString();
            txtaddress.Text = dr[3].ToString();
            txtLocation.Text = dr[4].ToString();
            txtpincode.Text = dr[5].ToString();
            txtState.Text = dr[6].ToString();
            txtMobile.Text = dr[7].ToString();
            txtEmailID.Text = dr[8].ToString();
            lblAP.Text = dr[9].ToString();
            img.ImageUrl = "~\\docs\\" + dr[10].ToString();// Server.MapPath("~/docs/" + dr[10].ToString());
        }
        else
        {
            lblError.Text = "No New Approvals";
        }
        //dbcomm.Parameters.AddWithValue("@proff", cboProff.Text.ToString());

        //dbcomm.Parameters.AddWithValue("@profffile", "~//docs//" + fn);


        lblError.Text = "";
    }
    void getCustomerID()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select customerid from tblcustomer where status <> 'yes'", conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();


        cboID.Items.Clear();
        if (dr.Read())
        {
            do
            {
                cboID.Items.Add(dr[0].ToString());

            } while (dr.Read());
        }
        else
        {
            lblError.Text = "No New Approvals";
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
        Response.Redirect("adminhome.aspx");
        //txtcn.Enabled = false;
    }
    protected void btnAddProject_Click(object sender, EventArgs e)
    {
        try
        {



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
            con.Open();


            string fn;
          

            string query = "update tblcustomer set status=@status where customerid = '" + cboID.Text.ToString() + "'";
            SqlCommand dbcomm = new SqlCommand();
            //dbcomm.Parameters.AddWithValue("@customerid", txtid.Text.ToString());
            dbcomm.Parameters.AddWithValue("@status", "yes");
            
            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();

            string msg;

            msg = "Dear " + txtfn + "\n       Your Application has been approved \n \n Thank You";

            presettings.Class1.sendEmail("Application Status", msg, txtEmailID.Text.ToString());

            
            lblError.Text = "Approved Successfully";


        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message.ToString(); //"Customer ID Already Exist";

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
    protected void cboID_SelectedIndexChanged(object sender, EventArgs e)
    {
        getDetails();
    }
    protected void btnReject_Click(object sender, EventArgs e)
    {
        try
        {



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
            con.Open();


            string fn;


            string query = "update tblcustomer set status=@status where customerid = '" + cboID.Text.ToString() + "'";
            SqlCommand dbcomm = new SqlCommand();
            //dbcomm.Parameters.AddWithValue("@customerid", txtid.Text.ToString());
            dbcomm.Parameters.AddWithValue("@status", "no");

            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();

            string msg;

            msg = "Dear " + txtfn + "\n       Your Application has been rejected. \n \n Thank You";

            presettings.Class1.sendEmail("Application Status", msg, txtEmailID.Text.ToString());
            lblError.Text = "Rejected";


        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message.ToString(); //"Customer ID Already Exist";

        }
    }
}
