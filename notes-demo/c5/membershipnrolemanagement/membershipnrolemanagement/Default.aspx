<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />     </div>
    <asp:LoginName ID="LoginName1" runat="server" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            Here is some REALLY important information that you should know about all those 
            people that are not authenticated!
        </LoggedInTemplate>
        <AnonymousTemplate>
            Here is some basic information for you.
        </AnonymousTemplate>
    </asp:LoginView>
    </form>
</body>
</html>
