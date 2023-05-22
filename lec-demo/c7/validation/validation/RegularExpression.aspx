<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpression.aspx.cs" Inherits="Validation.RegularExpression" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Postcode: 
        <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox><asp:RegularExpressionValidator
            ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Must be a five-digit Postcode." 
            ControlToValidate="txtPostcode" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
    </div>
    <p>
        Phone:
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
    </p>
    <p>
        Name:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="234px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="invalid name" 
            ValidationExpression="[^abc]{1,3}"></asp:RegularExpressionValidator>
    </p>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>