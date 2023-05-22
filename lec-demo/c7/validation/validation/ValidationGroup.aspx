<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationGroup.aspx.cs" Inherits="Validation.ValidationGroup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Bill-to address<br />
            Name: 
		    <asp:TextBox ID="txtBillToName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="You must enter a bill-to name"
                ControlToValidate="txtBillToName" ValidationGroup="BillTo" SetFocusOnError="True" EnableClientScript="False"></asp:RequiredFieldValidator>
        </div>
        <br />
        Address: 
	    <asp:TextBox ID="txtBillToAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
            ControlToValidate="txtBillToAddress"
            ErrorMessage="You must enter a bill-to address" ValidationGroup="BillTo" EnableClientScript="False"></asp:RequiredFieldValidator>
        <p>
            Ship-to Address<asp:CheckBox ID="chkShipTosameAsBillTo" runat="server"
                Text="Ship to same address" />
        </p>
        Name: 
		<asp:TextBox ID="txtShipToName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ErrorMessage="You must enter a ship-to details" ControlToValidate="txtShipToName"
            ValidationGroup="ShipTo" EnableClientScript="False"></asp:RequiredFieldValidator>
        <br />
        Address: 
	    <asp:TextBox ID="txtShipToAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server"
            ErrorMessage="You must enter a ship-to address"
            ControlToValidate="txtShipToAddress" ValidationGroup="ShipTo" EnableClientScript="False"></asp:RequiredFieldValidator><br />
        <asp:Button ID="Button1" runat="server" Text="Check" OnClick="Button1_Click"
            ValidationGroup="BillTo" />
        &nbsp;
	    <br />
        <asp:Label ID="lblPageValid" runat="server" Text="Page.IsValid="></asp:Label>
    </form>
</body>
</html>
