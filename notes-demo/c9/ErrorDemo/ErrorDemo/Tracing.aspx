<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tracing.aspx.cs" Inherits="ErrorDemo.Tracing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Number 1:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <br />
        Number 2:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" /></div>
    </form>
</body>
</html>
