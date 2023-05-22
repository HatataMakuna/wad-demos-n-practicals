<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="C4_Demo.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProdId" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="#FFFF99" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    ProdId:
                    <asp:Label ID="ProdIdLabel" runat="server" Text='<%# Eval("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
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
            <br />
            <br />
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ProdId" DataSourceID="SqlDataSource2" RepeatColumns="5">
                <ItemTemplate>
                    ProdId:
                    <asp:Label ID="ProdIdLabel" runat="server" Text='<%# Eval("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
<br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm8.aspx">Click Me</asp:HyperLink>
                </ItemTemplate>
            </asp:DataList>
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
            <br />
        </div>
    </form>
</body>
</html>
