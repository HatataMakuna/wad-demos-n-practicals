<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="WebApplication_Pracitcal3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {}
        .auto-style5 {
            width: 158px;
            text-align: right;
        }
        .auto-style6 {
            width: 628px;
        }
        .auto-style7 {
            width: 158px;
            height: 264px;
            text-align: right;
        }
        .auto-style8 {
            width: 628px;
            height: 264px;
        }
        .auto-style9 {
            height: 264px;
        }
        .auto-style10 {
            width: 158px;
            text-align: right;
            height: 29px;
        }
        .auto-style11 {
            width: 628px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1><strong style="text-align: left"><span class="auto-style2">ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM</span></strong></h1>
            <asp:Label ID="lblTime" runat="server" Text="[lblTime]"></asp:Label>
            <br />
            <br />
            <asp:Button ID="postBackBtn" runat="server" CssClass="auto-style3" OnClick="postBackBtn_Click" Text="Postback" />
            
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Date:</td>
                <td class="auto-style8">
                    <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="txtDepartDt" runat="server" OnTextChanged="txtDepartDt_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style5">Adult:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAdult" runat="server" Width="76px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Child: </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtChild" runat="server" Width="76px" Height="22px"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style5">From:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlFrom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" Height="16px">
                        <asp:ListItem>&lt;-- Select --&gt;</asp:ListItem>
                        <asp:ListItem>Hentian Duta</asp:ListItem>
                        <asp:ListItem Value="Hentian Putra">Hentian Putra</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Destination:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                        <asp:ListItem>&lt;-- Select --&gt;</asp:ListItem>
                        <asp:ListItem>Butterworth</asp:ListItem>
                        <asp:ListItem Value="Seremban"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Ticket Price:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <strong>
        <asp:Label ID="lblError" runat="server" Text="[lblError]"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnBookTkt" runat="server" PostBackUrl="~/ConfirmBooking.aspx" Text="Book Ticket" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" OnClick="btnBookTkt_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBookCancel" runat="server" Text="Cancel" OnMouseOver="this.value='Click if you confirm to reset selection'" OnMouseOut="this.value='Cancel'" OnClick="btnBookCancel_Click"/>
        </strong>
    </form>
</body>
</html>