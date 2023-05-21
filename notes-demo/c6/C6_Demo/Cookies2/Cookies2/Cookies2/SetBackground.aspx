<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetBackground.aspx.cs" Inherits="Cookies2.SetBackground" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DropDownList ID="ddlColors" runat="server">
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Gray</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnCookie" runat="server" Text="Save Cookies" OnClick="btnCookie_Click" /><br />
        <br />
        &nbsp;<a href="GetColor.aspx">Next Page</a>
    </div>
    </form>
</body>
</html>