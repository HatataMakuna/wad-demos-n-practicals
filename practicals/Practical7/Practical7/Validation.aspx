<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Practical7.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            User Name:
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUsername" runat="server" ErrorMessage="User name is required" ForeColor="Red" ValidationGroup="Validate1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Password: <asp:TextBox ID="txtPassword" TextMode="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password is required" ForeColor="Red" ValidationGroup="Validate1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password should be 6 characters" ForeColor="Red" ValidationExpression="\w(6)" ValidationGroup="Validate1">*</asp:RegularExpressionValidator>
            <br />
            <br />
            Age: <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAge" runat="server" ErrorMessage="Age is required" ForeColor="Red" ValidationGroup="Validate1">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 1-99" ForeColor="Red" MaximumValue="99" MinimumValue="1" ValidationGroup="Validate1" Type="Integer">*</asp:RangeValidator>
            <br />
            <br />
            Date of Birth: <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtDob" runat="server" ErrorMessage="Date of Birth is required" ForeColor="Red" ValidationGroup="Validate1">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDob" ErrorMessage="Date Format required." ForeColor="Red" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
            <br />
            <br />
            Credit Card Type:&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">Visa</asp:ListItem>
                <asp:ListItem>Master</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Credit Card Number:
            <asp:TextBox ID="txtCcNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtCcNumber" runat="server" ErrorMessage="Credit Card number is required" ForeColor="Red" ValidationGroup="Validate1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtCcNumber" runat="server" ErrorMessage="Invalid Credit Card Number" ForeColor="Red" ValidationGroup="Validate1">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btnSubmit" ValidationGroup="Validate1" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <input id="btnClear" type="reset" value="Clear" /><br />
            <br />
            <!-- invalid message -->
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Validate1" HeaderText="The following problems have been encountered" ShowMessageBox="True" />
            <br />
            <!-- valid message -->
            <asp:Label ID="lblValid" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
