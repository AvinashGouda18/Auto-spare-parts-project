﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="home" %>


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
<body  topmargin="0" leftmargin="0" rightmargin="0" style="background-image: url('images/c.jpeg'); width: 100%; height: auto">
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
                <td   align="center">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr >
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
                                <img alt="" src="images/product.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
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
                                                        Text="    Add Product"></asp:Label>
                                               
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
                                                        Text="Product ID"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtPID" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" MaxLength="10" 
                                                        CausesValidation="True" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label17" runat="server" CssClass="lblhead2" 
                                                        Text="Category"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:DropDownList ID="cboCategory" runat="server" AutoPostBack="True" 
                                                        Width="200px" CssClass="combo" 
                                                        >
                                                        <asp:ListItem>Two Wheeler</asp:ListItem>
                                                        <asp:ListItem>Car</asp:ListItem>
                                                        <asp:ListItem>Both</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label15" runat="server" CssClass="lblhead2" Text="Name"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" BorderWidth="1px" onkeypress="return AlphaOnly()"
                                                        Width="200px" CssClass="textbox_c" CausesValidation="True"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label18" runat="server" CssClass="lblhead2" Text="Select File"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:FileUpload ID="fu" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" height="20">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                                                        ClientValidationFunction="validatetext" ControlToValidate="txtname" 
                                                        ErrorMessage="Required" ValidateEmptyText="True"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label12" runat="server" CssClass="lblhead2" 
                                                        Text="Amount"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtAmount" runat="server" BorderStyle="Solid" onkeypress="return NumberOnly()"
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" MaxLength="10" 
                                                        CausesValidation="True"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label20" runat="server" CssClass="lblhead2" 
                                                        Text="Quantity"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:DropDownList ID="cboQuantity" runat="server" AutoPostBack="True" 
                                                        Width="200px" CssClass="combo" 
                                                        >
                                                        <asp:ListItem Selected="True">1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:CustomValidator ID="CustomValidator3" runat="server" 
                                                        ClientValidationFunction="validateamount" ControlToValidate="txtAmount" 
                                                        ErrorMessage="Amount Greater than zero" ValidateEmptyText="True" 
                                                        Width="200px"></asp:CustomValidator>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
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
                                            <tr >
                                                <td align="left" colspan="4" height="2px">
                                                     <hr width="1000" /> </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="center" width="250px">
                                                    <asp:Button ID="btnAddProject" runat="server" CssClass="button_c" Height="35px" 
                                                         Text=" Add Product" Width="200px" onclick="btnAddProject_Click"   />
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text=" Home" Width="200px" CausesValidation="False" 
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
