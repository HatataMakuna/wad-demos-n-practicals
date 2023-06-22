<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .lblCenter {
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;">ABC Bus Online Booking & Ticketing System</h1>
            <br />
            <asp:Label ID="lblTime" runat="server" CssClass="lblCenter"></asp:Label>
            <br />
            <table style="width:100%;">
                <tr>
                    <td>Departure Date: </td>
                    <td>
                        <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                        <br />
                        <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Adult:</td>
                    <td>
                        <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Child:</td>
                    <td>
                        <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>From:</td>
                    <td>
                        <asp:DropDownList ID="ddlFrom" runat="server">
                            <asp:ListItem>Hentian Duta</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Destination:</td>
                    <td>
                        <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                            <asp:ListItem>Butterworth</asp:ListItem>
                            <asp:ListItem>Seremban</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Ticket Price:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblError" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <!--OnClick="btnBookTkt_Click"-->
            <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx" />
            <asp:Button ID="txtCancel" runat="server" Text="Cancel" OnMouseOver="this.value='Click if you confirm to reset selection'" OnMouseOut="this.value='Cancel'"/>
        </div>
    </form>
</body>
</html>
