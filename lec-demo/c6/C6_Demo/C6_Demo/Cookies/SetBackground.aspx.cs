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

            HttpCookie myBg = new HttpCookie("Background");
            myBg.Value = ddlColors.Text;
            myBg.Expires = DateTime.Now.AddSeconds(30);
            Response.Cookies.Add(myBg);

            
        }

        protected void ddlColors_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}