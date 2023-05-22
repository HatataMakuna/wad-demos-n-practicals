using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = SqlDataSource2;
            Repeater1.DataBind();

            lblResult.Text = "Number of record(s) = " + Repeater1.Items.Count.ToString();

        }
    }
}