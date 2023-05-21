using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ErrorDemo
{
    public partial class _4_RuntimeError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            int intvalue = Convert.ToInt32(txtValue.Text);
            Label1.Text = intvalue.ToString();
        }
    }
}