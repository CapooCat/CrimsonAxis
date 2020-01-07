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
    public class WolrdBossDAO
    {
        public static WorldBossDTO GetTime(DateTime Now)
        {
            int Second = 0;
            int n = 0;
            int i = 1;
            int j = 0;
            int weekday = (int)Now.DayOfWeek;
            string query = "SELECT Time FROM WorldBoss WHERE WeekDay = @WEEKDAY";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@WEEKDAY", weekday);
            DataTable Result = DataProvider.ExecuteSelectQuery(query, param);
            foreach (DataRow dr in Result.Rows)
            {
                n++;
            }
            for(i = 1; i<=n; i++)
            {
                if (Second <= 0)
                {
                    string query3 = "SELECT Time FROM WorldBoss WHERE WeekDay = @WEEKDAY AND TimeGroup = @TimeGroup";
                    SqlParameter[] param3 = new SqlParameter[2];
                    param3[0] = new SqlParameter("@WeekDay", weekday);
                    param3[1] = new SqlParameter("@TimeGroup", i);
                    string a = DataProvider.ExecuteSelectQuery(query3, param3).Rows[0][0].ToString();
                    DateTime End = DateTime.Parse(a, System.Globalization.CultureInfo.CurrentCulture);
                    TimeSpan TimeLeft = End.Subtract(Now);
                    Second = Convert.ToInt32(TimeLeft.TotalSeconds);
                    j = i;
                }
            }
            string query1 = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID AND TimeGroup = @TimeGroup AND WeekDay = @WeekDay";
            SqlParameter[] param1 = new SqlParameter[2];
            param1[0] = new SqlParameter("@WeekDay", weekday);
            param1[1] = new SqlParameter("@TimeGroup", j);
            string query2 = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID AND TimeGroup = @TimeGroup AND WeekDay = @WeekDay";
            SqlParameter[] param2 = new SqlParameter[2];
            param2[0] = new SqlParameter("@WeekDay", weekday);
            param2[1] = new SqlParameter("@TimeGroup", j+1);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query1, param1).Rows[0], DataProvider.ExecuteSelectQuery(query2, param2).Rows[0]);
        }

        public static WorldBossDTO ConvertToDTO(DataRow dr,DataRow dr2)
        {
            WorldBossDTO Tim = new WorldBossDTO();
            Tim.Time = dr["Time"].ToString();
            Tim.Time2 = dr2["Time"].ToString();
            Tim.Name = dr["Name"].ToString();
            Tim.Name2 = dr2["Name"].ToString();
            Tim.AnhBoss = dr["AnhBoss"].ToString();
            Tim.AnhBoss2 = dr2["AnhBoss"].ToString();
            return Tim;
        }
    }
}
