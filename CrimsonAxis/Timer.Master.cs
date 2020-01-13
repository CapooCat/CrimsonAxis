using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimsonAxis
{
    public partial class Timer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ReCountUser_Tick(object sender, EventArgs e)
        {
            int currentNumberOfUsers = Global.CurrentNumberOfUsers;
            UserCount.Text = "Đang Online: " + currentNumberOfUsers.ToString();
        }
    }
}