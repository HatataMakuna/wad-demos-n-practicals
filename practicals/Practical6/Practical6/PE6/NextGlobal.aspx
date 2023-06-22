<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextGlobal.aspx.cs" Inherits="Practical6.NextGlobal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link id="css" href="<%=(string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You are visitors:
            <asp:Label ID="visitorNo" runat="server"></asp:Label>
            <br />
            You access on
            <asp:Label ID="accessDate" runat="server"></asp:Label>
            <br />
            <br />
            <a href="Global.aspx">Previous Page</a>
        </div>
    </form>
</body>
</html>
