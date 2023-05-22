using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies2
{
    public partial class GetColor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public string GetBackground()
        {
            string strBackground;
            strBackground = Request.Cookies["Background"].Value;

            if (Request.Cookies["Background"] != null)
                return Request.Cookies["Background"].Value;
            else
                return "Black";
        }
    }
}