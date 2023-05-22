<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session2.aspx.cs" Inherits="Session.Session2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Font-Names="Verdana" Font-Size="13pt" /></div>
    </form>
</body>
</html>
