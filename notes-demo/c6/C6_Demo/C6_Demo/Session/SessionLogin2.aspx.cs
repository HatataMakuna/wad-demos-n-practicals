using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class SessionLogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Text = "You log in as " + Session["username"] + "<br/> Your session ID :"
                + Session.SessionID.ToString();
            Session.Timeout = 1;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           //This delete all data related to the session.
           Session.Abandon();
           //For best practice you should delete the old SessionId as well.
           //Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
           Response.Redirect("SessionLogin1.aspx");
        }
    }
}