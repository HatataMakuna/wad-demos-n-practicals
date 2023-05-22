using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace UserControlDemo.Demo2.Example1
{
    public partial class HeaderTitle : System.Web.UI.UserControl
    {
        //this public variable will be exposed 
        //as property of the user control
        public string PageTitle { get; set; } = "Default PageTitle of Global Super Company";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}