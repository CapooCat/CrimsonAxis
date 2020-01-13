using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace CrimsonAxis
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //rpt_Recent.DataSource = GuildBlogBUS.BaiMoiNhat();
            //rpt_Recent.DataBind();
        }

        protected void ReCountUser_Tick(object sender, EventArgs e)
        {
            int currentNumberOfUsers = Global.CurrentNumberOfUsers;
            UserCount.Text = "Đang Online: " + currentNumberOfUsers.ToString();
        }
    }
}