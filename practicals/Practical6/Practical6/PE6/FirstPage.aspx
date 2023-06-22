<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="Practical6.PE6.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:&nbsp;
            <asp:TextBox runat="server"></asp:TextBox>
        </div>
        <div>Programme:&nbsp;
            <asp:RadioButtonList runat="server">
                <asp:ListItem>RIS2</asp:ListItem>
                <asp:ListItem>RIT2</asp:ListItem>
                <asp:ListItem>RSD2</asp:ListItem>
                <asp:ListItem>RSF2</asp:ListItem>
            </asp:RadioButtonList>&nbsp;
        </div>
        <div>Language:&nbsp;
        <asp:DropDownList runat="server">
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Malay</asp:ListItem>
        </asp:DropDownList></div>
        <div>
            <a href="Welcome.aspx">Go</a>
        </div>
    </form>
</body>
</html>
