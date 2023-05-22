<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionLogin1.aspx.cs" Inherits="Session.SessionLogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family:Calibri">
    <div>
        <span style="text-decoration: underline"><strong>Registration Page
            </strong></span><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name :</td>
                <td>
        <asp:TextBox ID="txtName" runat="server" Width="99px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td>
        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="99px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /></td>
            </tr>
        </table>
        <br />
        </div>
    </form>
</body>
</html>
