using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class CustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ValidatePhoneNumbers(object source, ServerValidateEventArgs args)
        {
            if (txtPhoneHome.Text != string.Empty || txtPhoneBusiness.Text != string.Empty)
            {
                Response.Write("Server said pass");
                //args.IsValid = true;
            }
            else
            {
                Response.Write("Server said fail");
                //args.IsValid = false;
            }
        }
    }
}