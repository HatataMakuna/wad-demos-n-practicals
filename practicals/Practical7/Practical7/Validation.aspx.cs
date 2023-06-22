using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical7
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Visa")
            {
                RegularExpressionValidator3.ValidationExpression = @"5\d{13}";
            } else
            {
                RegularExpressionValidator3.ValidationExpression = @"4\d{13}";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
                    // if no errors are triggered
                    lblValid.Text = "You have entered the following<br/>" +
                        "User name: " + txtUsername.Text +
                        "<br/>Password: " + txtPassword.Text +
                        "<br/>Age: " + txtAge.Text +
                        "<br/>Date of birth: " + txtDob.Text +
                        "<br/>Credit card number: " + txtCcNumber.Text;
        }
    }
}