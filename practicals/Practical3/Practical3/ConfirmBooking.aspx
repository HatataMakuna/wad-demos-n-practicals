<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="Practical3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ABC Bus Booking Confirmation</h1>
            <p>You have confirmed your booking with the following details:</p>
            <asp:Label ID="lblDetails" runat="server"></asp:Label>
            <br />
            <p>Please make payment at our counter.</p>
        </div>
    </form>
</body>
</html>
