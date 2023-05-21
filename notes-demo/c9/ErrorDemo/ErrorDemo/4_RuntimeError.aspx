<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_RuntimeError.aspx.cs" Inherits="ErrorDemo._4_RuntimeError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Runtime Error</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Enter Integer value:
            <asp:TextBox ID="txtValue" runat="server"></asp:TextBox> But try to enter an alphabet
        </p>
        <p>
            <asp:Button ID="btnEnter" runat="server" OnClick="btnEnter_Click" Text="Enter" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
