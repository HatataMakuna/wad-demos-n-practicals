<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationSummary.aspx.cs" Inherits="Validation.ValidationSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListBox ID="lstCardType" runat="server">
            <asp:ListItem Value="None" Selected="True">--Select a credit card--</asp:ListItem>
            <asp:ListItem Value="Visa">Visa</asp:ListItem>
            <asp:ListItem Value="MC">MasterCard</asp:ListItem>
            <asp:ListItem Value="AmEx">American Express</asp:ListItem>
        </asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="You must select a credit card type." 
            ControlToValidate="lstCardType" InitialValue="None" Display="Dynamic">*</asp:RequiredFieldValidator>
    </div>
    <p>
        Number:
        <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtCardNumber" Display="Dynamic" 
            ErrorMessage="You must enter  credit card number.">*</asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        HeaderText="Please correct the following errors:" />
    </form>
</body>
</html>