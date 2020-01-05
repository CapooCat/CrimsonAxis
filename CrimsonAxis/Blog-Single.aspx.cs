using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace CrimsonAxis
{
    public partial class Blog_Single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt_Recent.DataSource = GuildBlogBUS.BaiMoiNhat();
            rpt_Recent.DataBind();
        }
    }
}