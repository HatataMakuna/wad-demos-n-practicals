using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        // display current date and time - if false, displays everytime click "Postback"; no display otherwise
        Boolean IsPostBack = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) // You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();

                // to display today's date by default when the page is loaded for the first time
                txtDepartDt.Text = DateTime.Now.ToShortDateString();
            }
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            // calculate the total price
            // HD to Butter: 34.00 for adult, 25.50 for child
            // HD to Seremban: 6.00 for adult, 4.30 for child
            if (ddlTo.Text == "Butterworth")
            {
                txtPrice.Text = "RM " + ((Double.Parse(txtAdult.Text) * 34.00) + (Double.Parse(txtChild.Text) * 25.50));
            } else if (ddlTo.Text == "Seremban")
            {
                txtPrice.Text = "RM " + ((Double.Parse(txtAdult.Text) * 6.00) + (Double.Parse(txtChild.Text) * 4.30));
            }
            
            else
            {
                // error message
                lblError.Text = "Sorry. We do not provide trip from Hentian Duta to Seremban";
            }
        }
    }
}