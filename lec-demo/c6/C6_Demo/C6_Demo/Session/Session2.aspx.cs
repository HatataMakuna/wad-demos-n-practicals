using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class Session2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatus.Text = "Session ID: " + Session.SessionID;

            if (Session["BasketCount"] != null)
            {
                if ((int)Session["BasketCount"] >= 1)
                {
                    Response.Write("<h3>Thank you. You have purchased " +
                    Session["BasketCount"] + " polo shirt(s).</h3>");
                }
                else
                    Response.Write("<h3>Thank you for drop by....See u</h3>");
            }
            else
            {
                Response.Write("<h3>Your basket is empty!</h3>");
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //Session.Remove("BasketCount");
            Session.Abandon();
            //Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
            Response.Redirect("session1.aspx");
        }
    }
}