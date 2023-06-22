<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Practical5LE.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Registration form -->
    <h2>Register</h2>
    <!-- Add registration form fields -->
    New Username: <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    New Password: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
</asp:Content>
