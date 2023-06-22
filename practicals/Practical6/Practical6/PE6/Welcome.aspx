<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Prac6.PE6.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hello, <asp:Label runat="server" ID="Name"></asp:Label> from <asp:Label runat="server" ID="Programme"></asp:Label>

            <h2><asp:Label runat="server" ID="WelcomeTxt"></asp:Label></h2>

            <asp:Label runat="server" ID="TimeTxt"></asp:Label>
          </div>
    </form>
</body>
</html>
