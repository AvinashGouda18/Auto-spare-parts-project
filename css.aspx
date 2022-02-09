<%@ Page Language="C#" AutoEventWireup="true" CodeFile="css.aspx.cs" Inherits="css" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="images/project.css" rel="stylesheet" type="text/css" />
    <link href="images/cudal.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            CssClass="combo" Width="150px" Font-Names="Verdana" Font-Size="13pt">
            <asp:ListItem>Computer</asp:ListItem>
            <asp:ListItem>Graphics</asp:ListItem>
            <asp:ListItem>Software</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox_c"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="lblText" Text="Label"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="combo" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="button_c" Height="30px" 
            Text="Button" Width="150px" />
        <asp:CheckBox ID="CheckBox1" runat="server" />
    
    </div>
    </form>
</body>
</html>
