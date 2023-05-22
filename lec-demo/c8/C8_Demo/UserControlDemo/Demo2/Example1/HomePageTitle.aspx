<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="HomePageTitle.aspx.cs" Inherits="UserControlDemo.Demo2.Example1.HomePageTitle" %>
<%@ Register TagPrefix ="SuperCompany" TagName ="Header" Src="HeaderTitle.ascx"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>My Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <SuperCompany:Header ID="ctlHeader" PageTitle = "The GlobalSuper Home Page" Runat = "server" />

    </div>
    <div>
     Welcome to our home page. You are visiting 
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
