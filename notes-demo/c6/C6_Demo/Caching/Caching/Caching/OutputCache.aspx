<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutputCache.aspx.cs" Inherits="Caching._Default" %>
<%@ OutputCache Duration='10' VaryByParam='none' %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Output Cache example</h3>
    <p>Page generated on:
       <asp:label id="lbl_msg" runat="server"/></p>

    </div>
    </form>
</body>
</html>
