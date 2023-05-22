<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="P6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= (string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
</head>
<body style="font-size:25px">
    <form id="form1" runat="server">
        <div>
            You are visitor (s) :
            <asp:Label ID="lblVisitor" runat="server"></asp:Label>
            <br />
            <br />
            You accessed this page at
            <asp:Label ID="lblTime" runat="server"></asp:Label>
            <br />
            <br />
            Please choose a theme:<br />
            <asp:DropDownList ID="ddlTheme" runat="server" Font-Size="20pt">
                <asp:ListItem Value="css/Standard.css">Standard</asp:ListItem>
                <asp:ListItem Value="css/Special.css">Special</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:Button ID="btnApply" runat="server" Font-Size="20pt" OnClick="btnApply_Click" Text="Apply" />
            <br />
            <br />
            <asp:CheckBox ID="chkRemember" runat="server" Font-Size="20pt" AutoPostBack="True" OnCheckedChanged="chkRemember_CheckedChanged" Text="Remember Preference" />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LBtnNext" runat="server" OnClick="LBtnNext_Click">Next</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>
