﻿using System;
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

namespace Caching
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_msg.Text = DateTime.Now.ToString();
            lblCity.Text = Request.QueryString["City"];
        }
    }
}
