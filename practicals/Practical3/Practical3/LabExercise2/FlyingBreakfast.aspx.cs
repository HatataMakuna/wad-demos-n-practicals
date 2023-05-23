using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3.LabExercise2
{
    public partial class FlyingBreakfast : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblSetDetail.Text = "Menu Set 1<br/>Nasi Lemak<br/>Chicken Rendang<br/>Teh Tarik<br/>RM 12.50";
            }
        }

        protected void rblBreakfastSet_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSet = rblBreakfastSet.SelectedValue;

            switch (selectedSet)
            {
                case "Set 1":
                    lblSetDetail.Text = "Menu Set 1<br/>Nasi Lemak<br/>Chicken Rendang<br/>Teh Tarik<br/>RM 12.50";
                    break;
                case "Set 2":
                    lblSetDetail.Text = "Menu Set 2<br/>Mee Goreng<br/>Fried Egg<br/>Teh Tarik<br/>RM 8.50";
                    break;
                case "Set 3":
                    lblSetDetail.Text = "Menu Set 3<br/>Chicken Sauseges<br/>Omelette<br/>Read Beans<br/>Coffee<br/>RM 10.50";
                    break;
                default:
                    lblSetDetail.Text = string.Empty;
                    break;
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            decimal totalPrice = 0;

            if (cbSet1.Checked)
            {
                int qty1 = int.Parse(qtySet1.Text);
                decimal price1 = 12.50m;
                totalPrice += qty1 * price1;
                lblPriceSet1.Text = (qty1 * price1).ToString("0.00");
            }
            else
            {
                lblPriceSet1.Text = string.Empty;
            }

            if (cbSet2.Checked)
            {
                int qty2 = int.Parse(qtySet2.Text);
                decimal price2 = 8.50m;
                totalPrice += qty2 * price2;
                lblPriceSet2.Text = (qty2 * price2).ToString("0.00");
            }
            else
            {
                lblPriceSet2.Text = string.Empty;
            }

            if (cbSet3.Checked)
            {
                int qty3 = int.Parse(qtySet3.Text);
                decimal price3 = 10.50m;
                totalPrice += qty3 * price3;
                lblPriceSet3.Text = (qty3 * price3).ToString("0.00");
            }
            else
            {
                lblPriceSet3.Text = string.Empty;
            }

            lblTotalPrice.Text = totalPrice.ToString("0.00");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            cbSet1.Checked = false;
            cbSet2.Checked = false;
            cbSet3.Checked = false;
            qtySet1.Text = string.Empty;
            qtySet2.Text = string.Empty;
            qtySet3.Text = string.Empty;
            lblPriceSet1.Text = string.Empty;
            lblPriceSet2.Text = string.Empty;
            lblPriceSet3.Text = string.Empty;
            lblTotalPrice.Text = string.Empty;
        }
    }
}