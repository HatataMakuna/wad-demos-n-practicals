<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Prac1.P5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - Authentication Tests<br />
            <br />
            <a href="Order.aspx">Order a Product</a>
            <br />
            (All users including anonymous users)<br />
            <br />
            <a href="MyAccount/MyAccount.aspx">Edit My Account</a>
            <br />
            (All authenticated users)<br />
            <br />
            <a href="Maintenance/Maintenance.aspx">Maintain Data Tables</a>
            <br />
            (Only users associated with the Admin role)</div>
    </form>
</body>
</html>
<!--
Connection string:
    Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="C:\Users\Wesley Har\Desktop\School Properties V3\Degree matters\Year 2 sem 3\Web Application Development (Web Dev)\Practical works\Prac1\Prac1\App_Data\P5.mdf";Integrated Security=True
-->