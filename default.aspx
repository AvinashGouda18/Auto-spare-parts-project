<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<script src="images/cudal.js" type="text/javascript"></script>
    <link href="images/cudal.css" rel="stylesheet" type="text/css" />
    <link href="images/project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 1300px;
        }
        .style2
        {
            width: 1300px;
        }
        .style5
        {
            width: 0;
            height: 36px;
        }
        .style6
        {
            width: 100px;
            height: 36px;
        }
        .style7
        {
            height: 36px;
        }
        </style>
    
    <script type="text/javascript" src="images/jquery.min.js"></script>
<script src="images/WaterMark.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("[id*=txtUserName], [id*=txtPassword]").WaterMark();

        //To change the color of Watermark
        $("[id*=Email]").WaterMark(
        {
            WaterMarkTextColor: '#000'
        });
    });
</script>
</head>
<body  topmargin="0" leftmargin="0" rightmargin="0" style="height: 100%;width: 100%; background-image: url('images/bg1.jpg');" >
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style3">
            <tr  >
                <td align="center" bgcolor="">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td height="100">
                              <img src="images/logo.png" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr  >
                <td align="center" >
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td >
                                <table align="center" cellpadding="0" cellspacing="0" class="style2">
                                    <tr>
                                        <td width="200" rowspan="12">
                                            <%--<object height="300" width="900"> <embed height="300" src="images/mobile.swf" type="application/x-shockwave-flash" width="900" SCALE="exactfit" wmode="transparent" ></embed></object>--%>
</td>
                                        <td width="200" colspan="2">
                                            &nbsp;</td>
                                        <td width="200">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 0" colspan="2">
                                            <asp:Label ID="Label1" runat="server" CssClass="lblhead1" Text="Login" 
                                                ForeColor="White" BackColor="#333333" Width="350px"></asp:Label>
                                                                               
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 0" colspan="2">
                                            <asp:DropDownList ID="cboCategory" runat="server" AutoPostBack="True" 
                                                Width="140px" CssClass="combo">
                                                <asp:ListItem Selected="True">Admin</asp:ListItem>
                                                <asp:ListItem>Customer</asp:ListItem>
                                            </asp:DropDownList>
                                                                               
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200" colspan="3" style="width: 400px" align="left">
                                            <hr align="left" width="350" /></td>
                                    </tr>
                                    <tr>
                                        <td width="200" align="left" colspan="2">
                                            &nbsp;<asp:Label ID="Label2" runat="server" CssClass="lblhead2" 
                                                Text=" User ID" ForeColor="White" BackColor="#333333" Width="350px"></asp:Label>
                                                                               
                                        </td>
                                        <td width="200">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200" align="left" colspan="3" style="width: 400px">
                        <asp:TextBox ID="txtUserName" runat="server" ToolTip="  Enter Username" 
                                CssClass="rtb" Width="350px" CausesValidation="True"></asp:TextBox>
                                            <br />
                                                    <asp:CustomValidator ID="CustomValidator6" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtUserName" 
                                                        CssClass="validation" ErrorMessage="  Enter User ID" SetFocusOnError="True" 
                                                        ValidateEmptyText="True" BackColor="#FFCC66" ForeColor="#333333" 
                                                        Width="150px"></asp:CustomValidator>
                                                </td>
                                    </tr>
                                    <tr>
                                        <td width="200" colspan="2">
                                            <asp:Label ID="Label3" runat="server" CssClass="lblhead2" Text=" Password" 
                                                ForeColor="White" BackColor="#333333" Width="350px"></asp:Label>
                                                                               
                                        </td>
                                        <td width="200">
 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200" align="left" colspan="3" style="width: 400px">
                        <asp:TextBox ID="txtPassword" runat="server" ToolTip="  Enter Password" 
                                CssClass="rtb" Width="350px" TextMode="Password" CausesValidation="True"></asp:TextBox>
                                            <br />
                                                    <asp:CustomValidator ID="CustomValidator7" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtPassword" 
                                                        CssClass="validation" ErrorMessage="  Enter Password" SetFocusOnError="True" 
                                                        ValidateEmptyText="True" BackColor="#FFCC66" ForeColor="#333333" 
                                                        Width="150px"></asp:CustomValidator>
                                                </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" valign="top">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="3">
                                            <asp:Label ID="lblError" runat="server" CssClass="validation" ForeColor="White"></asp:Label>
                                                                               
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style5">
                            <asp:Button ID="Button1" runat="server" CssClass="button_c" Text=" Login " Width="120px" onclick="Button1_Click"  
                                />
                                        &nbsp;
                            <asp:Button ID="Button2" runat="server" CssClass="button_c" Text=" Register" Width="120px" 
                                                onclick="Button2_Click" CausesValidation="False"  
                                />
                                        </td>
                                        <td width="200" align="left" class="style6">
                                            </td>
                                        <td class="style7">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200" align="left" class="style5">
                                            &nbsp;</td>
                                        <td width="200" align="left" class="style6">
                                            &nbsp;</td>
                                        <td class="style7">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200">
                                            &nbsp;</td>
                                        <td width="200" align="left" style="width: 0">
                                            &nbsp;</td>
                                        <td width="200" align="left" style="width: 100px">
                                            &nbsp;</td>
                                        <td width="200">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                            <hr />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="content">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr  >
                <td align="center" >
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
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
