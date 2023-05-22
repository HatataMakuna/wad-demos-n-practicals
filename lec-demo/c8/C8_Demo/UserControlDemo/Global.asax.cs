using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace UserControlDemo
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["NoOfErrors"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Application.Lock();
            Application["NoOfErrors"] = (int)Application["NoOfErrors"] + 1;
            Application.UnLock();
            Response.Write("There is an Application Error! No: " + Application["NoOfErrors"].ToString() + "<br/>"
                + Server.GetLastError().Message);

            Server.ClearError();
        }


    

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}