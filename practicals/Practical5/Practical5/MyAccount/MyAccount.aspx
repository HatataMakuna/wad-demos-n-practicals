<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Prac1.Prac5.MyAccount.MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - My Account<br />
            (Only authenticated users can access this page.)<br />
            <br />
            <a href="ChangePassword.aspx">Change Password</a><br />
            <br />
            <a href="#">Track Packages</a><br />
            <br />
            You are now logged in as:
            <asp:LoginName ID="LoginName1" runat="server" />
            <br />
            <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" />

        </div>
    </form>
</body>
</html>
