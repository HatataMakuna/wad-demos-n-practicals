﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Caching.Fragment.WebForm1" %>
<%@ Register TagPrefix="Prefix1" TagName="TagName1" Src="WebUserControl1.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  
    <Prefix1:TagName1 ID="usercontrol1" runat="server"></Prefix1:TagName1>
        This is the content from the web form<br />
         <asp:Label ID="lblDateTime" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
