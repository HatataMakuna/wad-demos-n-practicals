using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class RangeValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // means if it is first time loading the page
            {
                valArrival.MinimumValue = DateTime.Today.ToShortDateString();
                valArrival.MaximumValue = DateTime.Today.AddDays(30).ToShortDateString();
            }
        }
    }
}