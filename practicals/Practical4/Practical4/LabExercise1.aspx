<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabExercise1.aspx.cs" Inherits="Practical4.LabExercise1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b><u>Search Product Information Based On Category Name</u></b>
            <br />
            <br />
            Select a category name:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryName] FROM [Categories]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Find" OnClick="Button1_Click" />
            <br />
            <hr />
            Your search return: <asp:Label ID="lblResult" runat="server"></asp:Label>
&nbsp;record.<br /> <!-- How to count ONLY AFTER the repeater returned the result???? -->
            <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Product Name: <%#Eval("ProductName") %><br /><br />
                    Unit Price: <%#Eval("UnitPrice") %>
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Products.ProductName, Products.UnitPrice FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE Categories.CategoryName = @CategoryName">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
