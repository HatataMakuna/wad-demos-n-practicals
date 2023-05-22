

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:createuserwizard ID="Createuserwizard1" runat="server" 
            oncontinuebuttonclick="Createuserwizard1_ContinueButtonClick"> <WizardSteps> <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server"/> <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server"/> </WizardSteps> </asp:createuserwizard>
    </div>
    </form>
</body>
</html>
