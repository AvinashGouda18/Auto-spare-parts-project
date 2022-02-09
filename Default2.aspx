<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="images/cudal.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="fu" runat="server" />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <asp:Image ID="Image1" runat="server" ImageUrl="~//docs//Winter.jpg" 
        Width="200px" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="round" Height="50px" 
        Text="Label" Width="50px"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" CssClass="round" Height="30px" 
        Width="30px">
        <asp:Label ID="Label1" runat="server" Text="O"></asp:Label>
        &nbsp;
    </asp:Panel>
    <div>
    
    </div>
    </form>
</body>
</html>
