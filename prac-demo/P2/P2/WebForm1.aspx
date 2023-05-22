<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="P2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 160px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%; font-size:20px">
            <tr>
                <td class="auto-style1">Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
&nbsp;// textbox ID = txtName</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Program:</td>
                <td>
                    <asp:DropDownList ID="ddlProg" runat="server" >
                        <asp:ListItem>RSD</asp:ListItem>
                        <asp:ListItem>RSW</asp:ListItem>
                        <asp:ListItem>RIS</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    // dropdownlist ID = ddlProg</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Area of Interest:</td>
                <td>
                    <asp:CheckBoxList ID="cblInterest" runat="server">
                        <asp:ListItem>Programming</asp:ListItem>
                        <asp:ListItem>Networking</asp:ListItem>
                        <asp:ListItem>Database</asp:ListItem>
                    </asp:CheckBoxList>
&nbsp; // checkboxlist ID= cblInterest</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;// button ID = btnSubmit; Text = Submit</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="lblSelect" runat="server"></asp:Label>
&nbsp;// Label ID = lblSelect </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
