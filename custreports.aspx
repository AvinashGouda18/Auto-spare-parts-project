<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custreports.aspx.cs" Inherits="home" %>


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
<body  topmargin="0" leftmargin="0" rightmargin="0" style="background-color: #003366">
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
                                                        Text="Customer Report"></asp:Label>
                                               
                                                </td>
                                                <td colspan="2" width="500" class="tdhead" align="right">
                                                    <asp:Button ID="btnBack" runat="server" CssClass="button_c" Height="35px" 
                                                        Text=" Back" Width="200px" CausesValidation="False" 
                                                        onclick="btnBack_Click"   />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" width="250px">
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:shivraj-hondashowroom %>" 
                                                        SelectCommand="SELECT [customerid], [fn], [mobile], [location] FROM [tblcustomer]">
                                                    </asp:SqlDataSource>
                                                </td>
                                                <td align="center" width="500" colspan="2">
                                                    <asp:Label ID="lblError" runat="server"></asp:Label>
                                                &nbsp;<asp:Label ID="lblselected" runat="server" Visible="False"></asp:Label>
                                                </td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="4">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        CellPadding="4" DataKeyNames="customerid" DataSourceID="SqlDataSource1" 
                                                        ForeColor="#333333" GridLines="None">
                                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                        <Columns>
                                                            <asp:BoundField DataField="customerid" HeaderText="Customer ID" ReadOnly="True" 
                                                                SortExpression="customerid">
                                                                <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="fn" HeaderText="Name" SortExpression="fn">
                                                                <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile">
                                                                <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="location" HeaderText="Location" 
                                                                SortExpression="location">
                                                                <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                        <AlternatingRowStyle BackColor="White" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="4">
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
                                                    &nbsp;</td>
                                                <td align="left" width="250px">
                                                    &nbsp;</td>
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
                                &nbsp;</td>
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
