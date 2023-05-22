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
            ErrorMessage="You must enter a name" ControlToValidate="txtName" ForeColor="Red">*</asp:RequiredFieldValidator>
      
    </div>  <br />
        <div>    Birth date: 
    &nbsp;&nbsp;
          
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
          
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
        ControlToValidate="lstCardType" InitialValue="None" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
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
          ErrorMessage="Please select a free gift" InitialValue="nil" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;</div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </form>
</body>
</html>