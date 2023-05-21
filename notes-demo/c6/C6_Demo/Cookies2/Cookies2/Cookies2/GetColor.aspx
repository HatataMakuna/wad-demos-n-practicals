<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetColor.aspx.cs" Inherits="Cookies2.GetColor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-color:<% Response.Write (GetBackground()); %> " >
    <form id="form1" runat="server">
    <div>
    <h2 style="COLOR: white"><asp:Label id="msg" runat="server">Hello, welcome to my site</asp:Label>
        <br />
        Background color is set based on your selection
    </h2>
    </div>
    </form>
</body>
</html>