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
           
            getRequests();

           
        }
        //    txtDate.Text = DateTime.Today.Date.ToShortDateString();

        //    getSubCategory();
        //    updateContractor();
        //    //getContractor();
        //    //getDetails();
        //    //btnAddProject.Text = "Verify";
        //}
    }


    void getRequests()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select id from tbltestdrive", conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();


        cboID.Items.Clear();
        cboID.Items.Add("Select");
        if (dr.Read())
        {
            lblError.Text = "";
            do
            {
                cboID.Items.Add(dr[0].ToString());

            } while (dr.Read());
        }
        else
        {
            lblError.Text = "Nil";
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


       //lblMessage.Text = Prolab.SendSMS("9902826774", "afd").ToString();

        
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
        //try
        //{



        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
        //    con.Open();




        //    string query = "insert into tblsales(bid,name,qty) values(@bid,@name,@qty)";
        //    SqlCommand dbcomm = new SqlCommand();
        //    dbcomm.Parameters.AddWithValue("@bid", cboID.Text.ToString());
        //    dbcomm.Parameters.AddWithValue("@name", txtname.Text.ToString());
        //    dbcomm.Parameters.AddWithValue("@qty", txtQty.Text.ToString());





        //    dbcomm.CommandText = query;
        //    dbcomm.Connection = con;
        //    dbcomm.CommandType = CommandType.Text;
        //    dbcomm.ExecuteNonQuery();
        //    con.Close();
           


        //}
        //catch (Exception ex)
        //{
        //    lblError.Text = ex.Message.ToString();// "You can't Bid more than once";

        //}
    }
    protected void btnAddProject_Click(object sender, EventArgs e)
    {


        try
        {
            string sms;


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
            con.Open();




            string query = "update tbltestdrive set status=@status where id   = '" + cboID.Text.ToString() + "'";
            SqlCommand dbcomm = new SqlCommand();
            dbcomm.Parameters.AddWithValue("@status", txtStatus.Text.ToString());





            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();

            sms = "Dear " + txtname.Text.ToString() + "\n Your Request has been Approved\n CMS \nRaju";
            Prolab.SendSMS(txtAmt.Text.ToString(), sms);
            lblMessage.Text = "Request has been Updated";


        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message.ToString();// "You can't Bid more than once";

        }
    }
    protected void cboID_SelectedIndexChanged(object sender, EventArgs e)
    {
        getDetails();
    }
    void getDetails()
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
            string sql;
            sql = "select name,mobile,date,img from tbltestdrive where id  = '" + cboID.Text.ToString() + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();


            //txtCategory.Text = dr[0].ToString();
            txtname.Text = dr[0].ToString();
            txtAmt.Text = dr[1].ToString();
            txtDate.Text = dr[2].ToString();
            //txtSname.Text = dr[4].ToString();
            //txtSemail.Text = dr[5].ToString();
            Image1.ImageUrl =  dr[3].ToString();
           // lblStock.Text = dr[4].ToString();
            lblMessage.Text = "";
           
        }
        catch (Exception ex)
        {
            txtname.Text = "";
            txtAmt.Text = "";
            //txtSname.Text = dr[4].ToString();
            //txtSemail.Text = dr[5].ToString();
            Image1.ImageUrl = "";
            //lblStock.Text = "";
            lblMessage.Text = ex.Message.ToString();
        }

      
        //lblError.Text = "";
    }
    protected void cboCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
       // getProduct();
  //      BindGridviewData("select pid,name,pfile,pamount,cname from tblproduct where category  ='" + cboCategory.Text.ToString() + "'");
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void BindGridviewData(string sql)
    {
       // DataTable dt = new DataTable();
       // dt.Columns.Add("1", typeof(string));
       // dt.Columns.Add("2", typeof(string));
       // dt.Columns.Add("3", typeof(string));
       // dt.Columns.Add("4", typeof(string));
       //dt.Columns.Add("5", typeof(string));



       // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
       // SqlCommand cmd = new SqlCommand(sql, conn);
       // conn.Open();
       // SqlDataReader dr = cmd.ExecuteReader();

       // if (dr.Read())
       // {
       //     lblselected.Text = "";


       //     do
       //     {
       //         DataRow dtrow = dt.NewRow();    // Create New Row
       //         dtrow["1"] = dr[0].ToString();            //Bind Data to Columns
       //         dtrow["2"] = dr[1].ToString();
       //         dtrow["3"] = "~\\files\\" + dr[2].ToString();
       //         dtrow["4"] = dr[3].ToString();
       //         dtrow["5"] = dr[4].ToString();

       //         dt.Rows.Add(dtrow);
       //     } while (dr.Read());
       //     lblselected.Text = "";
       // }
       // else
       // {

       //     lblselected.Text = "";
       // }



       // gvDetails.DataSource = dt;
       // gvDetails.DataBind();
    }
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // string vid = "";
        //int index = Convert.ToInt32(e.CommandArgument);

        //vid = gvDetails.Rows[index].Cells[0].Text.ToString();
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
        //string sql;
        //sql = "select category,name,pfile,pamount,cname,email,pfile from tblproduct where pid  = '" + vid + "'";
        //SqlCommand cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();
        //dr.Read();


        //txtCategory.Text = dr[0].ToString();
        //txtname.Text = dr[1].ToString();
        //txtAmt.Text = dr[3].ToString();
        //txtSname.Text = dr[4].ToString();
        //txtSemail.Text = dr[5].ToString();
        //Image1.ImageUrl = "~\\docs\\" + dr[6].ToString();

        //lblError.Text = "";

    }
}
