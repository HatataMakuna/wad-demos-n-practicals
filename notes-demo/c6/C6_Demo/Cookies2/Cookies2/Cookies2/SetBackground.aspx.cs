using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies2
{
    public partial class SetBackground : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCookie_Click(object sender, EventArgs e)
        {
            HttpCookie myBackground = new HttpCookie("Background");
            myBackground.Value = ddlColors.Text;
            myBackground.Expires = DateTime.Now.AddMinutes(30);
            Response.Cookies.Add(myBackground);
        }
    }
}