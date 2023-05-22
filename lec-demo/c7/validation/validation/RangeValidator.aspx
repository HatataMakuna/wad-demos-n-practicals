<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeValidator.aspx.cs" Inherits="Validation.RangeValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Days: 
        <asp:TextBox ID="txtDays" runat="server"></asp:TextBox><asp:RangeValidator ID="RangeValidator1"
            runat="server" ErrorMessage="Days must be between 1 and 7." 
            ControlToValidate="txtDays" MaximumValue="7" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
    </div>
    <p>
        Arrival:
        <asp:TextBox ID="txtArrival" runat="server"></asp:TextBox>
    
    <asp:RangeValidator ID="valArrival" runat="server" 
            ErrorMessage="You must arrive within 30 days." ControlToValidate="txtArrival" 
            Type="Date" ForeColor="Red"></asp:RangeValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtArrival" ErrorMessage="Arrival Date (Date Format)" ForeColor="Red" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            <br />
    <asp:Button ID="btnValidate" runat="server" Text="Validate" />
    </p></form>
</body>
</html>