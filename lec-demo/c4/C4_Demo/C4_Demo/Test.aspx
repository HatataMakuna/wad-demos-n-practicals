<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="C4_Demo.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Post Code:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Post Code must be 5 digits" ForeColor="#CC0000" ValidationExpression="\d{5}">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        </div>
    </form>
</body>
</html>
