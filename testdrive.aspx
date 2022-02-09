<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testdrive.aspx.cs" Inherits="home" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    

    <script src="images/cudal.js" type="text/javascript"></script>
    <link href="images/cudal.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 100%;
        }
        .style4
        {
            width: 1300px;
        }
                        
         .style5
        {
            width: 1000px;
        }
        </style>
    
<%--<script type ="text/javascript"  language="javascript">
function AppendValues(form)
{
 
              var  i1 = form.txtAmount.value;
                if(i1 == null || i1 == "")
                form.txtAmount.value ="0";
                var tbi1 = parseInt(form.txtAmount.value);
                form.txtEmd.value = tbi1 * 1 / 100;

}


</script>
    
    
   <script type="text/javascript" src="images/jquery.min.js"></script>
<script src="images/WaterMark.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("[id*=txtUserName], [id*=txtPassword], [id*=txtDetails]").WaterMark();

        //To change the color of Watermark
        $("[id*=Email]").WaterMark(
        {
            WaterMarkTextColor: '#000'
        });
    });
</script>--%>
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">
$(function() {
$("#txtDate").datepicker();
$("#txtEdate").datepicker();
$("#txtBdate").datepicker();
});
</script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
</style>

 </head>
<body  topmargin="0" leftmargin="0" rightmargin="0">
    <form id="form1" runat="server">
    <div>
    
        <table align ="center"   cellpadding="0" cellspacing="0" class="style3">
            <tr  >
                <td align="center" bgcolor="#003366">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <img alt="" src="images/product.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td bgcolor="#003366">
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#003366">
                                        <table align="center" cellpadding="0" cellspacing="0" class="style5" 
                                            style="color: #FFFFFF">
                                            <tr>
                                                <td colspan="2" width="500">
                                                    &nbsp;</td>
                                                <td colspan="2" width="500">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" width="500" height="40" class="tdhead" 
                                                    valign="middle">
                                                 <asp:Label ID="Label16" 
                                                        runat="server" CssClass="lblhead1" 
                                                        Text="Test Drive"></asp:Label>
                                               
                                                </td>
                                                <td colspan="2" width="500" class="tdhead">
                                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                                        onclick="Button1_Click" Text="Button" Visible="False" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="500" colspan="2">
                                                &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="lblName" runat="server" CssClass="lblhead2"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="lblMobile" runat="server" CssClass="lblhead2" 
                                                        Text="Select ID"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label17" runat="server" CssClass="lblhead2" 
                                                        Text="Select ID"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:DropDownList ID="cboID" runat="server" AutoPostBack="True" 
                                                        Width="200px" CssClass="combo" onselectedindexchanged="cboID_SelectedIndexChanged" 
                                                        >
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="left" width="250px" colspan="2" rowspan="6">
                                                    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label15" runat="server" CssClass="lblhead2" Text="Name"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return AlphaOnly()"
                                                        Width="200px" CssClass="textbox_c" CausesValidation="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label13" runat="server" CssClass="lblhead2" Text="Amount"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:TextBox ID="txtAmt" runat="server" BorderStyle="Solid" onkeypress="return NumberOnly()"
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" MaxLength="10" 
                                                        CausesValidation="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label24" runat="server" CssClass="lblhead2" Text="Date"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:TextBox ID="txtDate" runat="server" BorderStyle="Solid" onkeypress="return NumberOnly()"
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" MaxLength="10" 
                                                        CausesValidation="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="4">
                                                    <asp:Label ID="lblMessage" runat="server" Font-Size="X-Large"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr >
                                                <td align="left" colspan="4" height="2px">
                                                     <hr width="1000" /> </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="250px">
                                                    <asp:Button ID="btnAddProject" runat="server" CssClass="button_c" Height="35px" 
                                                         Text=" Submit" Width="200px" onclick="btnAddProject_Click"   />
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text=" Back" Width="200px" CausesValidation="False" 
                                                        onclick="btnBack_Click"   />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                                        </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr  >
                <td align="center" >
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
