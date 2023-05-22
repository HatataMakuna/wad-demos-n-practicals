<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionEx2.aspx.cs" Inherits="Session.SessionEx2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="font-family:Calibri; font-size:large">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Font-Names="Calibri" Font-Size="Large" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
