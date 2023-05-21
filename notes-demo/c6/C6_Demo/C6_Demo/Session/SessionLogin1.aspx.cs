using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class SessionLogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["username"] = txtName.Text; 
            //, or 
            //Session.Add("username",txtName.Text);

            Response.Redirect("SessionLogin2.aspx");

        }
    }
}