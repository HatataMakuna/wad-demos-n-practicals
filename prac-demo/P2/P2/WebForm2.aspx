<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="P2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:100%; font-size:20px">
            <tr>
                <td class="auto-style1">Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
&nbsp;// textbox ID = txtName</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Program:</td>
                <td>
                    <asp:DropDownList ID="ddlProg" runat="server" >
                        <asp:ListItem>RSD</asp:ListItem>
                        <asp:ListItem>RSW</asp:ListItem>
                        <asp:ListItem>RIS</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    // dropdownlist ID = ddlProg</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Area of Interest:</td>
                <td>
                    <asp:CheckBoxList ID="cblInterest" runat="server">
                        <asp:ListItem>Programming</asp:ListItem>
                        <asp:ListItem>Networking</asp:ListItem>
                        <asp:ListItem>Database</asp:ListItem>
                    </asp:CheckBoxList>
&nbsp; // checkboxlist ID= cblInterest</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;// button ID = btnSubmit; Text = Submit</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="lblSelect" runat="server"></asp:Label>
&nbsp;// Label ID = lblSelect </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

</asp:Content>
