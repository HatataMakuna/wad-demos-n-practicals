<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlyingBreakfast.aspx.cs" Inherits="Practical3.LabExercise2.FlyingBreakfast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong style="font-size:30px;">FLYING BREAKFAST.COM</strong>
            <p>Order your breakfast online. Online order starts from 2.00am - 11am everyday.</p>

            <div>
                <table>
                    <tr>
                        <td>Breakfast Set</td>
                        <td>
                            <asp:RadioButtonList ID="rblBreakfastSet" runat="server" OnSelectedIndexChanged="rblBreakfastSet_SelectedIndexChanged">
                                <asp:ListItem>Set 1</asp:ListItem>
                                <asp:ListItem>Set 2</asp:ListItem>
                                <asp:ListItem>Set 3</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
            </div>

            <div>
                <asp:Label ID="lblSetDetail" runat="server"></asp:Label>
            </div>

            <div>
                <table>
                    <tr>
                        <td></td>
                        <td>Quantity</td>
                        <td>Total (RM)</td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox ID="cbSet1" runat="server" Text="Set 1" /></td>
                        <td><asp:TextBox ID="qtySet1" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="lblPriceSet1" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox ID="cbSet2" runat="server" Text="Set 2" /></td>
                        <td><asp:TextBox ID="qtySet2" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="lblPriceSet2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox ID="cbSet3" runat="server" Text="Set 3" /></td>
                        <td><asp:TextBox ID="qtySet3" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="lblPriceSet3" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Total (RM)</td>
                        <td><asp:Label ID="lblTotalPrice" runat="server"></asp:Label></td>
                    </tr>
                </table><br />
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                <br />
                <br />
                <asp:Button ID="btnConfirmOrder" runat="server" Text="Confirm Order" PostBackUrl="~/LabExercise2/ConfirmOrder.aspx" />
            </div>
        </div>
    </form>
</body>
</html>
