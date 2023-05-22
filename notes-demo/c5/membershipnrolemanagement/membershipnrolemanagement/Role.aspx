<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="MembershipNRoleManagement.Role" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1>Role Manager</h1>
    Add Role: <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add Role to Application" 
                onclick="Button1_Click" />
        </p>
            Role Defined: <br />
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            <asp:Button ID="DeleteButton" runat="server" 
                Text="Delete Role" onclick="DeleteButton_Click" />
    </div>
    <p>
        Roles:
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Get Users in Role" />
    </p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </div>
    </form>
</body>
</html>
