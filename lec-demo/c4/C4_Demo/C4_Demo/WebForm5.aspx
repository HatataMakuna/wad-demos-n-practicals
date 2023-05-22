<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="C4_Demo.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ProdId" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    ProdId:
                    <asp:Label ID="ProdIdLabel1" runat="server" Text='<%# Eval("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ProdId:
                    <asp:TextBox ID="ProdIdTextBox" runat="server" Text='<%# Bind("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProdId:
                    <asp:Label ID="ProdIdLabel" runat="server" Text='<%# Eval("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
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
            <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="ProdId" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    ProdId:
                    <asp:Label ID="ProdIdLabel1" runat="server" Text='<%# Eval("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ProdId:
                    <asp:TextBox ID="ProdIdTextBox" runat="server" Text='<%# Bind("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProdId:
                    <asp:Label ID="ProdIdLabel" runat="server" Text='<%# Eval("ProdId") %>' />
                    <br />
                    ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
        </div>
    </form>
</body>
</html>
