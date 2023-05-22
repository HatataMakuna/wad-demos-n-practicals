<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VaryByControl.aspx.cs" Inherits="Caching.VaryByControl" %>
<%@OutputCache Duration="10" VaryByControl="DropDownList1" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        body
        {
            font-family:Verdana,Arial,sans-serif;
            font-size:13pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Font-Names="Verdana" Font-Size="13pt">
            <asp:ListItem>One</asp:ListItem>
            <asp:ListItem>Two</asp:ListItem>
            <asp:ListItem>Three</asp:ListItem>
        </asp:DropDownList>
        <br />
        <h3>VaryByControl example</h3>
    <p>Page generated on:
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
       </p> 
    </div>
    </form>
</body>
</html>
