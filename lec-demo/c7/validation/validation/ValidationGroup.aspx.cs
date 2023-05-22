using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class ValidationGroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!chkShipTosameAsBillTo.Checked)
              Page.Validate("ShipTo");

            lblPageValid.Text = "Page.IsValid= " + Page.IsValid.ToString();
        }
    }
}