<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="Validation.CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
        function ValidatePhoneNumbers(source, args) {
            var txtPhoneHome = document.getElementById('<%= txtPhoneHome.ClientID %>');
        var txtPhoneBusiness = document.getElementById('<%= txtPhoneBusiness.ClientID %>');
        if (txtPhoneHome.value != '' || txtPhoneBusiness.value != '') {
            window.alert("Passed");
            args.isValid = true;
        }
        else {
            window.alert("Failed");
            args.IsValid = false;
        }
    }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Home phone number: 
        <asp:TextBox ID="txtPhoneHome" runat="server"></asp:TextBox>
    
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
           EnableClientScript="true"  ClientValidationFunction="ValidatePhoneNumbers" 
            ErrorMessage="Please enter your home or business phone number." 
            onservervalidate="ValidatePhoneNumbers"></asp:CustomValidator>
    
        <br />
        <br />
        Business phone number:
        <asp:TextBox ID="txtPhoneBusiness" runat="server"></asp:TextBox>
    
        <br />
    
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>

