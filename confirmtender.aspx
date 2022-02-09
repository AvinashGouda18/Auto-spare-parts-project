<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmtender.aspx.cs" Inherits="home" %>


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
</script>
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">
$(function() {
$("#txtDate").datepicker();
});
</script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
    .style6
    {
        height: 19px;
    }
</style>
</head>
<body  topmargin="0" leftmargin="0" rightmargin="0">
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style3">
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
                                <img alt="" src="images/apt.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                        <table align="center" cellpadding="0" cellspacing="0" class="style5">
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
                                                        Text="Tender List"></asp:Label>
                                               
                                                </td>
                                                <td colspan="2" width="500" class="tdhead">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="500" colspan="2">
                                                    <asp:Label ID="lblError" runat="server"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label14" runat="server" CssClass="lblhead2" 
                                                        Text="Sale Tax Number"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtsalestax" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" onkeypress="return NumberOnly()"
                                                        Width="200px" CssClass="textbox_c" MaxLength="6"></asp:TextBox>
                                                &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label15" runat="server" CssClass="lblhead2" 
                                                        Text="Service Tax Number"></asp:Label>
                                                </td>
                                                <td align="right">
&nbsp;<asp:TextBox ID="txtservicetax" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return NumberOnly()"
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" height="20">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:CustomValidator ID="CustomValidator5" runat="server" 
                                                        ClientValidationFunction="validatelicenceno" ControlToValidate="txtsalestax" 
                                                        ErrorMessage="Enter valid licence number" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    <asp:CustomValidator ID="CustomValidator7" runat="server" 
                                                        ClientValidationFunction="validatelicenceno" ControlToValidate="txtservicetax" 
                                                        ErrorMessage="Enter valid Service Tax" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style4" width="250px" height="20">
                                                    <asp:Label ID="Label4" runat="server" CssClass="lblhead2" Text="Vat Tax Number"></asp:Label>
                                                </td>
                                                <td align="left" class="style4" width="250px">
                                                    <asp:TextBox ID="txtvattax" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return NumberOnly()"
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                &nbsp;</td>
                                                <td align="left" class="style4" width="250px">
                                                    <asp:Label ID="Label29" runat="server" CssClass="lblhead2" Text="EMD Amount"></asp:Label>
                                                </td>
                                                <td align="right" class="style4" width="250px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txtemd" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtemd" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:CustomValidator ID="CustomValidator6" runat="server" 
                                                        ClientValidationFunction="validatelicenceno" ControlToValidate="txtvattax" 
                                                        ErrorMessage="Enter valid Vat Tax" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label12" runat="server" CssClass="lblhead2" 
                                                        Text="Specilization"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtspecilization" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                        ControlToValidate="txtspecilization" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label13" runat="server" CssClass="lblhead2" Text="Experience"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="txtexp" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtexp" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label19" runat="server" CssClass="lblhead2" 
                                                        Text="Chalen No"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtclnno" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Width="200px" CssClass="textbox_c"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="txtclnno" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label20" runat="server" CssClass="lblhead2" 
                                                        Text="Date"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="txtdate" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtdate" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" Enabled="False"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label21" runat="server" CssClass="lblhead2" 
                                                        Text="Vehicle Details"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="3">
                                                    <asp:TextBox ID="txtvehicle" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Width="650px" CssClass="textbox_c" Height="120px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" class="style6">
                                                    </td>
                                                <td align="left" width="250px" class="style6">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                        ControlToValidate="txtvehicle" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                <td align="left" width="250px" class="style6">
                                                    </td>
                                                <td align="right" class="style6">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    <asp:Label ID="Label30" runat="server" CssClass="lblhead2" 
                                                        Text="Estimation Details"></asp:Label>
                                                </td>
                                                <td align="left" width="250px" colspan="3">
                                                    <asp:TextBox ID="txtesti" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Width="650px" CssClass="textbox_c" Height="120px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" valign="top">
                                                    &nbsp;</td>
                                                <td align="left" width="250px" colspan="3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                        ControlToValidate="txtesti" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                                                         Text="Apply" Width="200px" onclick="btnAddProject_Click"   />
                                                </td>
                                                <td align="center" width="250px">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text="Home" Width="200px" CausesValidation="False" onclick="btnBack_Click" 
                                                          />
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
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
