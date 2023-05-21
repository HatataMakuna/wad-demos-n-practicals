<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6_PageError.aspx.cs" Inherits="ErrorDemo._6_PageError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Page Error</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sample 1" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sample 2" /><br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="X-Large" ForeColor="Red"
                Text="Click the buttons to see the error message"></asp:Label></div>
    </form>
</body>
</html>