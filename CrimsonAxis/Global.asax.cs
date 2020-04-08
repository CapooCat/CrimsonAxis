using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using BUS;

namespace CrimsonAxis
{
    public class Global : System.Web.HttpApplication
    {
        private static int currentNumberOfUsers = 0;
        protected void Application_Start(object sender, EventArgs e)
        {
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            currentNumberOfUsers += 1;
            WorldBossBUS.UpodateTotalVisitors(1);
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError().InnerException;

            Application["Ex"] = ex;
            Response.Redirect("Boss-Timer.aspx");
        }

        protected void Session_End(object sender, EventArgs e)
        {
            currentNumberOfUsers -= 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        public static int CurrentNumberOfUsers
        {
            get
            {
                return currentNumberOfUsers;
            }
        }
    }
}