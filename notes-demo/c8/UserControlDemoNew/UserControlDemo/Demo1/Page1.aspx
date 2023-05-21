<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Page1.aspx.cs" Inherits="UserControlDemo.Demo2.Page1"%>
<%@ Register TagPrefix="Supercompany" TagName="Header" Src="~/Demo1/SimpleHeader2.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <Supercompany:Header ID="ctlHeader" runat="server" />
    </div>
    <div>
    Content of Page 1
    </div>
    </form>
</body>
</html>
