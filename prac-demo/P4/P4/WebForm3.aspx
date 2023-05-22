<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="P4.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 176px;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 176px;
            height: 37px;
        }
        .auto-style4 {
            width: 143px;
            height: 37px;
        }
        .auto-style5 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Please select Staff Name:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>Please Select Year:</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlName" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="EmployeeID" AutoPostBack="True" Font-Size="18pt">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT LastName + ' ' + FirstName AS Name, EmployeeID FROM Employees"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="rblYear" runat="server" DataSourceID="SqlDataSource2" DataTextField="Yr" DataValueField="Yr" AutoPostBack="True" Font-Size="18pt">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT YEAR(OrderDate) AS Yr FROM Orders"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" Font-Size="18pt" OnClick="btnSearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblTitleGridView" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblOldSales" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging">
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT OrderID, OrderDate FROM Orders WHERE (EmployeeID = @empID) AND (YEAR(OrderDate) = @Yr)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlName" Name="empID" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="rblYear" Name="Yr" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server">
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
