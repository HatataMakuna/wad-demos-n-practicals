﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorHandling.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="File Not Found" PostBackUrl="NoSuchFile.aspx" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="General Error" 
            onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
