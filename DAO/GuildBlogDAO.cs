using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;

namespace DAO
{
    public class GuildBlogDAO
    {
        public static List<GuildBlogDTO> LayDanhSachBlog()
        {
            string query = "SELECT ID,Blog.Title,Blog.Description,convert(varchar, DateAdded, 103) as DateAdded,Blog.Image,Link,TenLoai FROM Blog,tblLoai WHERE Loai=LoaiID";
            SqlParameter[] param = new SqlParameter[0];
            DataTable Result = DataProvider.ExecuteSelectQuery(query, param);
            List<GuildBlogDTO> lstBlog = new List<GuildBlogDTO>();
            foreach(DataRow dr in Result.Rows)
            {
                lstBlog.Add(ConvertToDTO(dr));
            }
            return lstBlog;
        }

        public static List<GuildBlogDTO> BaiMoiNhat()
        {
            string query = "SELECT TOP (3) ID,Blog.Title,Blog.Description,convert(varchar, DateAdded, 103) as DateAdded,Blog.Image,Link,TenLoai FROM Blog,tblLoai WHERE Loai=LoaiID ORDER BY convert(varchar, DateAdded, 103) DESC";
            SqlParameter[] param = new SqlParameter[0];
            DataTable Result = DataProvider.ExecuteSelectQuery(query, param);
            List<GuildBlogDTO> lstBlog = new List<GuildBlogDTO>();
            foreach (DataRow dr in Result.Rows)
            {
                lstBlog.Add(ConvertToDTO(dr));
            }
            return lstBlog;
        }

        public static GuildBlogDTO ConvertToDTO(DataRow dr)
        {
            GuildBlogDTO x = new GuildBlogDTO();
            x.ID = Convert.ToInt32(dr["ID"]);
            x.Title = dr["Title"].ToString();
            x.Description = dr["Description"].ToString();
            x.DateAdded = dr["DateAdded"].ToString();
            x.Image = dr["Image"].ToString();
            x.Link = dr["Link"].ToString();
            x.TenLoai = dr["TenLoai"].ToString();
            return x;
        }
    }
}
