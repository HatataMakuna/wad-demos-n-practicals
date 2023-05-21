using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ErrorDemo
{
    public partial class ApplicationError2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Convert.ToInt32("abc");
        }

        protected void Page_Error(object sender, EventArgs e)
        {
            Response.Write("<h1>There is a fatal page error!!!!");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Convert.ToInt32("abc");
        }
    }
}