using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Pracitcal3
{
    public partial class ConfirmBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                TextBox AdultNo = PreviousPage.FindControl("txtAdult") as TextBox;
                TextBox ChildNo = PreviousPage.FindControl("txtChild") as TextBox;
                TextBox TicketPrice = PreviousPage.FindControl("txtPrice") as TextBox;
                TextBox DepartDate = PreviousPage.FindControl("txtDepartDt") as TextBox;
                DropDownList TravelFrom = PreviousPage.FindControl("ddlFrom") as DropDownList;
                DropDownList TravelTo = PreviousPage.FindControl("ddlTo") as DropDownList;

                lblDetails.Text = "Departure Date : " + DepartDate.Text + "</br>" +
                    "From : " + TravelFrom.SelectedItem.Value + "</br> " +
                    "To : " + TravelTo.SelectedItem.Value + "</br> " +
                    AdultNo.Text + " Adult and " + ChildNo.Text + " Child. </br>" +
                    "Ticket Price : " + TicketPrice.Text;
            }
        }
    }
}