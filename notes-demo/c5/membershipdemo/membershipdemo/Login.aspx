<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MembershipDemo2.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Username<br />
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
<br />
Password<br />
<asp:TextBox ID="txtPassword" runat="server"
TextMode="Password"></asp:TextBox><br />
<br />
<asp:Button ID="Button1" OnClick="Button1_Click" runat="server"
Text="Submit" />
    </div>
    </form>
</body>
</html>
