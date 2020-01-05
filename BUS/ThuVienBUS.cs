using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace BUS
{
    public class ThuVienBUS
    {
        public static List<ThuVienDTO> LayDanhSachAnh()
        {
            return ThuVienDAO.LayDanhSachAnh();
        }
    }
}
