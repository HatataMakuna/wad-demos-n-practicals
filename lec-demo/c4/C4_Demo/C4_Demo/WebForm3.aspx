<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="C4_Demo.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProdId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ProdId" HeaderText="ProdId" ReadOnly="True" SortExpression="ProdId" />
                    <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProdId" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ProdId" HeaderText="ProdId" ReadOnly="True" SortExpression="ProdId" />
                    <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProdId] = @ProdId" InsertCommand="INSERT INTO [Products] ([ProdId], [ProdName], [Quantity]) VALUES (@ProdId, @ProdName, @Quantity)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProdName] = @ProdName, [Quantity] = @Quantity WHERE [ProdId] = @ProdId">
                <DeleteParameters>
                    <asp:Parameter Name="ProdId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProdId" Type="String" />
                    <asp:Parameter Name="ProdName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProdName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="ProdId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProdId] = @ProdId" InsertCommand="INSERT INTO [Products] ([ProdId], [ProdName], [Quantity]) VALUES (@ProdId, @ProdName, @Quantity)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProdName] = @ProdName, [Quantity] = @Quantity WHERE [ProdId] = @ProdId">
                <DeleteParameters>
                    <asp:Parameter Name="ProdId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProdId" Type="String" />
                    <asp:Parameter Name="ProdName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProdName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="ProdId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
