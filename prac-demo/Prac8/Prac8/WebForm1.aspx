<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac8.WebForm1" %>
<%@ Register TagPrefix="A" TagName="B" Src="~/LoginControl.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <A:B ID="A" runat="server" />
        </div>
    </form>
</body>
</html>
