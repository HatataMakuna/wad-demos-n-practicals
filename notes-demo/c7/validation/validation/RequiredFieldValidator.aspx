<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiredFieldValidator.aspx.cs" Inherits="Validation.RequiredFieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
      
    <div>
    
       Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="You must enter a name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
      
    </div>  <br />
        <div>    Birth date: 
    <asp:TextBox ID="txtBirthDate" runat="server">mm/dd/yyyy</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
        ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="You must enter a birth date" ControlToValidate="txtBirthDate" 
        InitialValue="mm/dd/yyyy"></asp:RequiredFieldValidator> &nbsp;
          
</div><br />
          
  <div>
        
    <asp:ListBox ID="lstCardType" runat="server">
        <asp:ListItem Value="None" Selected="True">--Select a credit card--</asp:ListItem>
        <asp:ListItem>Visa</asp:ListItem>
        <asp:ListItem Value="MC">MasterCard</asp:ListItem>
        <asp:ListItem Value="AmEx">American Express</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="You must select a credit card type." 
        ControlToValidate="lstCardType" InitialValue="None" Display="Dynamic"></asp:RequiredFieldValidator>
      <br />
      <br />
      <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem Value="nil">Select One</asp:ListItem>
          <asp:ListItem>Gift</asp:ListItem>
          <asp:ListItem>Car Wash</asp:ListItem>
      </asp:DropDownList>
&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
          ControlToValidate="DropDownList1" Display="Static" 
          ErrorMessage="Please select a free gift" InitialValue="nil"></asp:RequiredFieldValidator>
&nbsp;</div>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>