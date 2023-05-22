<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session1.aspx.cs" Inherits="Session.Session1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Click on the button "Add" to get the number of product purchase<br />
        <br />
        Product name: Polo Shirt<br />
        <br />
        Basket items:<asp:Label ID="lblCount" runat="server"></asp:Label><br />
        <br />
        <asp:Button ID="btnEmpty" runat="server" OnClick="btnEmpty_Click" Text="Empty" />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" /><br />
        <br />
        <asp:Button ID="btnNextPage" runat="server" OnClick="btnNextPage_Click" Text="Next Page" /></div>
    </form>
</body></html>
