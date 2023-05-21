<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_ParseError.aspx.cs" Inherits="ErrorDemo._1_ParseError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Parser Error</title>
</head>
<body>
    <asp:Label ID="lblMessage" runat="Server"> </asp:Label><!-- Missing closing tag. -->
</body>
</html>
