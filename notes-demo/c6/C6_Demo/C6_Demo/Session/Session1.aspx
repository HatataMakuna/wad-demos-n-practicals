<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session1.aspx.cs" Inherits="Session.Session1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style>
        div
        {
            font-family:Verdana,Arial,sans-serif;
            font-size:13pt;
        }
        .auto-style1
        {
        }
        .auto-style2
        {
            width: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Click on the button "Add" to get the number of product purchase<br />
        <br />
        Product name: Polo Shirt<br />
        <br />
        Basket items:<asp:Label ID="lblCount" runat="server"></asp:Label><br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Font-Names="Verdana" Font-Size="13pt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Font-Size="13pt" /></td>
                <td>
        <asp:Button ID="btnEmpty" runat="server" OnClick="btnEmpty_Click" Text="Empty" Font-Names="Verdana" Font-Size="13pt" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
        <asp:Button ID="btnNextPage" runat="server" OnClick="btnNextPage_Click" Text="Next Page" Font-Names="Verdana" Font-Size="13pt" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lblName" runat="server"></asp:Label>
        <br />
        <br />
        </div>
    </form>
</body></html>
