<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="P6.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-size:20pt">
    <form id="form1" runat="server">
        <div>
            Please select a payment method:<br />
            <br />
            <asp:RadioButtonList ID="rblCC" runat="server" AutoPostBack="True">
                <asp:ListItem>Master Card</asp:ListItem>
                <asp:ListItem>Visa Card</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Card No: <asp:TextBox ID="txtCCNo" runat="server" Font-Size="20pt"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regExCC" runat="server" ControlToValidate="txtCCNo" ErrorMessage="Invalid Format" ForeColor="Red">*</asp:RegularExpressionValidator>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Font-Size="20pt" OnClick="btnSubmit_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
