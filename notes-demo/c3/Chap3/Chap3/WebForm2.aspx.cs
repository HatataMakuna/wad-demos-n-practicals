using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try { 
                TextBox t = (TextBox) PreviousPage.FindControl("TextBox1");
                Label1.Text = t.Text;
            }catch(NullReferenceException)
            {

            }
        }
    }
}