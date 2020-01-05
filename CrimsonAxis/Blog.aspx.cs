using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace CrimsonAxis
{
    public partial class Blog : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                rpt_Blog.DataSource = GuildBlogBUS.LayDanhSachBlog();
                rpt_Blog.DataBind();
                rpt_Loai.DataSource = LoaiGuideBUS.LayDanhSachLoai();
                rpt_Loai.DataBind();

            }
        }
    }
}