<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="Practical3.LabExercise2.ConfirmOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is to confirm that you have ordered :<br />
            <br />
            <asp:Label ID="lblOrder" runat="server"></asp:Label>
            <br />
            <br />
            The time is
            <asp:Label ID="lblTimeNow" runat="server"></asp:Label>
            . You will receive your order within 25 minutes.<br />
            We will reach at your doorstep before or at
            <asp:Label ID="lblReceiveTime" runat="server"></asp:Label>
            .<br />
            <br />
            Thank you.</div>
    </form>
</body>
</html>
