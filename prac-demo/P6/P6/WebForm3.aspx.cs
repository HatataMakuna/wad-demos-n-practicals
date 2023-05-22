using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (rblCC.SelectedIndex == 0)
            {
                regExCC.ValidationExpression = @"5\d{2}";
            }
            else
            {
                regExCC.ValidationExpression = @"4\d{2}";
            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}