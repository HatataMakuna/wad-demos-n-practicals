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
            runat="server" ErrorMessage="Days must be between 1 and 14." 
            ControlToValidate="txtDays" MaximumValue="14" MinimumValue="1" Type="Integer"></asp:RangeValidator>
    </div>
    <p>
        Arrival:
        <asp:TextBox ID="txtArrival" runat="server"></asp:TextBox>
    
    <asp:RangeValidator ID="valArrival" runat="server" 
            ErrorMessage="You must arrive within 30 days." ControlToValidate="txtArrival" 
            Type="Date"></asp:RangeValidator>
            <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </p></form>
</body>
</html>