<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintenance.aspx.cs" Inherits="Prac1.Prac5.Maintenance.Maintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - Maintenance<br />
            <br />
            <a href="#">Maintain categories</a><br />
            <br />
            <a href="#">Maintain products</a>
            <br />
            <br />
            You are logged in as:
            <asp:LoginName ID="LoginName1" runat="server" />
            <br />
            <br />
            If this isn&#39;t your correct username, please <a href="#">click here</a>.
            <br /><br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" />
        </div>
    </form>
</body>
</html>
