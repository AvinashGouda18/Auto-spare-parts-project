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
using CrystalDecisions.CrystalReports.Engine;
public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //ReportDocument report = new ReportDocument();
            //report.Load(Server.MapPath("ctender.rpt"));
            //report.FileName = Server.MapPath("ctender.rpt");
            //report.SetParameterValue("cid", Session["userid"]);
            //CrystalReportViewer1.ReportSource = report;
            //CrystalReportViewer1.Visible = true;

           
        }
    }
   

    
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("contractorhome.aspx");

    }

   
}
