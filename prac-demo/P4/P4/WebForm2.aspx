<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="P4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-size:20pt">
    <form id="form1" runat="server">
        <div>
            Search Product Information based on CategoryName<br />
            <br />
            Category Name:
            <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" Font-Size="15pt">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
&nbsp;<asp:Button ID="btnFind" runat="server" Font-Size="15pt" Text="Find" OnClick="btnFind_Click" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div>
                    Product Name : <%# Eval("ProductName") %>
                    <br />                    
                    Unit Price : <%# Eval("UnitPrice") %>
                    <br />
                    <br />
                </div>
            </ItemTemplate>
            
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCategory" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
