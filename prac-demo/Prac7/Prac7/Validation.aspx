<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Prac7.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 269px;
        }
        .auto-style2 {
            width: 269px;
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 35%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">User Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="User name is required." 
                            ControlToValidate="txtUsername" Display="Static">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required."
                            ControlToValidate="txtPassword" Display="Static">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfvCheckPassword" runat="server"
                            ErrorMessage="Password should be 6 characters." ControlToValidate="txtPassword"
                            ValidationExpression="\w{6}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Age:</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age is required."
                            ControlToValidate="txtAge" Display="Static">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rgvAge" runat="server" MaximumValue="99" MinimumValue="1"
                            ControlToValidate="txtAge" ErrorMessage="Age must be between 1-99." Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Date of Birth:</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <asp:CompareValidator runat="server" ErrorMessage="Date Format required." ControlToValidate="txtDOB" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ErrorMessage="Date of Birth is required."
                            ControlToValidate="txtDOB" Display="Static">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Credit Card Type:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RegularExpressionValidator ID="regExCC" runat="server" ControlToValidate="txtCardNum" ErrorMessage="Invalid CC Format">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Credit Card Number:</td>
                    <td>
                        <asp:TextBox ID="txtCardNum" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCardNum" runat="server" ErrorMessage="Credit Card Number is required."
                            ControlToValidate="txtCardNum" Display="Static">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit"/>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" />
            <br />
            <br />
                        <asp:ValidationSummary ID="valSum" runat="server" HeaderText="The following problems have been encountered" />
            <br />
        </div>
    </form>
</body>
</html>
