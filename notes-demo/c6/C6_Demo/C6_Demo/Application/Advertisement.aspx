<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertisement.aspx.cs" Inherits="Application.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            font-family:Verdana,Arial,sans-serif;
            font-size:13pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family:Calibri">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="btnAds" runat="server" OnClick="btnAds_Click" Text="Advertisement" Font-Size="13pt" />&nbsp; </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Label ID="lblClick" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Application/Welcome.aspx">back...</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
