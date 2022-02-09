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

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getTender();
            getDetails();
            //getSubCategory();
            //updateContractor();
            //getContractor();
            //getDetails();
            //btnAddProject.Text = "Verify";
        }
    }

    void getTender()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select tno from tbltender", conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        cboTender.Items.Clear();
        if (dr.Read())
        {
            do
            {
                cboTender.Items.Add(dr[0].ToString());

            } while (dr.Read());
        }
        else
        {
            lblError.Text = "Invalid Entry";
        }





        ///
        /*
         * SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select tno from tbltender where grade = '" + dr[2].ToString() + "'", conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();



        cboTender.Items.Clear();
        if (dr.Read())
        {
            do
            {
                cboTender.Items.Add(dr[0].ToString());

            } while (dr.Read());
        }
        else
        {
            lblError.Text = "No Tender";
        }
        */

    }

    //void getContractor()
    //{

    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

    //    SqlCommand cmd = new SqlCommand("select userid from tblcontractor", conn);
    //    conn.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();


    //    cboContractor.Items.Clear();
    //    if (dr.Read())
    //    {
    //        do
    //        {
    //            cboContractor.Items.Add(dr[0].ToString());

    //        } while (dr.Read());
    //    }
    //    else
    //    {
    //        lblError.Text = "Invalid Entry";
    //    }
    //}
    
    //protected void btnRegister_Click(object sender, EventArgs e)
    //{
    //    //Response.Redirect("addcompany.aspx");
    //}
    //protected void btnRegister0_Click(object sender, EventArgs e)
    //{
        
    //}
    //protected void btnBack_Click(object sender, EventArgs e)
    //{

    //    Response.Redirect("adminhome.aspx");
    //    try
    //    {



    //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
    //        con.Open();




    //        string query = " update tblcontractor set approved = 'No' where userid = '" + cboContractor.Text.ToString() + "'"; 
    //            SqlCommand dbcomm = new SqlCommand();



            


    //        dbcomm.CommandText = query;
    //        dbcomm.Connection = con;
    //        dbcomm.CommandType = CommandType.Text;
    //        dbcomm.ExecuteNonQuery();
    //        con.Close();
    //        lblError.Text = "Contractor Approved";


    //    }
    //    catch (Exception ex)
    //    {
    //        lblError.Text = "Contractor id is already registered";

    //    }
    //}
    //void checkLicence()
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

    //    SqlCommand cmd = new SqlCommand("select grade from tbllicence where licenceno ='" + txtLicence.Text.ToString() + "'",con);
    //    con.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();


    //    if (dr.Read())
    //    {
    //        lblError.Text = "Licence No is valid";
    //        btnAddProject.Enabled = true;
    //        btnAddProject.Text = "Approve";


    //    }
    //    else
    //    {
    //        lblError.Text = "Licence No is invalid";
    //        btnAddProject.Enabled = false;
    //        btnAddProject.Text = "Verify";
    //    }
    //}
    //protected void btnAddProject_Click(object sender, EventArgs e)
    //{

    //    if (btnAddProject.Text.Equals("Verify"))
    //    {
    //        checkLicence();
    //        if(btnAddProject.Text.Equals("Verify"))
    //        {
    //                    return;
    //        }

    //    }
    //    try
    //    {



    //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
    //        con.Open();




    //        string query = " update tblcontractor set approved = 'Yes' where userid = '" + cboContractor.Text.ToString() + "'"; 
    //            SqlCommand dbcomm = new SqlCommand();



            


    //        dbcomm.CommandText = query;
    //        dbcomm.Connection = con;
    //        dbcomm.CommandType = CommandType.Text;
    //        dbcomm.ExecuteNonQuery();
    //        con.Close();
    //        lblError.Text = "Contractor Approved";


    //    }
    //    catch (Exception ex)
    //    {
    //        lblError.Text = "Contractor id is already registered";

    //    }
    //}
    //protected void cboContractor_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    getDetails();
    //}
    void getDetails()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
        string sql;
        sql = "select tno,tname,description,cate,sub,sd,ed,dept,district,range,contractor,amount,bdt,duration,emd from tbltender where tno = '" + cboTender.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        txtname.Text =  dr[0].ToString();
        txtdesc.Text =  dr[1].ToString();
        txtcate.Text =  dr[2].ToString();
        txtsub.Text =  dr[3].ToString();
        txtDate.Text =  dr[4].ToString();
        txtEdate.Text =  dr[5].ToString();
        cboDept.Text =  dr[6].ToString();
        txtDistrict.Text =  dr[7].ToString();
        cboRange.Text =  dr[8].ToString();
        txtContractor.Text =  dr[9].ToString();
        txtAmount.Text =  dr[10].ToString();
        txtBdate.Text =  dr[11].ToString();
        txtDuration.Text =  dr[12].ToString();
        txtEmd.Text = dr[13].ToString();

        lblError.Text = "";
    }
    void updateContractor()
    {
        if (cboRange.Text.EndsWith("Above 5 Crore"))
        {
            txtContractor.Text = "Class A";
        }

        if (cboRange.Text.EndsWith("3 Crore - 5 Crore"))
        {
            txtContractor.Text = "Class B";
        }

        if (cboRange.Text.EndsWith("1 Crore - 3 Crore"))
        {
            txtContractor.Text = "Class C";
        }

        if (cboRange.Text.EndsWith("50 Lakh - 1 Crore"))
        {
            txtContractor.Text = "Class D";
        }

        if (cboRange.Text.EndsWith("10 Lakh - 50 Lakh"))
        {
            txtContractor.Text = "Class E";
        }

    }
    protected void cboContractor1_SelectedIndexChanged(object sender, EventArgs e)
    {


        updateContractor();




    }
    protected void btnAddProject_Click(object sender, EventArgs e)
    {

        //
        try
        {



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
            con.Open();




            string query = "update tbltender set tname=@tname,description=@description,cate=@cate,sub=@sub,sd=@sd,ed=@ed,dept=@dept,district=@district,range=@range,contractor=@contractor,amount=@amount,bdt=@bdt,duration=@duration,emd=@emd where tno = '" + cboTender.Text.ToString() + "'";
            SqlCommand dbcomm = new SqlCommand();



          
            dbcomm.Parameters.AddWithValue("@tname", txtname.Text.ToString());
            dbcomm.Parameters.AddWithValue("@description", txtdesc.Text.ToString());
            dbcomm.Parameters.AddWithValue("@cate", txtcate.Text.ToString());
            dbcomm.Parameters.AddWithValue("@sub", txtsub.Text.ToString());
            dbcomm.Parameters.AddWithValue("@sd", txtDate.Text.ToString());
            dbcomm.Parameters.AddWithValue("@ed", txtEdate.Text.ToString());
            dbcomm.Parameters.AddWithValue("@dept", cboDept.Text.ToString());
            dbcomm.Parameters.AddWithValue("@district", txtDistrict.Text.ToString());
            dbcomm.Parameters.AddWithValue("@range", cboRange.Text.ToString());
            dbcomm.Parameters.AddWithValue("@contractor", txtContractor.Text.ToString());
            dbcomm.Parameters.AddWithValue("@amount", txtAmount.Text.ToString());
            dbcomm.Parameters.AddWithValue("@bdt", txtBdate.Text.ToString());
            dbcomm.Parameters.AddWithValue("@duration", txtDuration.Text.ToString());
            dbcomm.Parameters.AddWithValue("@emd", txtEmd.Text.ToString());



            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();
            lblError.Text = "Tender Updated";
           // sendSMS();

        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message.ToString();// "Tender id is already registered";

        }
    
    }
    void sendSMS()
    {
        //

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select mobile from tblcontractor where grade = '" +  txtContractor.Text.ToString()  + "'", conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        
        if (dr.Read())
        {
            do
            {
                presettings.Class1.sendSMS(dr[0].ToString(), "New Tender has been added Pl. Login to know more");

            } while (dr.Read());
        }
        else
        {
            lblError.Text = "Invalid Entry";
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");

    }
 void   getSubCategory()
{
     //if (txtcate.Text.Equals("Works"))
     //   {
     //       txtsub.Items.Clear();
     //       txtsub.Items.Add("Select");
     //       txtsub.Items.Add("Road");
     //       txtsub.Items.Add("Building");
     //       txtsub.Text = ("Select");
     //   }
     //   else
     //   {
     //       txtsub.Items.Clear();
     
     //   }
}
    protected void txtcate_SelectedIndexChanged(object sender, EventArgs e)
    {
       getSubCategory();
    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double emd;

        emd = (Convert.ToDouble(txtAmount.Text) * 1) / 100;

        txtEmd.Text = emd.ToString();

    }
    protected void txtno_SelectedIndexChanged(object sender, EventArgs e)
    {
        getDetails();
    }

}
