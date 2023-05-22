<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionLogin2.aspx.cs" Inherits="Session.SessionLogin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family:Calibri">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Logout" />
    
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>