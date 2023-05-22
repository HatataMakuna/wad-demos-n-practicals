<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="UserControlDemo.WebForm1" %>
<%@ Register TagPrefix="A" TagName="B" Src="~/WebUserControl1.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <A:B ID="ctlTest" runat="server"  />
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:PlaceHolder ID="plhControl" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
