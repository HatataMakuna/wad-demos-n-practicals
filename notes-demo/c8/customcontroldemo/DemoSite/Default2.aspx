<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="WebControls" Namespace="WebControls" TagPrefix="fwc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <a href="javascript:ShowDLG('<%=DialogBox1.ClientID %>');">[Show]</a>&nbsp; 
        <fwc:DialogBox ID="DialogBox1" runat="server">
        <ItemTemplate>
        <h1>Please wake up</h1>
        <p>Discount up to 90%!!!!</p>
        <p>No!!! don't faint again...</p>
        </ItemTemplate>
        </fwc:DialogBox>
        

    </div>
    </form>
</body>
</html>
