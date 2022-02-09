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
        
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
     Response.Redirect("default.aspx");
    }
}
