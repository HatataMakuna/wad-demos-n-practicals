<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prac1.Prac5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to the Halloween Store Maintenance application.<br />
            <br />
            <asp:Login ID="Login1" runat="server" DestinationPageUrl="Menu.aspx">
            </asp:Login>
            <br />
            Need to create new account? <a href="CreateUser.aspx">Click Here</a>
            <br />
            <a href="Menu.aspx">Go Back to Menu</a>
        </div>
    </form>
</body>
</html>
