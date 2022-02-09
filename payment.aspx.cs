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
        //try
        //{
        //    txtOrderID.Text = Session["orderid"].ToString();
        //    txtAmt.Text = Session["amt"].ToString();
        //}
        //catch (Exception ex)
        //{
        //    Response.Redirect("default.aspx");
        //}
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
        //string body, title;

        //body = "adsf";

        //title = "adf";

        //ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);

        Response.Redirect("buyerhome.aspx");

    }
    protected void btnAddProject_Click(object sender, EventArgs e)
    {

        Response.Redirect("buyerhome.aspx");
        return;
        string body, title;

        body = "";

        title = "";



        try
        {



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["canteen"].ConnectionString);
            con.Open();




            string query = "update tblorder set mode=@mode,bn=@bn,accno=@accno where orderid = '" + txtOrderID.Text.ToString() + "'";
            SqlCommand dbcomm = new SqlCommand();



            dbcomm.Parameters.AddWithValue("@mode", cboPayment.Text.ToString());
            dbcomm.Parameters.AddWithValue("@bn", txtBank.Text.ToString());
            dbcomm.Parameters.AddWithValue("@accno", txtAccno.Text.ToString());
            


            dbcomm.CommandText = query;
            dbcomm.Connection = con;
            dbcomm.CommandType = CommandType.Text;
            dbcomm.ExecuteNonQuery();
            con.Close();
            //lblError.Text = "Registered Successfully, Waiting for Approval";

            //body = "Registered Successfully";

            //title = "Canteen Management";
            //ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);

            Response.Redirect("userhome.aspx");
        }
        catch (Exception ex)
        {
            // lblError.Text = "User id is already registered" + ex.Message.ToString();

            body = "This User is already registered";

            title = "Canteen Management";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);

        }

      
    }
    protected void txtcn_TextChanged(object sender, EventArgs e)
    {

    }
    protected void cboPayment_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
