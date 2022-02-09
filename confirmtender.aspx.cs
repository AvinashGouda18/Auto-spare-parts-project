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
            txtdate.Text = DateTime.Now.ToShortDateString();

            //getTender();
            //getDetails();
            //getContractor();
            //getDetails();
            //btnAddProject.Text = "Verify";
        }
    }
    //void getDetails()
    //{
    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
    //    string sql;
    //    sql = "select tname,description,cate,sub,sd,ed,dept,district,range,contractor,amount,bdt,duration,emd from tbltender where tno  ='" + cboTender.Text.ToString() + "'";
    //    SqlCommand cmd = new SqlCommand(sql, conn);
    //    conn.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    dr.Read();

    //    txtservicetax.Text = dr[0].ToString();
    //    txtdesc.Text = dr[1].ToString();
    //    txtspecilization.Text = dr[2].ToString();
    //    txtexp.Text = dr[3].ToString();
    //    txtclnno.Text = dr[4].ToString();
    //    txtdate.Text = dr[5].ToString();
    //    txtvehicle.Text = dr[6].ToString();
    //    txtDistrict.Text = dr[7].ToString();
    //    txtrange.Text = dr[8].ToString();
    //    txtContractor.Text = dr[9].ToString();
    //    txtAmount.Text = dr[10].ToString();
    //    txtBdate.Text = dr[11].ToString();
    //    txtDuration.Text = dr[12].ToString();
    //    txtEmd.Text = dr[13].ToString();
        

    //    lblError.Text = "";
    //}
    //void getTender()
    //{

    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

    //    SqlCommand cmd = new SqlCommand("select tno from tbltender where contractor = '" + Session["grade"].ToString() + "'", conn);
    //    conn.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();

    //    cboTender.Items.Clear();
    //    if (dr.Read())
    //    {
    //        do
    //        {
    //            cboTender.Items.Add(dr[0].ToString());

    //        } while (dr.Read());
    //    }
    //    else
    //    {
    //        lblError.Text = "Invalid Entry";
    //    }





    //    ///
    //    /*
    //     * SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);

    //    SqlCommand cmd = new SqlCommand("select tno from tbltender where grade = '" + dr[2].ToString() + "'", conn);
    //    conn.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();



    //    cboTender.Items.Clear();
    //    if (dr.Read())
    //    {
    //        do
    //        {
    //            cboTender.Items.Add(dr[0].ToString());

    //        } while (dr.Read());
    //    }
    //    else
    //    {
    //        lblError.Text = "No Tender";
    //    }
    //    */

    //}
   

   
    //protected void btnBack_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("adminhome.aspx");

    //}

    //protected void txtcate_SelectedIndexChanged(object sender, EventArgs e)
    //{
        
    //}
    //protected void btnAddProject_Click(object sender, EventArgs e)
    //{

    //}
    //protected void cboTender_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    getDetails();
    //}
    protected void btnAddProject_Click(object sender, EventArgs e)
    {
        //

        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mohamad"].ConnectionString);
            con.Open();
            string query = "insert into tbltenderapply (tenderid,contractorid,salestax,servicetax,vattax,emd,specilization,exp,cnlno,cnlndt,vehicle,estimation) values (@tenderid,@contractorid,@salestax,@servicetax,@vattax,@emd,@specilization,@exp,@cnlno,@cnlndt,@vehicle,@estimation)";
            SqlCommand dbcomm = new SqlCommand();
            dbcomm.Parameters.AddWithValue("@tenderid", Session["tenderid"].ToString());
            dbcomm.Parameters.AddWithValue("@contractorid", Session["userid"].ToString());
            dbcomm.Parameters.AddWithValue("@salestax", txtsalestax.Text.ToString());
            dbcomm.Parameters.AddWithValue("@servicetax", txtservicetax.Text.ToString());
            dbcomm.Parameters.AddWithValue("@vattax", txtvattax.Text.ToString());
            dbcomm.Parameters.AddWithValue("@emd", txtemd.Text.ToString());
            dbcomm.Parameters.AddWithValue("@specilization", txtspecilization.Text.ToString());
            dbcomm.Parameters.AddWithValue("@exp", txtexp.Text.ToString());
            dbcomm.Parameters.AddWithValue("@cnlno", txtclnno.Text.ToString());
            dbcomm.Parameters.AddWithValue("@cnlndt", txtdate.Text.ToString());
            dbcomm.Parameters.AddWithValue("@vehicle", txtvehicle.Text.ToString());
            dbcomm.Parameters.AddWithValue("@estimation", txtesti.Text.ToString());
            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();
            lblError.Text = "Thank you for apply. Your tender is under approval.";
            presettings.Class1.sendSMS( Session["mobile"].ToString(),"Tender has been applyed");

        }
        catch (Exception ex)
        {
            lblError.Text = "You are already Applyed for this Tender";

        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("contractorhome.aspx");

    }
}
