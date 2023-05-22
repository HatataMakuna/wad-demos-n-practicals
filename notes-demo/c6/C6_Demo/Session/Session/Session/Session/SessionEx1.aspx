<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionEx1.aspx.cs" Inherits="Session.SessionEx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
        }
        .auto-style3
        {
        }
        .auto-style4
        {
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="font-family:Calibri; font-size:large">
            <tr>
                <td class="auto-style2" colspan="2">Click on the button "Add" to get the number of product purchase</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Product name: Polo Shirt</td>
            </tr>
            <tr>
                <td class="auto-style4">Basket Items: </td>
                <td><asp:Label ID="lblCount" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
        <asp:Button ID="btnEmpty" runat="server" OnClick="btnEmpty_Click" Text="Empty" Font-Names="Calibri" Font-Size="Medium" />
        &nbsp;
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Font-Size="Medium" />&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
        <asp:Button ID="btnNextPage" runat="server" OnClick="btnNextPage_Click" Text="Next Page" Font-Names="Calibri" Font-Size="Medium" /></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
