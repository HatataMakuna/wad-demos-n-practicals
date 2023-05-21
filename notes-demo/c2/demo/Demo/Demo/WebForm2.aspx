<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Demo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body 
onload="javascript:document.forms[0]['Button1'].value=Date();"> 
<form id="Form2" runat="server"> 
    <p> 
    <asp:Button id="Button1" runat="server"> </asp:Button> 
    </p> 
</form> 
</body>

</html>

