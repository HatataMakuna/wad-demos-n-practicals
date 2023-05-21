<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Debug.aspx.cs" Inherits="ErrorDemo.Debug" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
      <script type="text/javascript">
          function ValidateTextBox() {
              var x = 1;
              var y = 2;
              var z = x + y;
              window.alert('answer: ' + z);
          }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="70px"></asp:TextBox> + 
        <asp:TextBox ID="TextBox2" runat="server" Width="70px"></asp:TextBox> = 
        <asp:Label ID="Label1" runat="server" Text="Answer" Font-Bold="True" Font-Names="@Arial Unicode MS" Font-Size="16pt" ForeColor="#0000CC"></asp:Label> 
        <br />
        <br />
        <asp:Button ID="btnCal" runat="server" Text="Calculate" OnClick="btnCal_Click" OnClientClick="ValidateTextBox()" />
    </div>
    </form>
</body>
</html>
