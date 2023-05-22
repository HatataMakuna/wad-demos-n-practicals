using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)// means page = first time loading
            {
                rangeVArrivalDate.MinimumValue = DateTime.Today.ToShortDateString();
                rangeVArrivalDate.MaximumValue = DateTime.Today.AddDays(30).ToShortDateString();
            }
        }
    }
}