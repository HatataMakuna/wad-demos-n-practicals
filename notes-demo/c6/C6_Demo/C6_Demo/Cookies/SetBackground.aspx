<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetBackground.aspx.cs" Inherits="Cookies2.SetBackground" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 268px;
        }
        table
        {
            font-family:Verdana,Arial,sans-serif;
            font-size:13pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Choose background color:</td>
                <td>
    <asp:DropDownList ID="ddlColors" runat="server" OnSelectedIndexChanged="ddlColors_SelectedIndexChanged" Font-Names="Verdana" Font-Size="13pt">
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Gray</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
        <asp:Button ID="btnCookie" runat="server" Text="Save Cookies" OnClick="btnCookie_Click" Font-Names="Verdana" Font-Size="13pt" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;<a href="GetColor.aspx">Next Page</a>
    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
    </form>
</body>
</html>