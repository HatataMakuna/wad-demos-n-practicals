<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HolidayPackage.aspx.cs" Inherits="Practical3.LabExercise1.HolidayPackage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <u style="font-size:25px;"><strong>Holiday Travel Package</strong></u>
            <p style="font-size:30px;">Happy Holiday from MOM Travel!</p>

            <div>
                Your budget : <asp:TextBox ID="txtBudget" runat="server"></asp:TextBox><br /><br />
                Choose your destination :
                <table>
                    <tr>
                        <td>From</td>
                        <td>To</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlFrom" runat="server">
                                <asp:ListItem>KL</asp:ListItem>
                                <asp:ListItem>Penang</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTo" runat="server">
                                <asp:ListItem>Japan</asp:ListItem>
                                <asp:ListItem>Auckland</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnCheck" runat="server" Text="Check" OnClick="btnCheck_Click" />
            </div>
            <div>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
