<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="UserControlDemo.WebForm2" %>
<%@ Register TagPrefix="A" TagName="B" Src="~/WebUserControl1.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <A:B ID="ctlTest" runat="server"  PageTitle="Test Page Title" />
        </div>
    </form>
</body>
</html>
