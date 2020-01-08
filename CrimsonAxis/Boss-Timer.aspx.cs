using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BUS;
using DTO;

namespace CrimsonAxis
{
    public partial class Boss_Timer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }

        public static DateTime ConvertToLastDayOfMonth(DateTime date)
        {
            return new DateTime(date.Year, date.Month, DateTime.DaysInMonth(date.Year, date.Month));
        }

        public static DateTime MoveNextDay(DateTime date,int Hour,int Min,int Second)
        {
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

        public static DateTime GetThisDay(int Hour, int Min, int Second)
        {
            DateTime Now =TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
            return new DateTime(Now.Year, Now.Month, Now.Day, Hour, Min, Second);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Store1.Text == "" && Store2.Text == "")
            {
                int TotalRow = 0;
                int RowCout = 0;
                DataTable TotalTime;
                DataTable BossData;
                if (Store3.Text != "")
                {
                    DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                    if (Now.Month == 12 && Now.Day == ConvertToLastDayOfMonth(Now).Day)
                    {
                        Now = new DateTime((Now.Year) + 1, 1, 1, Now.Hour, Now.Minute, Now.Second);
                    }
                    else if (Now.Day == ConvertToLastDayOfMonth(Now).Day)
                    {
                        Now = new DateTime(Now.Year, (Now.Month) + 1, 1, Now.Hour, Now.Minute, Now.Second);
                    }
                    else
                    {
                        Now = new DateTime(Now.Year, Now.Month, (Now.Day) + 1, Now.Hour, Now.Minute, Now.Second);
                    }
                    TotalTime = WorldBossBUS.GetTotal(Now);
                    foreach (DataRow row in TotalTime.Rows)
                    {
                        TotalRow++;
                    }
                    BossData = WorldBossBUS.GetTime(Now);
                    foreach (DataRow row in BossData.Rows)
                    {
                        RowCout++;
                    }
                }
                else
                {
                    TotalTime = WorldBossBUS.GetTotal(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
                    foreach (DataRow row in TotalTime.Rows)
                    {
                        TotalRow++;
                    }


                    BossData = WorldBossBUS.GetTime(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
                    foreach (DataRow row in BossData.Rows)
                    {
                        RowCout++;
                    }
                }


                if (RowCout == 2)
                {
                    Store1.Text = BossData.Rows[0][0].ToString();
                    BossName.Text = BossData.Rows[0][1].ToString();
                    AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                    Store2.Text = BossData.Rows[1][0].ToString();
                    BossName2.Text = BossData.Rows[1][1].ToString();
                    AnhWorldBoss2.ImageUrl = BossData.Rows[1][2].ToString();
                    BossName3.Visible = false;
                    BossName4.Visible = false;
                    AnhWorldBoss3.Visible = false;
                    AnhWorldBoss4.Visible = false;
                    //Set Current Day to Next Day
                    for (int i = 0; i < TotalRow; i++)
                    {
                        if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == TotalRow - 1)
                        {
                            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                            DateTime Next = DateTime.Parse(BossData.Rows[1][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                            int Min = Next.Minute;
                            int Hour = Next.Hour;
                            int Second = Next.Second;
                            Next = MoveNextDay(Now, Hour, Min, Second);
                            Store2.Text = Next.ToString();
                        }
                        if (Store3.Text != "")
                        {
                            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                            DateTime Next = DateTime.Parse(BossData.Rows[0][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                            int Min = Next.Minute;
                            int Hour = Next.Hour;
                            int Second = Next.Second;
                            Next = MoveNextDay(Now, Hour, Min, Second);
                            Store1.Text = Next.ToString();
                        }
                    }
                } else if (RowCout == 3)
                {
                    //If first "Time" row equal to second "Time" row then Load 2 upcoming Boss and 1 Boss after
                    if (BossData.Rows[0][0].ToString() == BossData.Rows[1][0].ToString())
                    {
                        Store1.Text = BossData.Rows[0][0].ToString();
                        BossName.Text = BossData.Rows[0][1].ToString();
                        AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                        Store2.Text = BossData.Rows[2][0].ToString();
                        BossName2.Text = BossData.Rows[2][1].ToString();
                        AnhWorldBoss2.ImageUrl = BossData.Rows[2][2].ToString();
                        AnhWorldBoss3.Visible = true;
                        BossName3.Visible = true;
                        AnhWorldBoss4.Visible = false;
                        BossName4.Visible = false;
                        AnhWorldBoss3.ImageUrl = BossData.Rows[1][2].ToString();
                        BossName3.Text = BossData.Rows[1][1].ToString();
                        //Set Current Day to Next Day
                        for (int i = 0; i < TotalRow; i++)
                        {
                            if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == TotalRow-1)
                            {
                                DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                                DateTime Next = DateTime.Parse(BossData.Rows[2][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                                int Min = Next.Minute;
                                int Hour = Next.Hour;
                                int Second = Next.Second;
                                Next = MoveNextDay(Now, Hour, Min, Second);
                                Store2.Text = Next.ToString();
                            }
                            if(Store3.Text != "")
                            {
                                DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                                DateTime Next = DateTime.Parse(BossData.Rows[0][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                                int Min = Next.Minute;
                                int Hour = Next.Hour;
                                int Second = Next.Second;
                                Next = MoveNextDay(Now, Hour, Min, Second);
                                Store1.Text = Next.ToString();
                            }
                        }
                    }
                    //If second "Time" row equal to third "Time" row then Load 1 upcoming Boss and 2 Boss after
                    if (BossData.Rows[1][0].ToString() == BossData.Rows[2][0].ToString())
                    {
                        Store1.Text = BossData.Rows[0][0].ToString();
                        BossName.Text = BossData.Rows[0][1].ToString();
                        AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                        Store2.Text = BossData.Rows[1][0].ToString();
                        BossName2.Text = BossData.Rows[1][1].ToString();
                        BossName4.Text = BossData.Rows[2][1].ToString();
                        AnhWorldBoss2.ImageUrl = BossData.Rows[1][2].ToString();
                        AnhWorldBoss4.ImageUrl = BossData.Rows[2][2].ToString();
                        AnhWorldBoss4.Visible = true;
                        AnhWorldBoss3.Visible = false;
                        BossName3.Visible = false;
                        BossName4.Visible = true;
                        //Set Current Day to Next Day
                        for (int i = 0; i < TotalRow; i++)
                        {
                            if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == TotalRow - 1)
                            {
                                DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                                DateTime Next = DateTime.Parse(BossData.Rows[1][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                                int Min = Next.Minute;
                                int Hour = Next.Hour;
                                int Second = Next.Second;
                                Next = MoveNextDay(Now, Hour, Min, Second);
                                Store2.Text = Next.ToString();
                            }
                            if (Store3.Text != "")
                            {
                                DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                                DateTime Next = DateTime.Parse(BossData.Rows[0][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                                int Min = Next.Minute;
                                int Hour = Next.Hour;
                                int Second = Next.Second;
                                Next = MoveNextDay(Now, Hour, Min, Second);
                                Store1.Text = Next.ToString();
                            }
                        }
                    }
                } else if (RowCout == 4)
                {
                    Store1.Text = BossData.Rows[0][0].ToString();
                    BossName.Text = BossData.Rows[0][1].ToString();
                    AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                    Store2.Text = BossData.Rows[2][0].ToString();
                    BossName2.Text = BossData.Rows[2][1].ToString();
                    BossName4.Text = BossData.Rows[3][1].ToString();
                    AnhWorldBoss2.ImageUrl = BossData.Rows[2][2].ToString();
                    AnhWorldBoss3.Visible = true;
                    AnhWorldBoss4.Visible = true;
                    BossName3.Visible = true;
                    BossName4.Visible = true;
                    AnhWorldBoss4.ImageUrl = BossData.Rows[3][2].ToString();
                    AnhWorldBoss3.ImageUrl = BossData.Rows[1][2].ToString();
                    BossName3.Text = BossData.Rows[1][1].ToString();
                    //Set Current Day to Next Day
                    for (int i = 0; i < TotalRow; i++)
                    {
                        if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == TotalRow - 1)
                        {
                            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                            DateTime Next = DateTime.Parse(BossData.Rows[2][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                            int Min = Next.Minute;
                            int Hour = Next.Hour;
                            int Second = Next.Second;
                            Next = MoveNextDay(Now, Hour, Min, Second);
                            Store2.Text = Next.ToString();
                        }
                        if (Store3.Text != "")
                        {
                            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                            DateTime Next = DateTime.Parse(BossData.Rows[0][0].ToString(), System.Globalization.CultureInfo.CurrentCulture);
                            int Min = Next.Minute;
                            int Hour = Next.Hour;
                            int Second = Next.Second;
                            Next = MoveNextDay(Now, Hour, Min, Second);
                            Store1.Text = Next.ToString();
                        }
                    }
                }
            }

            string a = Store1.Text;
            string b = Store2.Text;
            DateTime End = DateTime.Parse(a, System.Globalization.CultureInfo.CurrentCulture);
            End = GetThisDay(End.Hour, End.Minute, End.Second);
            DateTime End2 = DateTime.Parse(b, System.Globalization.CultureInfo.CurrentCulture);
            End2 = GetThisDay(End2.Hour, End2.Minute, End2.Second);
            TimeSpan TimeLeft = End.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
            TimeSpan TimeLeft2 = End2.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
            
            int Total = Convert.ToInt32(TimeLeft.TotalSeconds);
            int Total2 = Convert.ToInt32(TimeLeft2.TotalSeconds);
            Timer1.Interval = 1000;

            if (Total < -30)
            {
                //Get Boss data from the next Day
                if (End2.Day != TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time").Day)
                {
                    Store1.Text = "";
                    Store2.Text = "";
                    Store3.Text = "Get";
                } else 
                {
                    Store1.Text = "";
                    Store2.Text = "";
                    Store3.Text = "";
                }
            }

            if (Total < 0)
            {
                Label1.Text = "LIVE";
                int Hour2 = Total2 / 3600;
                int Minute2 = Total2 / 60 % 60;
                int Second2 = Total2 % 60;
                string Hours2 = Hour2.ToString();
                string Minutes2 = Minute2.ToString();
                string Seconds2 = Second2.ToString();
                if (Hour2 < 10)
                    Hours2 = "0" + Hour2.ToString();
                if (Minute2 < 10)
                    Minutes2 = "0" + Minute2.ToString();
                if (Second2 < 10)
                    Seconds2 = "0" + Second2.ToString();
                Label2.Text = Hours2 + ":" + Minutes2 + ":" + Seconds2;
            }
            else
            {
                int Hour = Total / 3600;
                int Minute = Total / 60 % 60;
                int Second = Total % 60;
                string Hours = Hour.ToString();
                string Minutes = Minute.ToString();
                string Seconds = Second.ToString();
                if (Hour < 10)
                    Hours = "0" + Hour.ToString();
                if (Minute < 10)
                    Minutes = "0" + Minute.ToString();
                if (Second < 10)
                    Seconds = "0" + Second.ToString();
                Label1.Text = Hours + ":" + Minutes + ":" + Seconds;

                int Hour2 = Total2 / 3600;
                int Minute2 = Total2 / 60 % 60;
                int Second2 = Total2 % 60;
                string Hours2 = Hour2.ToString();
                string Minutes2 = Minute2.ToString();
                string Seconds2 = Second2.ToString();
                if (Hour2 < 10)
                    Hours2 = "0" + Hour2.ToString();
                if (Minute2 < 10)
                    Minutes2 = "0" + Minute2.ToString();
                if (Second2 < 10)
                    Seconds2 = "0" + Second2.ToString();
                Label2.Text = Hours2 + ":" + Minutes2 + ":" + Seconds2;
            }
        }
    }
}