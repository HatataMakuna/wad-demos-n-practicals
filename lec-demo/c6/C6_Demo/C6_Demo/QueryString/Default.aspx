

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QueryString._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
            width: 143px;
        }
    </style>
</head>
<body>
 

    <form id="form1" runat="server" method="get">
    <div>
        &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1" >
            <tr>
                <td class="auto-style2">
        <br />
                    First Name:&nbsp;&nbsp;</td>
                <td>
    <asp:textbox ID="txtFName" runat="server" Font-Names="Verdana" Font-Size="13pt"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <br />
                    Last Name:</td>
                <td> <asp:TextBox ID="txtLName" runat="server" Font-Names="Verdana" Font-Size="13pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
        <asp:Button ID="btnSubmit"
        runat="server" Text="Submit" onclick="btnSubmit_Click" Font-Names="Verdana" Font-Size="13pt" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
