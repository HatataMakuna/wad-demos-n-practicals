<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Caching.Fragment.WebUserControl1" %>
<%@ OutputCache Duration="10" VaryByParam="*" shared="true"%>
<p>
    This is the content from user control</p>
<p>
    <asp:Label ID="lblDateTime" runat="server"></asp:Label>
    
</p>
