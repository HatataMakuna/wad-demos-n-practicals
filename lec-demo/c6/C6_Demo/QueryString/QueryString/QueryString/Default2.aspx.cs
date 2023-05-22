using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace QueryString
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // post method
            lblFName.Text = Request.Form["txtFName"];
            lblLName.Text = Request.Form["txtLName"];

            // get method
            //lblFName.Text = Request.QueryString["fname"];
            //lblLName.Text = Request.QueryString["lname"];
        }
    }
}
