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
            try
            {
                lbluser.Text = "Welcome " + Session["name"].ToString();
            }
            catch (Exception ex)
            {
                Response.Redirect("default.aspx");
            }

            BindGridviewData("select pid,name,pfile,pamount,pamount from tblproduct");

        }
    }
    protected void BindGridviewData(string sql)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("1", typeof(string));
        dt.Columns.Add("2", typeof(string));
        dt.Columns.Add("3", typeof(string));
        dt.Columns.Add("4", typeof(string));
        dt.Columns.Add("5", typeof(string));



        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shivraj-hondashowroom"].ConnectionString);
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {



            do
            {
                DataRow dtrow = dt.NewRow();    // Create New Row
                dtrow["1"] = dr[0].ToString();            //Bind Data to Columns
                dtrow["2"] = dr[1].ToString();
                dtrow["3"] = "~\\files\\" + dr[2].ToString();
                dtrow["4"] = dr[3].ToString();
                dtrow["5"] = dr[4].ToString();

                dt.Rows.Add(dtrow);
            } while (dr.Read());
            //lblselected.Text = "";
        }
        else
        {

            //lblselected.Text = "No Record Found";
        }



        gvDetails.DataSource = dt;
        gvDetails.DataBind();
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
    }
}
