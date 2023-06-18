<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabExercise2.aspx.cs" Inherits="Practical4.LabExercise2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .horizontal-rblist {
            display: inline;
        }
        .horizontal-rblist tr {
            display: inline-block;
            margin-right: 10px;
        }
        .title-label {
            font-weight: bold;
            text-decoration-line: underline;
            font-size: 25px;
        }
        .auto-style2 {
            width: 938px;
            vertical-align: top;
        }
        .auto-style3 {
            width: 1061px;
            vertical-align: top;
        }
        .data-item {
            border: 1px solid gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span style="font-size:20px;">Sales Order Information By Staff.</span>

            <table>
                <tr>
                    <td colspan="2">
                        <b>Please select staff name :</b>
                    </td>
                    <td>
                        <b>Please select year :</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        First Name :<br />
                        <asp:DropDownList ID="ddlFirstName" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName] FROM [Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        Last Name :<br />
                        <asp:DropDownList ID="ddlLastName" runat="server" DataSourceID="SqlDataSource2" DataTextField="LastName" DataValueField="LastName"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LastName] FROM [Employees] WHERE [FirstName] = @FirstName">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlFirstName" Name="FirstName" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblYear" CssClass="horizontal-rblist" runat="server">
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </table>
        </div>
    <div>
        <asp:Label ID="lblTitleGridView" runat="server" ForeColor="Blue" CssClass="title-label"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BorderColor="Gray" BorderStyle="Dashed">
            <table>
                <tr>
                    <td class="auto-style3">
                        <!--grid view-->
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                <asp:BoundField DataField="OrderDate" DataFormatString="{0:dd MMM yyyy}" HeaderText="OrderDate" SortExpression="OrderDate" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblOldSales" runat="server"></asp:Label>
                        <br />
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <div class="data-item">
                                    Product Name: <%# Eval("ProductName") %><br />
                                    Unit Price: $<%# Eval("UnitPrice", "{0:F2}") %><br />
                                    Quantity: <%# Eval("Quantity") %><br />
                                    Discount: <%# Eval("Discount", "{0:N0}") %> %<br />
                                    Sales: $<%# Eval("Sales", "{0:F2}") %>
                                </div><br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
    </body>
</html>
