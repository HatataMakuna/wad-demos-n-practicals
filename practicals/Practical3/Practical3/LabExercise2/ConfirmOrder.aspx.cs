using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3.LabExercise2
{
    public partial class ConfirmOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                FlyingBreakfast previousPage = (FlyingBreakfast)PreviousPage;
                string orderDetails = GetOrderDetails(previousPage);

                lblOrder.Text = orderDetails;
                lblTimeNow.Text = DateTime.Now.ToString("HH:mm");
                lblReceiveTime.Text = DateTime.Now.AddMinutes(25).ToString("HH:mm");
            }
        }

        private string GetOrderDetails(FlyingBreakfast previousPage)
        {
            string orderDetails = string.Empty;
            CheckBox cbSet1 = previousPage.FindControl("cbSet1") as CheckBox;
            CheckBox cbSet2 = previousPage.FindControl("cbSet2") as CheckBox;
            CheckBox cbSet3 = previousPage.FindControl("cbSet3") as CheckBox;
            TextBox qtySet1 = previousPage.FindControl("qtySet1") as TextBox;
            TextBox qtySet2 = previousPage.FindControl("qtySet2") as TextBox;
            TextBox qtySet3 = previousPage.FindControl("qtySet3") as TextBox;
            Label totalPrice = previousPage.FindControl("lblTotalPrice") as Label;

            if (cbSet1.Checked)
            {
                int qty1 = int.Parse(qtySet1.Text);
                orderDetails += $"{qty1} - Menu Set 1<br/>";
            }

            if (cbSet2.Checked)
            {
                int qty2 = int.Parse(qtySet2.Text);
                orderDetails += $"{qty2} - Menu Set 2<br/>";
            }

            if (cbSet3.Checked)
            {
                int qty3 = int.Parse(qtySet3.Text);
                orderDetails += $"{qty3} - Menu Set 3<br/>";
            }

            orderDetails += "Total Price = " + totalPrice;
            return orderDetails;
        }
    }
}