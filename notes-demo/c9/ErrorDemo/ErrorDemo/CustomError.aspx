<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomError.aspx.cs" Inherits="ErrorDemo.CustomError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">NoSuchFile.htm</asp:LinkButton></div>
    </form>
</body>
</html>
