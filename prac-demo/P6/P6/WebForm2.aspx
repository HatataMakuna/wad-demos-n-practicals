<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="P6.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= (string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
</head>
<body style="font-size:25px">
    <form id="form1" runat="server">
        <div>
            Welcome
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LBtnBack" runat="server" OnClick="LBtnBack_Click">Back</asp:LinkButton>
        </div>
    </form>
</body>
</html>
