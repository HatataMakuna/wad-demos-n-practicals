﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Prac1.Prac5.MyAccount.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="MyAccount.aspx" ContinueDestinationPageUrl="MyAccount.aspx">
            </asp:ChangePassword>
        </div>
    </form>
</body>
</html>
