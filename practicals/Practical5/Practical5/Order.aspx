<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Prac1.Prac5.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - Order Page<br />
            <br />
            Anonymous users and authenticated users can access this page.<br />
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    You are not logged in.
                </AnonymousTemplate>
                <LoggedInTemplate>
                    You are logged in.
                </LoggedInTemplate>
            </asp:LoginView>
            <br />
            <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="Menu.aspx" />
            <br />
            <a href="Menu.aspx">Go Back to Menu</a>
        </div>
    </form>
</body>
</html>
