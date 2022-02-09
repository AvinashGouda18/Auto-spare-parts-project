<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyerhome.aspx.cs" Inherits="home" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
        
                        
         </style>
    
    <style type="text/css">
    .imght
        {
        	width: 100px;
            height: 100px;
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
                <td align="center" bgcolor="#003366">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <img alt="" src="images/product.jpg" style="width: 1300px; height: 150px" /></td>
                        </tr>
                        <tr>
                            <td height="30" valign="middle" bgcolor="Maroon">
                                <asp:Label ID="lbluser" runat="server" Font-Names="Verdana" Font-Size="16pt" 
                                    ForeColor="White" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="34" valign="top" bgcolor="#333333" >
                <script type="text/javascript" src="buyermenu/cudal_src.js"></script>
                <script type="text/javascript" src="buyermenu/cudalmenudom.js"></script>
                <script type="text/javascript" src="buyermenu/cudal_data.js"></script></td>
                        </tr>
                        <tr>
                            <td bgcolor="#003366" align="center">
                                <br />
                                <asp:Label ID="lblselected" runat="server" Font-Names="Verdana" 
                                    Font-Size="22pt" Visible="False">Available Mobiles</asp:Label>
                                <br />
                                <br />
                                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False" 
                                                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                        >
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <Columns>
                                                            <asp:BoundField DataField="1" HeaderText="Product ID">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="2" HeaderText="Name">
                                                                <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                            <asp:ImageField DataImageUrlField="3" HeaderText="Image" ItemStyle-CssClass="imght"  ControlStyle-Width="100" ControlStyle-Height="100">
                                                                <ItemStyle />
                                                            </asp:ImageField>
                                                            <asp:BoundField DataField="4" HeaderText="Amount">
                                                                <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <AlternatingRowStyle BackColor="White" />
                                                    </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr /></td>
                        </tr>
                        <tr>
                            <td class="content">
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
<div id="layer1" 
        style="position: absolute;  height: 6px; z-index: 1; left: 439px; top: -19px">
        <a href="http://www.milonic.com/menuproperties.php"><font color="#FFB66C" 
            style="font-size: 2pt">
        p://www.milonic.com/menuproperties.phphp/www.milonic.com/menuproperties.phphp

