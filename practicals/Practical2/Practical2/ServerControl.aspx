<%@ Page Language="C#" MasterPageFile="~/Practical2.Master" AutoEventWireup="true" CodeBehind="ServerControl.aspx.cs" Inherits="Practical2.ServerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceholderID="ContentPlaceHolder1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style8">Name:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Program:</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="ddlProg" runat="server">
                            <asp:ListItem>RIS</asp:ListItem>
                            <asp:ListItem>RSD</asp:ListItem>
                            <asp:ListItem>RIT</asp:ListItem>
                            <asp:ListItem>RSF</asp:ListItem>
                            <asp:ListItem>REI</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        // dropdownlist = ddlProg</td>
                </tr>
                <tr>
                    <td class="auto-style10">Area of Interest:</td>
                    <td class="auto-style15">
                        <asp:CheckBoxList ID="cblInterest" runat="server">
                            <asp:ListItem>Programming</asp:ListItem>
                            <asp:ListItem>Networking</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                        </asp:CheckBoxList>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style16">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style18">
                        <asp:Label ID="lblSelect" runat="server" Text="[lblSelect]"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
