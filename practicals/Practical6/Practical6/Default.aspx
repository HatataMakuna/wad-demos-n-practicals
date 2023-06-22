<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practical6.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Some String:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SubmitString" runat="server" OnClick="SubmitString_Click" Text="Submit String" />
            <asp:Button ID="JustSubmit" runat="server" Text="Just Submit" />
            <br />
            <br />
            Value of the string held in the MEMBER VARIABLE:
            <asp:Label ID="LabelShowString" runat="server"></asp:Label>
            <br />
            <br />
            Value of the string held in the SESSION STATE:
            <asp:Label ID="LabelShowStringAsSessionState" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
