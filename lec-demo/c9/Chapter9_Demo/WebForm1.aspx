<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Chapter9_Demo.WebForm1" Trace="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 576px;
        }
        .auto-style3 {
            height: 21px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
            <div>
                 <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">X</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtX" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Y</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtY" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                </div>
         </form>
    </body>
</html>
