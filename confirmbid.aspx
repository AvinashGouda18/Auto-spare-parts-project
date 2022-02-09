<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmbid.aspx.cs" Inherits="home" %>


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
                                <img alt="" src="images/product.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td bgcolor="#003366">
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#003366">
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
                                                        Text="Confirm Bid"></asp:Label>
                                               
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
                                                    <asp:Label ID="Label17" runat="server" CssClass="lblhead2" 
                                                        Text="Select Product"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:DropDownList ID="cbopid" runat="server" AutoPostBack="True" 
                                                        Width="200px" CssClass="combo" onselectedindexchanged="cbopid_SelectedIndexChanged" 
                                                        >
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Label ID="Label14" runat="server" CssClass="lblhead2" 
                                                        Text="Product Name"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtPName" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" MaxLength="10" 
                                                        CausesValidation="True" Enabled="False"></asp:TextBox>
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
                                                    <asp:Label ID="Label19" runat="server" CssClass="lblhead2" 
                                                        Text="Amount"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:TextBox ID="txtPAmount" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="200px" CssClass="textbox_c" MaxLength="10" 
                                                        CausesValidation="True" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td align="left" width="250px">
                                                    <asp:Button ID="btnView" runat="server" CssClass="button_c" Height="35px" 
                                                         Text="View Bid" Width="200px" onclick="btnView_Click"   />
                                                </td>
                                                <td align="left">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="4">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="4" class="tdhead" height="40">
                                                 <asp:Label ID="Label20" 
                                                        runat="server" CssClass="lblhead1" 
                                                        Text="Current Bid on this Product"></asp:Label>
                                               
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="4">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="4">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" CssClass="Grid" ForeColor="#333333" GridLines="None" 
                                        OnRowDataBound="OnRowDataBound" OnRowDeleting="OnRowDeleting" 
                                        onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                                        ondatabinding="GridView1_DataBinding" onrowcommand="GridView1_RowCommand">
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <Columns>
                                            <asp:BoundField DataField="Agency" HeaderText="ID">
                                                <ItemStyle Width="80px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Category" HeaderText="Product">
                                                <ItemStyle Width="40px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Rate" HeaderText="Name">
                                                <ItemStyle Width="40px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="tkm" HeaderText="Amount" />
                                            <asp:BoundField DataField="tot" HeaderText="E-mail" />
                                            <asp:CommandField ButtonType="Button" DeleteText="Buy Now" 
                                                HeaderText="Buy Now" ShowDeleteButton="True" ShowHeader="True">
                                                <ItemStyle Width="60px" />
                                            </asp:CommandField>
                                        </Columns>
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="4">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px" height="20">
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
                                                         Text=" Add Product" Width="200px" onclick="btnAddProject_Click" 
                                                        Visible="False"   />
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text=" Home" Width="200px" CausesValidation="False" 
                                                        onclick="btnBack_Click" Visible="False"   />
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
