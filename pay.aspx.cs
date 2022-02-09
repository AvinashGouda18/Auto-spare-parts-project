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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //txtPID.Text = presettings.Class1.getRandomNumber(11111, 99999);

        }
        //    txtDate.Text = DateTime.Today.Date.ToShortDateString();

        //    getSubCategory();
        //    updateContractor();
        //    //getContractor();
        //    //getDetails();
        //    //btnAddProject.Text = "Verify";
        //}
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
    //void getDetails()
    //{
    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
    //    string sql;
    //    sql = "select userid,name,address,location,mobile,email,grade,licence from tblcontractor where userid ='" + cboContractor.Text.ToString() + "'";
    //    SqlCommand cmd = new SqlCommand(sql, conn);
    //    conn.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    dr.Read();
    //    txtname.Text = dr[1].ToString();
    //    txtaddress.Text = dr[2].ToString();
    //    txtLocation.Text = dr[3].ToString();
    //    txtcn.Text = dr[4].ToString();
    //    txtemail.Text = dr[5].ToString();
    //    txtGrade.Text = dr[6].ToString();
    //    txtLicence.Text = dr[7].ToString();

    //    lblError.Text = "";
    //}
//    void updateContractor()
//    {
//        if (cboRange.Text.EndsWith("Above 5 Crore"))
//        {
//            txtContractor.Text = "Class A";
//        }

//        if (cboRange.Text.EndsWith("3 Crore - 5 Crore"))
//        {
//            txtContractor.Text = "Class B";
//        }

//        if (cboRange.Text.EndsWith("1 Crore - 3 Crore"))
//        {
//            txtContractor.Text = "Class C";
//        }

//        if (cboRange.Text.EndsWith("50 Lakh - 1 Crore"))
//        {
//            txtContractor.Text = "Class D";
//        }

//        if (cboRange.Text.EndsWith("10 Lakh - 50 Lakh"))
//        {
//            txtContractor.Text = "Class E";
//        }

//    }
//    protected void cboContractor1_SelectedIndexChanged(object sender, EventArgs e)
//    {


//        updateContractor();




//    }
//    void clearFields()
//    {
//        txtno.Text = "";
//        txtname.Text = "";
//        txtdesc.Text = "";
//        //txtcate.Text = "";
//        //txtsub.Text = "";
//        txtDate.Text = "";
//        txtEdate.Text = "";
//        txtDistrict.Text = "";
//        txtContractor.Text = "";
//        txtAmount.Text = "";
//        txtBdate.Text = "";
//        txtDuration.Text = "";
//        txtEmd.Text = "";
//    }
//    protected void btnAddProject_Click(object sender, EventArgs e)
//    {

//        DateTime dt, ct;
//        dt = Convert.ToDateTime(txtDate.Text.ToString());

//        ct = Convert.ToDateTime(DateTime.Today.Date.ToShortDateString());
//        if (dt < ct)
//        {
//            lblError.Text = "Invalid Date";
//            return;
//        }
//        else
//        {
//            lblError.Text = "";
//        }
        
//        //
//        try
//        {



//            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
//            con.Open();




//            string query = "insert into tbltender (tno,tname,description,cate,sub,sd,ed,dept,district,range,contractor,amount,bdt,duration,emd) values (@tno,@tname,@description,@cate,@sub,@sd,@ed,@dept,@district,@range,@contractor,@amount,@bdt,@duration,@emd)";
//            SqlCommand dbcomm = new SqlCommand();



//            dbcomm.Parameters.AddWithValue("@tno", txtno.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@tname", txtname.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@description", txtdesc.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@cate", txtcate.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@sub", txtsub.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@sd", txtDate.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@ed", txtEdate.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@dept", cboDept.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@district", txtDistrict.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@range", cboRange.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@contractor", txtContractor.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@amount", txtAmount.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@bdt", txtBdate.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@duration", txtDuration.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@emd", txtEmd.Text.ToString());



//            dbcomm.CommandText = query;
//            dbcomm.Connection = con;
//            dbcomm.CommandType = CommandType.Text;
//            dbcomm.ExecuteNonQuery();
//            con.Close();
//            lblError.Text = "Tender Added";
//            sendSMS();
//            clearFields();

//        }
//        catch (Exception ex)
//        {
//            lblError.Text = ex.Message.ToString();// "Tender id is already registered";

//        }
    
//    }
//    void sendSMS()
//    {
//        //

//        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

//        SqlCommand cmd = new SqlCommand("select mobile from tblcontractor where grade = '" +  txtContractor.Text.ToString()  + "'", conn);
//        conn.Open();
//        SqlDataReader dr = cmd.ExecuteReader();

        
//        if (dr.Read())
//        {
//            do
//            {
//                presettings.Class1.sendSMS(dr[0].ToString(), "New Tender has been added Pl. Login to know more");

//            } while (dr.Read());
//        }
//        else
//        {
//            lblError.Text = "Invalid Entry";
//        }

//    }
//    protected void btnBack_Click(object sender, EventArgs e)
//    {
//        //btnBack.Text = presettings.Class1.sendSMS("9902826774", "test").ToString();
//        Response.Redirect("adminhome.aspx");

//    }
// void   getSubCategory()
//{
//     if (txtcate.Text.Equals("Works"))
//        {
//            txtsub.Items.Clear();
//            txtsub.Items.Add("Select");
//            txtsub.Items.Add("Road");
//            txtsub.Items.Add("Building");
            
//        }
//        else
//        {
//            txtsub.Items.Clear();
     
//        }
//}
//    protected void txtcate_SelectedIndexChanged(object sender, EventArgs e)
//    {
//       getSubCategory();
//    }
//    protected void btnCalculate_Click(object sender, EventArgs e)
//    {
//        double emd;

//        emd = (Convert.ToDouble(txtAmount.Text) * 1) / 100;

//        txtEmd.Text = emd.ToString();

//    }
//    protected void txtDate_TextChanged(object sender, EventArgs e)
//    {
//        DateTime dt,ct;
//        dt = Convert.ToDateTime(txtDate.Text.ToString());
        
//        ct = Convert.ToDateTime(DateTime.Today.Date.ToShortDateString());
//        if (dt < ct)
//        {
//            lblError.Text = "Invalid Date";
//            return;
//        }
//        else
//        {
//            lblError.Text = "";
//        }
//    }


    static public string EncodeTo64(string toEncode)
    {
        byte[] toEncodeAsBytes
              = System.Text.ASCIIEncoding.ASCII.GetBytes(toEncode);
        string returnValue
              = System.Convert.ToBase64String(toEncodeAsBytes);
        return returnValue;
    }


//    static public string DecodeFrom64(string encodedData)
//    {
//        byte[] encodedDataAsBytes
//            = System.Convert.FromBase64String(encodedData);
//        string returnValue =
//           System.Text.ASCIIEncoding.ASCII.GetString(encodedDataAsBytes);
//        return returnValue;
//    }
 
//    protected void btnBack_Click(object sender, EventArgs e)
//    {


//    //    string s = "hallo world";
//    ////    string ns[];
//    //   // ns ="";

//    //    int i;
//    //    i =0;
//    //    foreach (char c in s)
//    //    {
//    //        ns[i] = System.Convert.ToString(System.Convert.ToInt32(c) + 1);

//    //    //    Console.WriteLine(System.Convert.ToInt32(c));
//    //    }

//        //string plaintext,enc,dec;

//        //plaintext = "A";

//        //enc = EncodeTo64(plaintext);

//        //dec = DecodeFrom64(enc);

//        //lblError.Text = plaintext + " | " +   enc + " | " + dec;

//        //lblError.Text =
//        Response.Redirect("buyerhome.aspx");
    
//}

//  string ConvertStringArrayToString(string[] array)
//    {
//        //
//        // Concatenate all the elements into a StringBuilder.
//        //
//        StringBuilder builder = new StringBuilder();
//        foreach (string value in array)
//        {
//            builder.Append(value);
//            builder.Append('.');
//        }
//        return builder.ToString();
//    }

//    protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
//    {

//    }
//    protected void btnAddProject_Click(object sender, EventArgs e)
//    {
        
//        try
//        {



//            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
//            con.Open();


//            int amt = 0;
//            amt = Convert.ToInt32(txtAmount.Text.ToString());

//            string query = "insert into tblproduct(pid,category,name,pfile,pamount,cid,cname,email) values (@pid,@category,@name,@pfile,@pamount,@cid,@cname,@email) ";
//            SqlCommand dbcomm = new SqlCommand();
//            dbcomm.Parameters.AddWithValue("@pid", txtPID.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@category", cboCategory.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@name", txtname.Text.ToString());
//            dbcomm.Parameters.AddWithValue("@pfile", fu.FileName.ToString());
//            dbcomm.Parameters.AddWithValue("@pamount", amt);
//            dbcomm.Parameters.AddWithValue("@cid", Session["userid"].ToString());
//            dbcomm.Parameters.AddWithValue("@cname",Session["name"].ToString());
//            dbcomm.Parameters.AddWithValue("@email", Session["ceamil"].ToString());

             
//            dbcomm.CommandText = query;
//            dbcomm.Connection = con;
//            dbcomm.CommandType = CommandType.Text;
//            dbcomm.ExecuteNonQuery();
//            con.Close();
//            lblError.Text = "Product Added Successfully";


//        }
//        catch (Exception ex)
//        {
//            lblError.Text = ex.Message.ToString();// "Product ID Already Exist";

//        }
//    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void cboCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cboCategory.Text.Equals("DD"))
        {
            lblno.Text = "Enter DD No";
        }

        if (cboCategory.Text.Equals("Cheque"))
        {
            lblno.Text = "Enter Cheque No";
        }
        if (cboCategory.Text.Equals("DD"))
        {

        }

    }
}
