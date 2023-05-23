<%@ Page Language="C#" MasterPageFile="~/LabExercise/Site1.Master" AutoEventWireup="true" CodeBehind="CarSticker.aspx.cs" Inherits="Practical2.LabExercise.CarSticker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>College Car Sticker Application</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>College Car Sticker Application</h1>
        <div>
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtID">ID:</label>
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtJoinedDate">Joined Date:</label>
            <asp:TextBox ID="txtJoinedDate" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="ddlGender">Gender:</label>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <label for="txtProgram">Program:</label>
            <asp:TextBox ID="txtProgram" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="ddlYearOfStudy">Year of Study:</label>
            <asp:DropDownList ID="ddlYearOfStudy" runat="server">
                <asp:ListItem Text="1st Year" Value="1"></asp:ListItem>
                <asp:ListItem Text="2nd Year" Value="2"></asp:ListItem>
                <asp:ListItem Text="3rd Year" Value="3"></asp:ListItem>
                <asp:ListItem Text="4th Year" Value="4"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <label for="txtRegistrationNumber">Vehicle Registration Number:</label>
            <asp:TextBox ID="txtRegistrationNumber" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="ddlVehicleType">Vehicle Type:</label>
            <asp:DropDownList ID="ddlVehicleType" runat="server">
                <asp:ListItem Text="Car" Value="Car"></asp:ListItem>
                <asp:ListItem Text="Motorcycle" Value="Motorcycle"></asp:ListItem>
                <asp:ListItem Text="SUV" Value="SUV"></asp:ListItem>
                <asp:ListItem Text="Truck" Value="Truck"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
        <div>
            <h2>Selected Information:</h2>
            <asp:Label ID="lblSelectedInfo" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>