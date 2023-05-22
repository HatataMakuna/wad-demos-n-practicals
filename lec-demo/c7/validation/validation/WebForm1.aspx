<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
        .auto-style2 {
            width: 334px;
            height: 39px;
        }
        .auto-style3 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Name:</td>
                <td> <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Birth Date:</td>
                <td> 
    <asp:TextBox ID="txtBirthDate" runat="server" TextMode="Date"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Birth Date is required!" ControlToValidate="txtBirthDate" ForeColor="Red">*</asp:RequiredFieldValidator> </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Free Gift:</td>
                <td>
      <asp:DropDownList ID="ddlGift" runat="server">
          <asp:ListItem Value="nil">Select One</asp:ListItem>
          <asp:ListItem>Gift</asp:ListItem>
          <asp:ListItem>Car Wash</asp:ListItem>
      </asp:DropDownList>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
          ControlToValidate="ddlGift" Display="Static" 
          ErrorMessage="Please select a free gift!" InitialValue="nil" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Quantity</td>
                <td> <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be Integer!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be greater than zero!" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Start Date:</td>
                <td> 
    <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">End Date:</td>
                <td> <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtStartDate" ControlToValidate="txtEndDate" ErrorMessage="End Date must be greater than Start Date!" ForeColor="Red" Operator="GreaterThan" Type="Date">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Days in week:</td>
                <td> 
        <asp:TextBox ID="txtDays" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDays" ErrorMessage="Value must be from 1 (Monday)-7 (Sunday)" ForeColor="Red" MaximumValue="7" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Arrival Date: </td>
                <td class="auto-style3"> 
        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RangeValidator ID="rangeVArrivalDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Your arrival date must be within 30 days from today date!" ForeColor="Red" Type="Date">*</asp:RangeValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Testing (format):</td>
                <td> 
        <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Testing \w{1,8}\.[a-z]{3,4} " ForeColor="Red" ValidationExpression="\w{1,8}\.[a-z]{3,4} ">*</asp:RegularExpressionValidator>
                </td>
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
        </table>
        <br />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />
        <br />
        <div>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
