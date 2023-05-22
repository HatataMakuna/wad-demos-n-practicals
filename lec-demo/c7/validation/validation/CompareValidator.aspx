<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="Validation.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        Quantity: <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="txtQuantity" ErrorMessage="Quantity must be an integer." 
            Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red">*</asp:CompareValidator>
    &nbsp;<asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be greater than 0!" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
    </div>
    <br />
    Start Date: 
    <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtStartDate" ErrorMessage="Start Date is required!" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br /><br />
    End Date: <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToCompare="txtEndDate" ControlToValidate="txtStartDate" ErrorMessage="Start Date must be less than End Date!" ForeColor="Red" Operator="LessThan" Type="Date">*</asp:CompareValidator>
        <br />
    <asp:Button ID="btnValidate" runat="server" Text="Validate" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
