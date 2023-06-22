using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac6
{
    public partial class NextGlobal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            accessDate.Text = DateTime.Now.ToString();

            if (Session["noVisitors"] == null)
            {
                visitorNo.Text = "0";
            }
            else
            {
                visitorNo.Text = (string)Session["noVisitors"];
            }
        }
    }
}