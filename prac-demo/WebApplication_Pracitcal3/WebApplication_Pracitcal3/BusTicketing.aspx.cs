using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Discovery;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Pracitcal3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        const double dblDBAdult = 34.00;
        const double dblDBChild = 25.50;
        const double dblPSAdult = 6.00;
        const double dblPSChild = 4.30;

        private int adult, child;
        private double subtotal;
        protected void Page_Load(object sender, EventArgs e)
        {

            // first time page is loaded = ispostback (false)


            if (!IsPostBack) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();
                txtDepartDt.Text = DateTime.Now.ToString("dd-MM-yyyy");
            }
        }

        protected void postBackBtn_Click(object sender, EventArgs e)
        {

        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void txtDepartDt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlFrom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBookTkt_Click(object sender, EventArgs e)
        {

        }

        protected void btnBookCancel_Click(object sender, EventArgs e)
        {
            txtAdult.Text = string.Empty;
            txtChild.Text = string.Empty;
            ddlFrom.ClearSelection();
            ddlTo.ClearSelection();
            calDepartDt.SelectedDates.Clear();
            txtDepartDt.Text = string.Empty;
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int intAdult = 0;
            int intChild = 0;
            intAdult = int.Parse(txtAdult.Text);
            intChild = int.Parse(txtChild.Text);
            double dblPrice = 0.0;


            if ((ddlFrom.Text == "Hentian Duta") && (ddlTo.Text == "Butterworth"))
            {
                dblPrice = (intAdult * dblDBAdult) + (intChild * dblDBChild);
                txtPrice.Text = dblPrice.ToString("C");
                lblError.Text = "";

            }
            else if ((ddlFrom.Text == "Hentian Putra") && (ddlTo.Text == "Seremban"))
            {
                dblPrice = (intAdult * dblPSAdult) + (intChild * dblPSChild);
                txtPrice.Text = dblPrice.ToString("C");
                lblError.Text = "";

            }
            else
            {
                txtPrice.Text = "";
                lblError.Text = ddlFrom.Text + " to " + ddlTo.Text + " is not a valid journey";
            }




        }
    }
}