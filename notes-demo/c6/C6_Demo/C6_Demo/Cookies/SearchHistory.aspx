<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchHistory.aspx.cs" Inherits="Cookies1.SearchHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family:Calibri">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Your Last Search:
        </td>
                <td>
        <asp:Label ID="lblSearch" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Search :</td>
                <td>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /></td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>

