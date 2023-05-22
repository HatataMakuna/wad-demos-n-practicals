<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="Validation.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Quantity: <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
        <asp:CompareValidator
            ID="CompareValidator1" runat="server" 
            ErrorMessage="Quantity must be greater than zero." 
            ControlToValidate="txtQuantity" Operator="GreaterThan" Type="Integer" 
            ValueToCompare="0" Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="txtQuantity" ErrorMessage="Quantity must be an integer." 
            Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtQuantity" Display="Dynamic" 
            ErrorMessage="Quantity is required"></asp:RequiredFieldValidator>
    </div>
    <br />
    Start Date: 
    <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtStartDate" ErrorMessage="*"></asp:RequiredFieldValidator>
    <br /><br />
    End Date: <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToCompare="txtStartDate" ControlToValidate="txtEndDate" 
        ErrorMessage="End Date must be greater than Start Date." Operator="GreaterThan" 
        Type="Date" Display="Dynamic"></asp:CompareValidator>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <table class="auto-style1" style="font-family:Calibri">
            <tr>
                <td class="auto-style2">Quantity:</td>
                <td> 
    <asp:TextBox ID="txtStartDate2" runat="server"></asp:TextBox>
                &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtStartDate2" ErrorMessage="Quantity is Required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Start Date:</td>
                <td> 
    <asp:TextBox ID="txtStartDate0" runat="server"></asp:TextBox>
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">End Date:</td>
                <td> 
    <asp:TextBox ID="txtStartDate1" runat="server"></asp:TextBox>
    &nbsp;
    <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToCompare="txtStartDate0" ControlToValidate="txtStartDate1" 
        ErrorMessage="End Date must be greater than Start Date." Operator="GreaterThan" 
        Type="Date" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
    <asp:Button ID="Button2" runat="server" Text="Validate" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
