<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Application.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            font-family:Verdana,Arial,sans-serif;
            font-size:13pt;
        }
        .auto-style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family:Calibri">
    <div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lblDisplayDate" runat="server"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lblCount" runat="server"></asp:Label>
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Font-Names="Verdana" Font-Size="13pt" />&nbsp;
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="btnAds" runat="server" OnClick="btnAds_Click" Text="Advertisement" Font-Names="Verdana" Font-Size="Medium" />&nbsp;&nbsp;&nbsp;
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;<asp:Label ID="lblClick" runat="server"></asp:Label>
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Application/Advertisement.aspx">to ads page...</asp:HyperLink>
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        </div>
    </form>
</body>
</html>
