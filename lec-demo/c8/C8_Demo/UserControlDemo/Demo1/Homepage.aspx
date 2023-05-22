<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Homepage.aspx.cs" Inherits="UserControlDemo.Demo2.Homepage" %>
<%@ Register TagPrefix="SuperCompany" TagName="Header" Src="SimpleHeader.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>My Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <SuperCompany:Header ID="ctlHeader" runat="server"/>
    </div>
    <div>
    Welcome to our home page!</div>
    </form>
</body>
</html>
