using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class LoaiGuideDAO
    {
        public static List<LoaiGuideDTO> LayDanhSachLoai()
        {
            string query = "SELECT * FROM tblLoai";
            SqlParameter[] param = new SqlParameter[0];
            DataTable Result = DataProvider.ExecuteSelectQuery(query, param);
            List<LoaiGuideDTO> lstLoai = new List<LoaiGuideDTO>();
            foreach (DataRow dr in Result.Rows)
            {
                lstLoai.Add(ConvertToDTO(dr));
            }
            return lstLoai;
        }

        public static LoaiGuideDTO ConvertToDTO(DataRow dr)
        {
            LoaiGuideDTO x = new LoaiGuideDTO();
            x.LoaiID = Convert.ToInt32(dr["LoaiID"]);
            x.TenLoai = dr["TenLoai"].ToString();
            x.Title = dr["Title"].ToString();
            x.Description = dr["Description"].ToString();
            x.Image = dr["Image"].ToString();
            return x;
        }
    }
}
