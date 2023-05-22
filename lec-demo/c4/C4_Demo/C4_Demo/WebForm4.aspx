<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="C4_Demo.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProdId" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ProdId" HeaderText="ProdId" ReadOnly="True" SortExpression="ProdId" />
                    <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProdId" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ProdId" HeaderText="ProdId" ReadOnly="True" SortExpression="ProdId" />
                    <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
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
