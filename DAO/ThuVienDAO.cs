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
    public class ThuVienDAO
    {
        public static List<ThuVienDTO> LayDanhSachAnh()
        {
            string query = "SELECT * FROM ThuVien";
            SqlParameter[] param = new SqlParameter[0];
            DataTable Result = DataProvider.ExecuteSelectQuery(query, param);
            List<ThuVienDTO> lstAnh = new List<ThuVienDTO>();
            foreach (DataRow dr in Result.Rows)
            {
                lstAnh.Add(ConvertToDTO(dr));
            }
            return lstAnh;
        }

        public static ThuVienDTO ConvertToDTO(DataRow dr)
        {
            ThuVienDTO x = new ThuVienDTO();
            x.Image = dr["Image"].ToString();
            x.ImageID = dr["ImageID"].ToString();
            return x;
        }
    }
}
