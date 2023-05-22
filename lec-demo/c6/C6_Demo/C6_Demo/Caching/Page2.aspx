<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Caching.Page2" %>
<%@OutputCache Duration="10" VaryByParam="City;Country" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
        div,p
        {
            font-family:Verdana, Arial, sans-serif;
           font-size:13pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>VaryByParam example</h3>
    <p>Page generated on:
        <asp:label id="lbl_msg" runat="server"/></p>
        <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
    <p>
        Try to set the value in VaryByParam using * , City , Country to see the 
        difference</p>
</body>
</html>
