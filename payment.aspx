<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="home" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    
  <script type="text/javascript" src="images/cudal.js"></script>
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
            width: 800px;
        }
         .style2
        {
            width: 900px;
        }
        </style>
<script type="text/javascript" src="images/back.js"></script>   
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




  
  
<script type="text/javascript" language="javascript">

function DisableBackButton() {
window.history.forward()
}
DisableBackButton();
window.onload = DisableBackButton;
window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
window.onunload = function() { void (0) }
</script>  
    <!-- Modal Popup -->

<script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />

<div id="MyPopup" class="modal fade" role="dialog" style="top: 30%">
    <div class="modal-dialog >
        <!-- Modal content-->
        <div class="modal-content" style="background-color: #ffffff">
            <div class="modal-header"  style="background-color: #800000;border-color: #333333; ">
                <button type="button" class="close" data-dismiss="modal" style="color: #ffffff">
                    &times;</button>
                <h4 class="modal-title" style="color: #ffffff">
                </h4>
            </div>
            <div class="modal-body" style="text-align: center">
                <button type="button" class="btn btn-danger" data-dismiss="modal" style="text-align: center">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function ShowPopup(title, body) {
        $("#MyPopup .modal-title").html(title);
        $("#MyPopup .modal-body").html(body);
        $("#MyPopup").modal("show");
    }
</script>	
<!-- Modal Popup -->
</head>

<body  topmargin="0" leftmargin="0" rightmargin="0"  style="background-color: #FFCC9A" >
   

 <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style3" bgcolor="#FFCC9A">
            <tr  >
                <td align="center" valign="top">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td bgcolor="#FFCC9A">
                                        <table align="center" cellpadding="0" cellspacing="0" class="style5" 
                                            bgcolor="#FFCC9A">
                                            <tr>
                                                <td colspan="2" width="400">
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                                <td width="400">
                                                    &nbsp;</td>
                                                <td colspan="2" width="400">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="200">
                                                    &nbsp;</td>
                                                <td align="center" width="200" colspan="3" style="width: 400px">
                                                    <asp:Label ID="lblError" runat="server"></asp:Label>
                                                </td>
                                                <td align="left" width="200">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="5">
                                                    <table align="center" bgcolor="#FFCC9A" cellpadding="0" cellspacing="0" 
                                                        class="style2">
                                                        <tr>
                                                            <td width="225">
                                                                <asp:Label ID="Label29" runat="server" CssClass="labelfield" Text="Order ID" 
                                                                    Width="150px" Visible="False"></asp:Label>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:TextBox ID="txtOrderID" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                                    CssClass="textbox_c" Font-Names="Segoe UI" Font-Size="14pt" Height="30px" 
                                                                    ReadOnly="True" Width="168px" Visible="False"></asp:TextBox>
                                                            </td>
                                                            <td width="225">
                                                                <asp:Label ID="Label23" runat="server" CssClass="labelfield" Text="Amount" 
                                                                    Width="150px" Visible="False"></asp:Label>
                                                            </td>
                                                            <td width="225">
                                                                <asp:TextBox ID="txtAmt" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                                    CssClass="textbox_c" Font-Names="Segoe UI" Font-Size="14pt" Height="30px" 
                                                                    ReadOnly="True" Width="168px" Visible="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                &nbsp;</td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                <asp:Label ID="Label28" runat="server" CssClass="labelfield" Text="Select Bank" 
                                                                    Width="150px"></asp:Label>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:DropDownList ID="cboPayment" runat="server" AutoPostBack="True" 
                                                                    onselectedindexchanged="cboPayment_SelectedIndexChanged" Width="168px">
                                                                    <asp:ListItem>Credit Card</asp:ListItem>
                                                                    <asp:ListItem>Debit Card</asp:ListItem>
                                                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                                                    <asp:ListItem>COD</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:Label ID="lblIFSC" runat="server" CssClass="labelfield" Text="IFSC" 
                                                                    Width="150px"></asp:Label>
                                                            </td>
                                                            <td width="225">
                                                                <asp:TextBox ID="txtIFSC" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                                    CssClass="textbox_c" Font-Names="Segoe UI" Font-Size="14pt" Height="30px" 
                                                                    onkeypress="return AlphaOnlyWithoutSymbol()" Width="168px" 
                                                                    CausesValidation="True"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                &nbsp;</td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                                    ControlToValidate="txtIFSC" ErrorMessage="IFSC Requried"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                <asp:Label ID="lblBank" runat="server" CssClass="labelfield" Text="Bank name" 
                                                                    Width="150px"></asp:Label>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:TextBox ID="txtBank" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                                    CssClass="textbox_c" Font-Names="Segoe UI" Font-Size="14pt" Height="30px" 
                                                                    onkeypress="return AlphaOnlyWithoutSymbolNumber()" Width="168px" 
                                                                    CausesValidation="True"></asp:TextBox>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:Label ID="lblCVV" runat="server" CssClass="labelfield" Text="CVV" 
                                                                    Width="150px"></asp:Label>
                                                            </td>
                                                            <td width="225">
                                                                <asp:TextBox ID="txtCVV" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                                    CssClass="textbox_c" Font-Names="Segoe UI" Font-Size="14pt" Height="30px" 
                                                                    MaxLength="3" onkeypress="return NumberOnly()" Width="168px" 
                                                                    CausesValidation="True"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                                    ControlToValidate="txtBank" ErrorMessage="Bank Name Required"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                                    ControlToValidate="txtCVV" ErrorMessage="Enter CVV Required"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                &nbsp;</td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                <asp:Label ID="lblAccNo" runat="server" CssClass="labelfield" 
                                                                    Text="Card Number" Width="150px"></asp:Label>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:TextBox ID="txtAccno" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                                    CssClass="textbox_c" Font-Names="Segoe UI" Font-Size="14pt" Height="30px" 
                                                                    MaxLength="16" onkeypress="return NumberOnly()" Width="168px" 
                                                                    CausesValidation="True"></asp:TextBox>
                                                            </td>
                                                            <td align="left" width="225">
                                                                <asp:Label ID="lblExpDate" runat="server" CssClass="labelfield" 
                                                                    Text="Expire Date" Width="150px"></asp:Label>
                                                            </td>
                                                            <td width="225">
                                                                <asp:DropDownList ID="cboMonth" runat="server" AutoPostBack="True" 
                                                                    onselectedindexchanged="cboPayment_SelectedIndexChanged" Width="100px">
                                                                    <asp:ListItem>Jan</asp:ListItem>
                                                                    <asp:ListItem>Feb</asp:ListItem>
                                                                    <asp:ListItem>Mar</asp:ListItem>
                                                                    <asp:ListItem>Apr</asp:ListItem>
                                                                    <asp:ListItem>May</asp:ListItem>
                                                                    <asp:ListItem>Jun</asp:ListItem>
                                                                    <asp:ListItem>Jul</asp:ListItem>
                                                                    <asp:ListItem>Aug</asp:ListItem>
                                                                    <asp:ListItem>Sep</asp:ListItem>
                                                                    <asp:ListItem>Oct</asp:ListItem>
                                                                    <asp:ListItem>Nov</asp:ListItem>
                                                                    <asp:ListItem>Dec</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="cboyear" runat="server" AutoPostBack="True" 
                                                                    onselectedindexchanged="cboPayment_SelectedIndexChanged" Width="68px">
                                                                    <asp:ListItem>2020</asp:ListItem>
                                                                    <asp:ListItem>2021</asp:ListItem>
                                                                    <asp:ListItem>2021</asp:ListItem>
                                                                    <asp:ListItem>2022</asp:ListItem>
                                                                    <asp:ListItem>2023</asp:ListItem>
                                                                    <asp:ListItem Value="2024">2024</asp:ListItem>
                                                                    <asp:ListItem>2025</asp:ListItem>
                                                                    <asp:ListItem>2026</asp:ListItem>
                                                                    <asp:ListItem>2027</asp:ListItem>
                                                                    <asp:ListItem>2028</asp:ListItem>
                                                                    <asp:ListItem>2029</asp:ListItem>
                                                                    <asp:ListItem>2030</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                <asp:CustomValidator ID="CustomValidator9" runat="server" 
                                                                    ClientValidationFunction="validatecardno" ControlToValidate="txtAccno" 
                                                                    ErrorMessage="Enter Valid Card Number" ValidateEmptyText="True"></asp:CustomValidator>
                                                            </td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                &nbsp;</td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                    <asp:Button ID="btnAddProject" runat="server" CssClass="button_c" Height="35px" 
                                                         Text="Paynow" Width="150px" onclick="btnAddProject_Click" />
                                                            </td>
                                                            <td align="center" width="225">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text="Back" Width="150px" onclick="btnBack_Click" 
                                                        CausesValidation="False"  />
                                                            </td>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                            <td align="left" width="225">
                                                                &nbsp;</td>
                                                            <td align="center" width="225">
                                                                &nbsp;</td>
                                                            <td width="225">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                                        </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
