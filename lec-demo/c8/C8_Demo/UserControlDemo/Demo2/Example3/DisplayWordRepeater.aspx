<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="DisplayWordRepeater.aspx.cs" Inherits="UserControlDemo.Demo2.Example3.DisplayWordRepeater" %>
<%@ Register TagPrefix="SuperCompany" TagName="WordRepeater" Src="WordRepeater.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <SuperCompany:WordRepeater id="myWordRepeater" Word="Hello" Runat="Server"></SuperCompany:WordRepeater>
    </div>
    </form>
</body>
</html>
