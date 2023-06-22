<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Global.aspx.cs" Inherits="Prac6.Global" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link id="css" href="<%=(string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You are visitors:
            <asp:Label ID="visitorNo" runat="server"></asp:Label>
            <br />
            You access on
            <asp:Label ID="accessDate" runat="server"></asp:Label>
            <br />
            <br />
            Choose a theme:<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Standard</asp:ListItem>
                <asp:ListItem>Special</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="ApplyButton" runat="server" Text="Apply" OnClick="ApplyButton_Click" />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Remember preference</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <a href="NextGlobal.aspx">Next Page</a>
        </div>
    </form>
</body>
</html>
