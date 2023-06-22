using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3.LabExercise1
{
    public partial class HolidayPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "Thank you for using our service";
            }
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            string destinationFrom = ddlFrom.SelectedValue;
            string destinationTo = ddlTo.SelectedValue;
            decimal budget = decimal.Parse(txtBudget.Text);
            decimal price = CalculatePrice(destinationFrom, destinationTo);
            decimal priceDifference = DifferencesPrice(budget, price);

            lblMessage.Text = "Happy Holiday from MOM Travel!" + "<br/>";
            lblMessage.Text += "Selected Destination: " + destinationFrom + "-" + destinationTo + "<br/>";

            if (price <= budget)
            {
                lblMessage.Text += "Yay! Can go for holiday!<br/>";
                lblMessage.Text += "RM " + priceDifference + "extra pocket money!";
            } else
            {
                lblMessage.Text += "Sorry! You cannot go for holiday.<br/>";
                lblMessage.Text += "You are RM " + priceDifference + "less";
            }
        }

        private decimal CalculatePrice(string from, string to)
        {
            if (from == "KL")
            {
                if (to == "Japan")
                {
                    return 2400;
                } else if (to == "Auckland")
                {
                    return 2200;
                } else
                {
                    return 0;
                }
            } else if (from == "Penang")
            {
                if (to == "Japan")
                {
                    return 3400;
                } else if (to == "Auckland")
                {
                    return 3200;
                } else
                {
                    return 0;
                }
            } else
            {
                return 0;
            }
        }

        private decimal DifferencesPrice(decimal budget, decimal price)
        {
            return budget - price;
        }
    }
}