<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="WebApplication_Pracitcal3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">ABC BUS BOOKING CONFIRFMATION</h1>
            <p class="auto-style2">
                You have confirmed your booking with the following details:
            </p>
            <p class="auto-style2">
                <asp:Label ID="lblDetails" runat="server" Text="[lblDetails]"></asp:Label>
            </p>
            <p class="auto-style2">
                Please make payment at our counter.
            </p>
        </div>
    </form>
</body>
</html>
