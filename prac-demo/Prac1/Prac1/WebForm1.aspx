<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
&nbsp;<asp:TextBox ID="txtName0" runat="server" AutoPostBack="True" ForeColor="Red" ></asp:TextBox>
            <br />
            <asp:TextBox ID="txtNameCopy" runat="server" ForeColor="Red" ></asp:TextBox>
            <br />
            <br />
            - server control name = textbox<br />
            - server control - object ( properties, method, event)<br />
            <br />
            properties = to describe the object<br />
            method = verb (by object itself)<br />
            event = external force that can be imposed on the object<br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" ForeColor="Red" OnTextChanged="txtName_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <br />
        </div>
    </form>
</body>
</html>
