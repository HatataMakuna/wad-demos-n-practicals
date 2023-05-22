<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="C4_Demo.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                  <ItemTemplate>
                   <div>Product Name: <%# Eval("ProdName") %></div>
                  <div>Id: <%# Eval("ProdId") %></div>
<br />
                </ItemTemplate>
             </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProdName" DataValueField="ProdId">
        </asp:CheckBoxList>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProdName" DataValueField="ProdId">
        </asp:DropDownList>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProdName" DataValueField="ProdId">
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                  <div>Product Name: <%# Eval("ProdName") %></div>
                  <div>Id: <%# Eval("ProdId") %></div>
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
