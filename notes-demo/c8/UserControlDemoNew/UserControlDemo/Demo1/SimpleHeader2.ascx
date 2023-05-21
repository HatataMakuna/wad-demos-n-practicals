<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="SimpleHeader2.ascx.cs" Inherits="Demo1_SimpleHeader2" %>

<h1>Global Super Company</h1>
<style type="text/css">
a:visited {color: Gray }
a {color:Lime}
</style>
<div style="background-color:red; font-family:Bookman Old Style; color:White;padding: 5px 10px 5px 10px; text-align:right">
<h2 >Global Super Company</h2>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Demo1/Page1.aspx">[ Page 1 ]</asp:HyperLink> &nbsp; &nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Demo1/Homepage.aspx">[ Home ]</asp:HyperLink> &nbsp; &nbsp;<i>We mean business!</i>
<hr />
</div>
