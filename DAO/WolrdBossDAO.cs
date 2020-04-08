using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;
using System.Collections;

namespace DAO
{
    public class WolrdBossDAO
    {
        public static DateTime MoveNextDay(int Hour, int Min, int Second)
        {
            DateTime date = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
            if (date.Month == 12 && date.Day == ConvertToLastDayOfMonth(date).Day)
            {
                return new DateTime((date.Year) + 1, 1, 1, Hour, Min, Second);
            }
            else if (date.Day == ConvertToLastDayOfMonth(date).Day)
            {
                return new DateTime(date.Year, (date.Month) + 1, 1, Hour, Min, Second);
            }
            else
            {
                return new DateTime(date.Year, date.Month, (date.Day) + 1, Hour, Min, Second);
            }
        }
        public static DateTime ConvertToLastDayOfMonth(DateTime date)
        {
            return new DateTime(date.Year, date.Month, DateTime.DaysInMonth(date.Year, date.Month));
        }
        public static DateTime GetThisDay(string Time)
        {
            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
            DateTime Next = DateTime.Parse(Time, System.Globalization.CultureInfo.CurrentCulture);
            return new DateTime(Now.Year, Now.Month, Now.Day, Next.Hour, Next.Minute, Next.Second);
        }

        public static DataTable GetAllBossInDay(int weekday)
        {
            string query = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID AND WeekDay = @WeekDay ORDER BY TimeGroup ASC";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@WeekDay", weekday);
            return DataProvider.ExecuteSelectQuery(query, param);
        }

        public static int UpdateTotalVisitors(int i)
        {
            string query = "UPDATE TotalVisitors SET VisitorNumber = VisitorNumber + @i";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@i", i);
            return DataProvider.ExecuteUpdateQuery(query, param);
        }

        public static int GetTotalVisitors()
        {
            string query = "SELECT VisitorNumber FROM TotalVisitors";
            SqlParameter[] param = new SqlParameter[1];
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query).Rows[0][0]);
        }

        public static DataTable GetTotal(DateTime Now)
        {
            int weekday = (int)Now.DayOfWeek;
            if (weekday == 0)
            {
                weekday = 7;
            }
            string query = "SELECT Time FROM WorldBoss WHERE WeekDay = @WeekDay GROUP BY Time";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@WeekDay", weekday);
            return DataProvider.ExecuteSelectQuery(query, param);
        }
        public static DataTable GetTime(DateTime Now)
        {
            int Second = 0;
            int n = 0;
            int j = 0;
            int weekday = (int)Now.DayOfWeek;
            if(weekday == 0)
            {
                weekday = 7;
            }
            string query = "SELECT Time FROM WorldBoss WHERE WeekDay = @WEEKDAY GROUP BY Time";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@WEEKDAY", weekday);
            DataTable Result = DataProvider.ExecuteSelectQuery(query, param);
            foreach (DataRow dr in Result.Rows)
            {
                n++;
            }
            for (int i = 1; i <= n; i++)
            {
                if (Second <= 0)
                {
                    string query3 = "SELECT Time FROM WorldBoss WHERE WeekDay = @WEEKDAY AND TimeGroup = @TimeGroup GROUP BY Time ORDER BY Time ASC";
                    SqlParameter[] param3 = new SqlParameter[2];
                    param3[0] = new SqlParameter("@WeekDay", weekday);
                    param3[1] = new SqlParameter("@TimeGroup", i);
                    string a = DataProvider.ExecuteSelectQuery(query3, param3).Rows[0][0].ToString();
                    DateTime End = GetThisDay(a);
                    DateTime Current = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                    TimeSpan TimeLeft = End.Subtract(Current);
                    Second = Convert.ToInt32(TimeLeft.TotalSeconds);
                    j = i;
                }
                if (i == n && Second <= 0)
                {
                    if (weekday == 7)
                    { weekday = 1; }
                    else { weekday++; }
                    j = 1;
                }
            }
            if (j == n)
            {
                string query4 = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID   AND WeekDay = @WeekDay AND TimeGroup = @TimeGroup UNION ALL SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID  AND WeekDay = @Next AND TimeGroup = 1";
                SqlParameter[] param4 = new SqlParameter[3];
                param4[0] = new SqlParameter("@WeekDay", weekday);
                if(weekday == 7)
                { weekday = 1;}
                else { weekday++; }
                param4[1] = new SqlParameter("@TimeGroup", j);
                param4[2] = new SqlParameter("@Next", weekday);
                return DataProvider.ExecuteSelectQuery(query4, param4);
            }
            else
            {
                string query1 = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID AND WeekDay = @WeekDay AND (TimeGroup = @TimeGroup OR TimeGroup = @TimeGroupNext) Order by TimeGroup ASC";
                SqlParameter[] param1 = new SqlParameter[3];
                param1[0] = new SqlParameter("@WeekDay", weekday);
                param1[1] = new SqlParameter("@TimeGroup", j);
                param1[2] = new SqlParameter("@TimeGroupNext", j + 1);
                return DataProvider.ExecuteSelectQuery(query1, param1);
            }
        }

        public static String GetBossFromTime(DataTable AllBossInDay, string Time, int i, bool Final)
        {
            string BossTime = string.Empty;
            if (Final == false)
            {
                if (AllBossInDay.Rows[i][0].ToString() == Time && AllBossInDay.Rows[i][0].ToString() == AllBossInDay.Rows[i - 1][0].ToString())
                {
                    BossTime = AllBossInDay.Rows[i - 1][1].ToString() + " & " + AllBossInDay.Rows[i][1].ToString();
                }
                else if (AllBossInDay.Rows[i][0].ToString() == Time)
                {
                    BossTime = AllBossInDay.Rows[i][1].ToString();
                }
            } else
            {
                if (AllBossInDay.Rows[i][0].ToString() == Time)
                {
                    BossTime = AllBossInDay.Rows[i][1].ToString();
                }
            }
            return BossTime;
        }
        public static List<WorldBossDTO> LichBoss()
        {
            List<WorldBossDTO> lst = new List<WorldBossDTO>();
            DataTable table = new DataTable();
            table.Columns.Add("Thu", typeof(string));
            table.Columns.Add("BossTime1", typeof(string));
            table.Columns.Add("BossTime2", typeof(string));
            table.Columns.Add("BossTime3", typeof(string));
            table.Columns.Add("BossTime4", typeof(string));
            table.Columns.Add("BossTime5", typeof(string));
            table.Columns.Add("BossTime6", typeof(string));
            table.Columns.Add("BossTime7", typeof(string));
            string[] Time = new string[7] { "00:30:00", "06:00:00", "10:00:00", "14:00:00","15:00:00","19:00:00","23:00:00" };
            string Thu = string.Empty;
            for (int i = 1; i <= 7; i++)
            {
                string[] TableCol = new string[7] { null, null, null, null, null, null, null };
                switch (i)
                {
                    case 1: Thu = "THỨ HAI";break;
                    case 2: Thu = "THỨ BA";break;
                    case 3: Thu ="THỨ TƯ";break;
                    case 4: Thu = "THỨ NĂM";break;
                    case 5: Thu = "THỨ SÁU";break;
                    case 6: Thu = "THỨ BẢY";break;
                    case 7: Thu = "CHỦ NHẬT";break;
                }
                int TotalBoss = 0;
                DataTable AllBossInDay = GetAllBossInDay(i);
                foreach (DataRow row in AllBossInDay.Rows)
                {
                    TotalBoss++;
                }
                for (int j = 0; j < TotalBoss; j++)
                {
                    if (j == 0)
                    { 
                        for(int y = 0; y < 7; y++)
                        {
                            string Zone = (string)Time[y];
                            if (GetBossFromTime(AllBossInDay, Zone, j, true) != string.Empty)
                            {
                                TableCol[y] = (GetBossFromTime(AllBossInDay, Zone, j, true)).ToString();
                            }
                        }
                    }
                    else
                    {
                        for (int y = 0; y < 7; y++)
                        {
                            string Zone = (string)Time[y];
                            if (GetBossFromTime(AllBossInDay, Zone, j, false) != string.Empty)
                            {
                                TableCol[y] = (GetBossFromTime(AllBossInDay, Zone, j, false)).ToString();
                            }
                        }
                    }
                }
                table.Rows.Add(Thu, TableCol[0], TableCol[1], TableCol[2], TableCol[3], TableCol[4], TableCol[5], TableCol[6]);
            }
            foreach (DataRow dr in table.Rows)
            {
                lst.Add(ConvertToDTO(dr));
            }
            return lst;
        }

        public static WorldBossDTO ConvertToDTO(DataRow dr)
        {
            WorldBossDTO x = new WorldBossDTO();
            x.Thu = dr["Thu"].ToString();
            x.BossTime1 = dr["BossTime1"].ToString();
            x.BossTime2 = dr["BossTime2"].ToString();
            x.BossTime3 = dr["BossTime3"].ToString();
            x.BossTime4 = dr["BossTime4"].ToString();
            x.BossTime5 = dr["BossTime5"].ToString();
            x.BossTime6 = dr["BossTime6"].ToString();
            x.BossTime7 = dr["BossTime7"].ToString();
            return x;
        }

    }
}
