﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac7
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Visa")
            {
                regExCC.ValidationExpression = @"4\d{3}";
            }
            else
            {
                regExCC.ValidationExpression = @"5\d{3}";
            }

        }

    }
}