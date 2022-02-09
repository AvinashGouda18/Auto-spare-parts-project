<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edittender.aspx.cs" Inherits="home" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    

    <script src="images/cudal.js" type="text/javascript"></script>
    <link href="images/cudal.css" rel="stylesheet" type="text/css" />
<%--    <style type="text/css">
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
    --%>
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
                <td align="center" >
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <img src="images/logo.png" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr   bgcolor="#E64C5C">
                <td  bgcolor="#003366" align="center">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr bgcolor="#003366">
                            <td bgcolor="#003366">
                                &nbsp;</td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr  >
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <img alt="" src="images/addt.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                        <table align="center" cellpadding="0" cellspacing="0" class="style5">
                                            <tr>
                                                <td colspan="3" width="500">
                                                    &nbsp;</td>
                                                <td colspan="2" width="500">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="3" width="500" height="40" class="tdhead" 
                                                    valign="middle">
                                                 <asp:Label ID="Label16" 
                                                        runat="server" CssClass="lblhead1" 
                                                        Text="    Edit Tender"></asp:Label>
                                               
                                                </td>
                                                <td colspan="2" width="500" class="tdhead">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="500" colspan="3">
                                                    <asp:Label ID="lblError" runat="server"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label14" runat="server" CssClass="lblhead2" 
                                                        Text="Tender Number"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="2">
                                                    <asp:DropDownList ID="cboTender" runat="server" AutoPostBack="True" 
                                                        Width="200px" CssClass="combo" 
                                                        onselectedindexchanged="txtno_SelectedIndexChanged" >
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label15" runat="server" CssClass="lblhead2" Text="Name"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return AlphaOnly()"
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" height="20">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right" width="250px">
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtname" 
                                                        ErrorMessage="Name Required" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label4" runat="server" CssClass="lblhead2" Text="Description"></asp:Label>
                                                </td>
                                                <td align="left" colspan="4" width="750">
                                                    <asp:TextBox ID="txtdesc" runat="server" BorderStyle="Solid" Height="100px" 
                                                        Width="100%" CssClass="textbox_c" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style4" width="250px" height="20">
                                                </td>
                                                <td align="left" class="style4" width="250px" colspan="2">
                                                    <asp:CustomValidator ID="CustomValidator6" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtdesc" 
                                                        ErrorMessage="Enter Description" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" class="style4" width="250px">
                                                </td>
                                                <td align="left" class="style4" width="250px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label12" runat="server" CssClass="lblhead2" 
                                                        Text="Category"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="2">
                                                    <asp:TextBox ID="txtcate" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return nothing()"
                                                        Width="200px" CssClass="textbox_c" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label13" runat="server" CssClass="lblhead2" Text="Sub Category"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:TextBox ID="txtsub" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return nothing()"
                                                        Width="200px" CssClass="textbox_c" Enabled="False"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label19" runat="server" CssClass="lblhead2" 
                                                        Text="Start Date"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="2">
                                                    <asp:TextBox ID="txtDate" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return nothing()"
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                &nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtDate" ErrorMessage="?"></asp:RequiredFieldValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label20" runat="server" CssClass="lblhead2" 
                                                        Text="End Date"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtEdate" ErrorMessage="?"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txtEdate" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label21" runat="server" CssClass="lblhead2" 
                                                        Text="Department"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="2">
                                                    <asp:TextBox ID="cboDept" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return nothing()"
                                                        Width="200px" CssClass="textbox_c" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label22" runat="server" CssClass="lblhead2" 
                                                        Text="District"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:TextBox ID="txtDistrict" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    <asp:CustomValidator ID="CustomValidator7" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtDistrict" 
                                                        ErrorMessage="District Required" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250pxpx">
                                                    <asp:Label ID="Label23" runat="server" CssClass="lblhead2" 
                                                        Text="Range"></asp:Label>
                                                </td>
                                                <td align="left" width="250pxpx" colspan="2">
                                                    <asp:TextBox ID="cboRange" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return nothing()"
                                                        Width="200px" CssClass="textbox_c" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250pxpx">
                                                    <asp:Label ID="Label24" runat="server" CssClass="lblhead2" 
                                                        Text="Contractor"></asp:Label>
                                                </td>
                                                <td align="right" width="250pxpx">
                                                    <asp:TextBox ID="txtContractor" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label25" runat="server" CssClass="lblhead2" 
                                                        Text="Amount"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" style="width: 0">
                                                    <asp:TextBox ID="txtAmount" runat="server" Width="200px" 
                                                        onkeyup="AppendValues(this.form);"   onChange="AppendValues(this.form);">0</asp:TextBox>
                                                </td>
                                                <td align="left" width="250px" style="width: 125px">
                                                    <asp:Button ID="btnCalculate" runat="server" onclick="btnCalculate_Click" 
                                                        Text="&gt;" CausesValidation="False" />
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label26" runat="server" CssClass="lblhead2" 
                                                        Text="Bid Date"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txtBdate" ErrorMessage="?"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txtBdate" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label27" runat="server" CssClass="lblhead2" 
                                                        Text="Duration"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="2">
                                                    <asp:TextBox ID="txtDuration" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label28" runat="server" CssClass="lblhead2" 
                                                        Text="EMD"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:TextBox ID="txtEmd" runat="server" Width="200px">0</asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="2">
                                                    <asp:CustomValidator ID="CustomValidator8" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtDuration" 
                                                        ErrorMessage="Duration Required" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr >
                                                <td align="left" colspan="5" height="2px">
                                                     <hr width="1000" /> </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="250px" colspan="2">
                                                    <asp:Button ID="btnAddProject" runat="server" CssClass="button_c" Height="35px" 
                                                         Text="Edit Tender" Width="200px" onclick="btnAddProject_Click"  />
                                                </td>
                                                <td align="center" width="250px">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text="Home" Width="200px" CausesValidation="False" 
                                                        onclick="btnBack_Click"   />
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="250px" colspan="2">
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
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <img alt="" src="images/footer.jpg" style="width: 1300px; height: 30px" /></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
