<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyerreg.aspx.cs" Inherits="home" %>


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
            width: 600px;
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
                <td align="center" bgcolor="#003366">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <img alt="" src="images/reg.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                            
                                        <asp:Panel ID="Panel1" runat="server">
                                        <table align="center" cellpadding="0" cellspacing="0" class="style5">
                                            <tr>
                                                <td colspan="2" width="300">
                                                    &nbsp;</td>
                                                <td colspan="2" width="300">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" width="300">
                                                    <asp:Label ID="Label16" runat="server" CssClass="head1" 
                                                        Text=" Buyer Register"></asp:Label>
                                                </td>
                                                <td colspan="2" width="300">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="4" width="800">
                                                    <hr />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="center" colspan="2">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150px">
                                                    
                                                    
                                                </td>
                                                <td align="center" colspan="2">
                                                    <asp:Label ID="lblError" runat="server"></asp:Label>
                                                </td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                            </tr>
                                            
                                            <tr>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label14" runat="server" CssClass="lblhead2" Text=" Buyer ID"></asp:Label>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:TextBox ID="txtid" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Height="25px" Width="150px" MaxLength="15" CssClass="rtb" 
                                                        CausesValidation="True" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label15" runat="server" CssClass="lblhead2" Text="  Name"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return AlphaOnly()"
                                                        Height="25px" Width="150px" MaxLength="15" CssClass="rtb" 
                                                        CausesValidation="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150" height="20">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    <asp:CustomValidator ID="CustomValidator6" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtname" 
                                                        CssClass="validation" ErrorMessage="  Enter Name" SetFocusOnError="True" 
                                                        ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label4" runat="server" CssClass="lblhead2" Text=" Address"></asp:Label>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:TextBox ID="txtaddress" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Height="25px" Width="150px" MaxLength="15" 
                                                        CssClass="rtb" CausesValidation="True"></asp:TextBox>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label10" runat="server" CssClass="lblhead2" Text=" Location"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtLocation" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Height="25px" Width="150px" MaxLength="15" 
                                                        CssClass="rtb" CausesValidation="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left"  width="150" height="20">
                                                </td>
                                                <td align="left"  width="150">
                                                    <asp:CustomValidator ID="CustomValidator8" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtaddress" 
                                                        CssClass="validation" ErrorMessage="  Invalid" SetFocusOnError="True" 
                                                        ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="150">
                                                </td>
                                                <td align="left"  width="150">
                                                    <asp:CustomValidator ID="CustomValidator7" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtLocation" 
                                                        CssClass="validation" ErrorMessage="  Enter Location" SetFocusOnError="True" 
                                                        ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label17" runat="server" CssClass="lblhead2" Text=" Pincode"></asp:Label>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:TextBox ID="txtpincode" runat="server" BorderStyle="Solid"  onkeypress="return NumberOnly()" 
                                                        BorderWidth="1px" CausesValidation="True" CssClass="rtb" Height="25px" 
                                                        MaxLength="6" Width="150px"></asp:TextBox>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label18" runat="server" CssClass="lblhead2" Text=" State"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtState" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        CausesValidation="True" CssClass="rtb" Height="25px" MaxLength="15" 
                                                        Width="150px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    <asp:CustomValidator ID="CustomValidator9" runat="server" 
                                                        ClientValidationFunction="validatepincode" ControlToValidate="txtpincode" 
                                                        CssClass="validation" ErrorMessage="  Invalid Pincode" SetFocusOnError="True" 
                                                        ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    <asp:CustomValidator ID="CustomValidator10" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtState" 
                                                        CssClass="validation" ErrorMessage="  Enter State" SetFocusOnError="True" 
                                                        ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label19" runat="server" CssClass="lblhead2" Text=" Mobile No"></asp:Label>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:TextBox ID="txtMobile" runat="server" BorderStyle="Solid"  onkeypress="return NumberOnly()"
                                                        BorderWidth="1px" CausesValidation="True" CssClass="rtb" Height="25px" 
                                                        MaxLength="10" Width="150px"></asp:TextBox>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label20" runat="server" CssClass="lblhead2" Text=" Email ID"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtEmailID" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" CausesValidation="True" CssClass="rtb" Height="25px" 
                                                        MaxLength="15" Width="150px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    <asp:CustomValidator ID="CustomValidator5" runat="server" 
                                                        ClientValidationFunction="validatemobileno" ControlToValidate="txtMobile" 
                                                        CssClass="validation" ErrorMessage="  Invalid Mobile No" 
                                                        SetFocusOnError="True" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    <asp:CustomValidator ID="CustomValidator11" runat="server" 
                                                        ClientValidationFunction="validateemail" ControlToValidate="txtEmailID" 
                                                        CssClass="validation" ErrorMessage="  Invalid Email ID" SetFocusOnError="True" 
                                                        ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label12" runat="server" CssClass="lblhead2" Text="Address Proof"></asp:Label>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:DropDownList ID="cboProff" runat="server" AutoPostBack="True" 
                                                        CssClass="rtb" Width="150px">
                                                        <asp:ListItem>Adhar Card</asp:ListItem>
                                                        <asp:ListItem>Pancard</asp:ListItem>
                                                        <asp:ListItem>Voter ID</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="left" width="150">
                                                    <asp:Label ID="Label13" runat="server" CssClass="lblhead2" Text="Browse"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:FileUpload ID="fu" runat="server" Width="150px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="fu" ErrorMessage="Select Proff"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="center" width="150">
                                                    &nbsp;</td>
                                                <td align="center" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    <asp:Button ID="btnAddProject" runat="server" CssClass="button_c" Height="35px" 
                                                         Text=" Register Now" Width="150px" onclick="btnAddProject_Click" />
                                                </td>
                                                <td align="center" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text=" Back" Width="150px" onclick="btnBack_Click" 
                                                        CausesValidation="False"  />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                                <td align="center" width="150">
                                                    &nbsp;</td>
                                                <td align="center" width="150">
                                                    &nbsp;</td>
                                                <td align="left" width="150">
                                                    &nbsp;</td>
                                            </tr>
                                            
                                        </table>
                                                        </td>
                        </tr>
                    </table>
                    </asp:Panel>
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
