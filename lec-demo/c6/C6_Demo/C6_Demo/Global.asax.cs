using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace C6_Demo.Application
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Welcome"] = "Welcome to myBookStore";
            Application["AdsClick"] = 0;
            int intVisitor = 0;
            
            Application["intVisitors"] = intVisitor;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Time"] = DateTime.Now;
            Application.Lock();
            Application["intVisitors"] = (int) Application["intVisitors"] +1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session.Abandon();
            Application.Lock();
            Application["intVisitors"] = (int)Application["intVisitors"] - 1;
            Application.UnLock();

        }

        protected void Application_End(object sender, EventArgs e)
        {
           
        }
    }
}