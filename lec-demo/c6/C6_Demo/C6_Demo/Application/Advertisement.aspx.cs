using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["AdsClick"] != null)
            {
                lblClick.Text = "Number of click(s) " + Application["AdsClick"].ToString();
            }

        }

        protected void btnAds_Click(object sender, EventArgs e)
        {
            int i;
            i = (int)Application["AdsClick"];
            i++;
            Application["AdsClick"] = (object)i;
            lblClick.Text = "Number of click(s): " + Application["AdsClick"].ToString();
        }
    }
}