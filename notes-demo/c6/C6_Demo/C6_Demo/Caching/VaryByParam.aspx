<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VaryByParam.aspx.cs" Inherits="Caching.VaryByParam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        div
        {
            font-family:Verdana, Arial, sans-serif;
           font-size:13pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Caching/Page2.aspx?City=KL&Country=Malaysia">KL</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Caching/Page2.aspx?City=Selangor&Country=Malaysia">Selangor</asp:HyperLink>
        <br />
    </div>
    </form>
</body>
</html>
