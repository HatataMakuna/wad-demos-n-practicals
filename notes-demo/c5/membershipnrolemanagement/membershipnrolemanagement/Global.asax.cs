using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace MembershipNRoleManagement
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            if (!Roles.RoleExists("Admin"))
                Roles.CreateRole("Admin");

            if (Membership.FindUsersByName("admin@admin.com").Count == 0)
            {
                Membership.CreateUser("admin@admin.com", "abc12345");
            }

            if(!Roles.IsUserInRole("admin@admin.com", "Admin"))
                Roles.AddUserToRole("admin@admin.com", "Admin");
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

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}