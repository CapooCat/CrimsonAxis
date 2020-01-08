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

        public static DateTime ConvertToLastDayOfMonth(DateTime date)
        {
            return new DateTime(date.Year, date.Month, DateTime.DaysInMonth(date.Year, date.Month));
        }
        public static DateTime GetThisDay(int Hour, int Min, int Second)
        {
            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
            return new DateTime(Now.Year, Now.Month, Now.Day, Hour, Min, Second);
        }
        public static DataTable GetTotal(DateTime Now)
        {
            int weekday = (int)Now.DayOfWeek;
            string query = "SELECT Time FROM WorldBoss WHERE WeekDay = @WeekDay";
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
            string query = "SELECT Time FROM WorldBoss WHERE WeekDay = @wEEKDAY GROUP BY Time";
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
                    
                    string query3 = "SELECT Time FROM WorldBoss WHERE WeekDay = @WEEKDAY AND TimeGroup = @TimeGroup GROUP BY Time";
                    SqlParameter[] param3 = new SqlParameter[2];
                    param3[0] = new SqlParameter("@WeekDay", weekday);
                    param3[1] = new SqlParameter("@TimeGroup", i);
                    string a = DataProvider.ExecuteSelectQuery(query3, param3).Rows[0][0].ToString();
                    DateTime End = DateTime.Parse(a, System.Globalization.CultureInfo.CurrentCulture);
                    End = GetThisDay(End.Hour, End.Minute, End.Second);
                    DateTime Current = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                    if (i == 1 && Current < Now)
                    {
                        int Min = End.Minute;
                        int Hour = End.Hour;
                        int Seconds = End.Second;
                        if(Current.Month == 12 && Current.Day == ConvertToLastDayOfMonth(Current).Day)
                        {
                            End = new DateTime((Current.Year)+1, 1, 1, Hour, Min, Seconds);
                        }
                        else if (Current.Day == ConvertToLastDayOfMonth(Current).Day)
                        {
                            End = new DateTime(Current.Year, (Current.Month)+1, 1, Hour, Min, Seconds);
                        }
                        else
                        {
                            End = new DateTime(Current.Year, Current.Month, (Current.Day) + 1, Hour, Min, Seconds);
                        }
                    }
                    TimeSpan TimeLeft = End.Subtract(Current);
                    Second = Convert.ToInt32(TimeLeft.TotalSeconds);
                    j = i;
                }
            }
            if (j == n)
            {
                string query4 = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID   AND WeekDay = @WeekDay AND TimeGroup = @TimeGroup UNION ALL SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID   AND WeekDay = @Next AND TimeGroup = 1";
                SqlParameter[] param4 = new SqlParameter[3];
                param4[0] = new SqlParameter("@WeekDay", weekday);
                if(weekday == 7)
                { weekday = 1; }
                else { weekday++; }
                param4[1] = new SqlParameter("@TimeGroup", j);
                param4[2] = new SqlParameter("@Next", weekday);
                return DataProvider.ExecuteSelectQuery(query4, param4);
            }
            else
            {
                string query1 = "SELECT Time,Name,AnhBoss FROM WorldBoss,Boss WHERE WorldBoss.BossID = Boss.BossID   AND WeekDay = @WeekDay AND (TimeGroup = @TimeGroup OR TimeGroup = @TimeGroupNext)";
                SqlParameter[] param1 = new SqlParameter[3];
                param1[0] = new SqlParameter("@WeekDay", weekday);
                param1[1] = new SqlParameter("@TimeGroup", j);
                param1[2] = new SqlParameter("@TimeGroupNext", j + 1);
                return DataProvider.ExecuteSelectQuery(query1, param1);
            }
        }
    }
}
