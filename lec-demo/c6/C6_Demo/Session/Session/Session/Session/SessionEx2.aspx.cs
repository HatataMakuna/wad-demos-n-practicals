using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class SessionEx2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BasketCount"] != null)
            {
                if ((int) Session["BasketCount"] > 0 ) 
                {
                    lblMsg.Text = "Thank you, you have purchased " + Session["BasketCount"].ToString() + "Polo Shirt(s)";
                }
                else
                {
                    lblMsg.Text = "Thanks for dropping by...";
                }

            }
            else
            {
                lblMsg.Text = "Your basket is empty";
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
              Session["BasketCount1"] = 10;
              // Remove() - to remove SPECIFIED session and value-paired - - Session remain active
            //  Session.Remove("BasketCount"); 

            // Clear() - to clear all the session and value-paired - Session remain active
              Session.Clear();

            // Abandon() - Abandon all the session - Session End - New Session created
            /*
            Session.Abandon();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
            //  add <sessionState regenerateExpiredSessionId="true"></sessionState> web.config
            */

            Response.Redirect("SessionEx1.aspx");
        }
    }
}