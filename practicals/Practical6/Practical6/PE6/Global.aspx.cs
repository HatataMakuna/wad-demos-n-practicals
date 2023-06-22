using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class Global : System.Web.UI.Page
    {
        private static int noVisitors;
        string cssfile = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            accessDate.Text = DateTime.Now.ToString();
            visitorNo.Text = (string)Session["noVisitors"];
        }

        protected void ApplyButton_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie = Request.Cookies["CookieName"];
            this.cssfile = DropDownList1.Text;
            this.Session["SelectedCss"] = DropDownList1.Text + ".css";

            // no of visitors
            noVisitors++;
            visitorNo.Text = noVisitors.ToString();
            Session["noVisitors"] = visitorNo.Text;
        }
    }
}