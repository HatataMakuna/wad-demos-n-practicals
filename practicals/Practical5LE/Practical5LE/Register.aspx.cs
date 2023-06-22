using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical5LE
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Retrieve registration form data and perform validation

            // Create a new user in the membership system

            // Redirect to the appropriate page (e.g., Main.aspx)
            Response.Redirect("Main.aspx");
        }
    }
}