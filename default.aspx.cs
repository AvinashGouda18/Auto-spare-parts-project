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

    }
    
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //Response.Redirect("addcompany.aspx");
    }
    protected void btnRegister0_Click(object sender, EventArgs e)
    {
        //Response.Redirect("addproject.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (cboCategory.Text.Equals("Admin"))
        {
            if (txtUserName.Text.Equals("admin") && txtPassword.Text.Equals("admin"))
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                lblError.Text = " Invalid Password";
            }
        }
        if (cboCategory.Text.Equals("Customer"))
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select fn,mn,ln,customerid,emailid,mobile from tblcustomer where  fn  = '" + txtUserName.Text.ToString() + "' and password ='" + txtPassword.Text.ToString() + "'", con);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                presettings.Class1.setCurUser(txtUserName.Text.ToString());
                Session["userid"] = dr[3].ToString();
                Session["name"] = dr[0].ToString() + " " + dr[2].ToString();
                Session["ceamil"] = dr[4].ToString();
                Session["mobile"] = dr[5].ToString();
                Response.Redirect("buyerhome.aspx");


            }
            else
            {
                lblError.Text = "Invalid Login";
            }
        }
        }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
            Response.Redirect("register.aspx");
       

       
        
    }
}
