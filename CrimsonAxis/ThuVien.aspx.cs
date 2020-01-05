using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace CrimsonAxis
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt_Anh.DataSource = ThuVienBUS.LayDanhSachAnh();
            rpt_Anh.DataBind();
            rpt_LoadAnh.DataSource = ThuVienBUS.LayDanhSachAnh();
            rpt_LoadAnh.DataBind();
        }
    }
}