using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControlDemo
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public string PageTitle { get; set; } = "Default PageTitle of Global Super Company";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Repeat(int intNumTimes) // sub procedures = Method of the user control
        {
            int intCounter = 0;

            for (intCounter = 0; intCounter < intNumTimes; intCounter++)
            {
                Response.Write(PageTitle + "<br>");
            }
        }
    }
}