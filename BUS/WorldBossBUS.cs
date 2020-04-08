using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using DTO;

namespace BUS
{
    public class WorldBossBUS
    {
        public static DataTable GetTime(DateTime Now)
        {
            return WolrdBossDAO.GetTime(Now);
        }
        public static DataTable GetTotal(DateTime Now)
        {
            return WolrdBossDAO.GetTotal(Now);
        }
        public static List<WorldBossDTO> LichBoss()
        {
            return WolrdBossDAO.LichBoss();
        }
        public static int UpodateTotalVisitors(int i)
        {
            return WolrdBossDAO.UpdateTotalVisitors(i);
        }
        public static int GetTotalVisitors()
        {
            return WolrdBossDAO.GetTotalVisitors();
        }
    }
}
