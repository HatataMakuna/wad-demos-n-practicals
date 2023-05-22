<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="C5_Demo.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 296px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="3">Membership and Role Management</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Users:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUsers_SelectedIndexChanged">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Button ID="btnGetUsers" runat="server" OnClick="btnGetUsers_Click" Text="Get Users" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Create Role:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnCreateRole" runat="server" OnClick="btnCreateRole_Click" Text="Create Role" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Roles:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Button ID="btnGetRoles" runat="server" OnClick="btnGetRoles_Click" Text="Get Roles" />
&nbsp;
                        <asp:Button ID="btnGetUsersinRole" runat="server" OnClick="btnGetUsersinRole_Click" Text="Get User in Role" />
                        <br />
                        <br />
                        <asp:ListBox ID="lstUsers" runat="server"></asp:ListBox>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Assign Role to user</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="btnAssign" runat="server" OnClick="btnAssign_Click" Text="Assign" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
