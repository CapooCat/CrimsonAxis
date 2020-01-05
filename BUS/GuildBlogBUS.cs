using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace BUS
{
    public class GuildBlogBUS
    {
        public static List<GuildBlogDTO> LayDanhSachBlog()
        {
            return GuildBlogDAO.LayDanhSachBlog();
        }
        public static List<GuildBlogDTO> BaiMoiNhat()
        {
            return GuildBlogDAO.BaiMoiNhat();
        }
    }
}
