<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="WebControls" Namespace="WebControls" TagPrefix="fwc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <a href="javascript:ShowDLG('<%=DialogBox1.ClientID %>');">[Show]</a>&nbsp; 
        <a href="javascript:HideDLG('<%=DialogBox1.ClientID %>');">[Hide]</a>&nbsp; 
        <fwc:DialogBox ID="DialogBox1" runat="server" Text="A custom dialogbox" Height="147px" Width="309px">
        <ItemTemplate>
            <center><b style="FONT-FAMILY:Verdana;FONT-SIZE:10pt">Hello,world!</b></center>
        </ItemTemplate>
        </fwc:DialogBox>
        
      
        
        <div>
        <b>Reference:</b><br />
        Erling Paulsen. 2005. A Custom Dialog Box Control. The Code Project.
        <br />
        [http://www.codeproject.com/KB/custom-controls/customdialog.aspx]
        </div>
     </div>
    </form>
</body>
</html>
