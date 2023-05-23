<%@ Page Title="" Language="C#" MasterPageFile="~/LabExercise/Site1.Master" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="Practical2.LabExercise.CourseInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Bachelor program offered by Faculty of Applied Science and Computing :</p>
    <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>Bachelor of Information Technology (Honours) in Software Development</asp:ListItem>
        <asp:ListItem>Bachelor of Information Technology (Honours) in Internet Technology</asp:ListItem>
        <asp:ListItem>Bachelor of Information Technology (Honours) in Information Security</asp:ListItem>
        <asp:ListItem>Bachelor of Information Systems (Honours) in Enterprise Information Systems</asp:ListItem>
    </asp:BulletedList>
</asp:Content>