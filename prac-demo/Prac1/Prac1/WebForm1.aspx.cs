using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           txtName.Focus();
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            // Text changed is trigger when txtName's (text is changed + txtName lost focus)
            txtNameCopy.Text = txtName.Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = txtName.Text;
        }
    }
}