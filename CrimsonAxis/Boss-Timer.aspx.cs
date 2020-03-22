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
                if (Request.Cookies["check"] != null)
                {
                    chk_01min.Checked = Request.Cookies["check"].Values["01min"] != "False" ? true : false;
                    chk_05min.Checked = Request.Cookies["check"].Values["05min"] != "False" ? true : false;
                    chk_15min.Checked = Request.Cookies["check"].Values["15min"] != "False" ? true : false;
                    chk_30min.Checked = Request.Cookies["check"].Values["30min"] != "False" ? true : false;
                    chk_live.Checked = Request.Cookies["check"].Values["Live"] != "False" ? true : false;

                    chk_Kzarka.Checked = Request.Cookies["check"].Values["Kzarka"] != "False" ? true : false;
                    chk_Garmoth.Checked = Request.Cookies["check"].Values["Garmoth"] != "False" ? true : false;
                    chk_Nouver.Checked = Request.Cookies["check"].Values["Nouver"] != "False" ? true : false;
                    chk_Karanda.Checked = Request.Cookies["check"].Values["Karanda"] != "False" ? true : false;

                    chk_Offin.Checked = Request.Cookies["check"].Values["Offin"] != "False" ? true : false;
                    chk_Kutum.Checked = Request.Cookies["check"].Values["Kutum"] != "False" ? true : false;
                    chk_Quint_Muraka.Checked = Request.Cookies["check"].Values["Quint"] != "False" ? true : false;
                    chk_Vell.Checked = Request.Cookies["check"].Values["Vell"] != "False" ? true : false;
                }

                //Load Lịch Boss
                rpt_LichBoss.DataSource = WorldBossBUS.LichBoss();
                rpt_LichBoss.DataBind();
                int TotalRow = 0;
                DataTable TotalTime = WorldBossBUS.GetTotal(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
                foreach (DataRow row in TotalTime.Rows)
                {
                    TotalRow++;
                }
                DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
                int Day = (int)Now.DayOfWeek;
                if(Day == 0)
                {
                    Day = 7;
                }
                DateTime A = GetThisDay("00:30:00");
                DateTime B = GetThisDay("06:00:00");
                DateTime C = GetThisDay("10:00:00");
                DateTime D = GetThisDay("14:00:00");
                DateTime E = GetThisDay("15:00:00");
                DateTime F = GetThisDay("19:00:00");
                DateTime Y = GetThisDay("23:30:00");
                RepeaterItem item = rpt_LichBoss.Items[Day-1];
                
                    if (GetThisDay(TotalTime.Rows[TotalRow-1][0].ToString()) < Now && Now < GetThisDay("23:59:59"))
                    {
                        if (Now.Month == 12 && Now.Day == ConvertToLastDayOfMonth(Now).Day)
                        {
                            Now = new DateTime((Now.Year) + 1, 1, 1, 0, 0, 0);
                        }
                        else if (Now.Day == ConvertToLastDayOfMonth(Now).Day)
                        {
                            Now = new DateTime(Now.Year, (Now.Month) + 1, 1, 0, 0, 0);
                        }
                        else
                        {
                            Now = new DateTime(Now.Year, Now.Month, (Now.Day) + 1, 0, 0, 0);
                        }
                        A = MoveNextDay(A.Hour, A.Minute, A.Second);
                        B = MoveNextDay(B.Hour, B.Minute, B.Second);
                        C = MoveNextDay(C.Hour, C.Minute, C.Second);
                        D = MoveNextDay(D.Hour, D.Minute, D.Second);
                        E = MoveNextDay(E.Hour, E.Minute, E.Second);
                        F = MoveNextDay(F.Hour, F.Minute, F.Second);
                        Y = MoveNextDay(Y.Hour, Y.Minute, Y.Second);
                    Day = (int)Now.DayOfWeek;
                    if (Day == 0)
                    {
                        Day = 7;
                    }
                    item = rpt_LichBoss.Items[Day-1];
                }

                Label Boss1 = item.FindControl("txt_BossTime1") as Label;
                Label Boss2 = item.FindControl("txt_BossTime2") as Label;
                Label Boss3 = item.FindControl("txt_BossTime3") as Label;
                Label Boss4 = item.FindControl("txt_BossTime4") as Label;
                Label Boss5 = item.FindControl("txt_BossTime5") as Label;
                Label Boss6 = item.FindControl("txt_BossTime6") as Label;
                Label Boss7 = item.FindControl("txt_BossTime7") as Label;

                Label lab = item.FindControl("txt_Thu") as Label;
                lab.CssClass = "GoLiveGlow";

                if (Now < A && Boss1.Text != string.Empty)
                {
                    Boss1.CssClass = "GoLiveGlow";
                }
                else if (Now < B && Boss2.Text != string.Empty)
                {
                    Boss2.CssClass = "GoLiveGlow";
                }
                else if (Now < C && Boss3.Text != string.Empty)
                {
                    Boss3.CssClass = "GoLiveGlow";
                }
                else if (Now < D && Boss4.Text != string.Empty)
                {
                    Boss4.CssClass = "GoLiveGlow";
                }
                else if (Now < E && Boss5.Text != string.Empty)
                {
                    Boss5.CssClass = "GoLiveGlow";
                }
                else if (Now < F && Boss6.Text != string.Empty)
                {
                    Boss6.CssClass = "GoLiveGlow";
                }
                else if (Now < Y && Boss7.Text != string.Empty)
                {
                    Boss7.CssClass = "GoLiveGlow";
                }
            }
        }


        //Save Cookie checkbox
        protected void Save(Object sender, EventArgs args)
        {
            HttpCookie check = new HttpCookie("check");
                check.Values["01min"] = chk_01min.Checked.ToString();
                check.Values["05min"] = chk_05min.Checked.ToString();
                check.Values["15min"] = chk_15min.Checked.ToString();
                check.Values["30min"] = chk_30min.Checked.ToString();
                check.Values["Live"] = chk_live.Checked.ToString();
                check.Values["Kzarka"] = chk_Kzarka.Checked.ToString();
                check.Values["Garmoth"] = chk_Garmoth.Checked.ToString();
                check.Values["Nouver"] = chk_Nouver.Checked.ToString();
                check.Values["Karanda"] = chk_Karanda.Checked.ToString();
                check.Values["Offin"] = chk_Offin.Checked.ToString();
                check.Values["Kutum"] = chk_Kutum.Checked.ToString();
                check.Values["Quint"] = chk_Quint_Muraka.Checked.ToString();
                check.Values["Vell"] = chk_Vell.Checked.ToString();
            check.Expires = DateTime.UtcNow.AddDays(365);
            Response.Cookies.Add(check);
        }

        public static String ConvertSecondToClock(int Total)
        {
            int Hour = Total / 3600;
            int Minute = Total / 60 % 60;
            int Second = Total % 60;
            string Hours = Hour.ToString();
            string Minutes = Minute.ToString();
            string Seconds = Second.ToString();
            if (Hour < 10 && Hour > -10)
                Hours = "0" + Hour.ToString();
            if (Minute < 10 && Minute > -10)
                Minutes = "0" + Minute.ToString();
            if (Second < 10 && Second > -10)
                Seconds = "0" + Second.ToString();
            string x = Hours + ":" + Minutes + ":" + Seconds;
            return x;
        }
        

        public static DateTime ConvertToLastDayOfMonth(DateTime date)
        {
            return new DateTime(date.Year, date.Month, DateTime.DaysInMonth(date.Year, date.Month));
        }

        public static int GetValidImperialTimeLine(DateTime date)
        {

            TimeSpan TimeLeft = date.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
            while(Convert.ToInt32(TimeLeft.TotalSeconds) <= 0)
            {
                string Hour = (date.Hour + 4).ToString();
                if(date.Hour + 4 < 10)
                {
                    date = GetThisDay("0" + Hour + ":00:00");
                    TimeLeft = GetThisDay("0"+ Hour + ":00:00").Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
                } else
                {
                    date = GetThisDay(Hour + ":00:00");
                    TimeLeft = GetThisDay(Hour + ":00:00").Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
                }
            }
            return Convert.ToInt32(TimeLeft.TotalSeconds);
        }

        public static DateTime MoveNextDay(int Hour,int Min,int Second)
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

        public static DateTime GetThisDay(string Time)
        {
            DateTime Now = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time");
            DateTime Next = DateTime.Parse(Time, System.Globalization.CultureInfo.CurrentCulture);
            return new DateTime(Now.Year, Now.Month, Now.Day, Next.Hour, Next.Minute, Next.Second);
        }
        public static String GetImperialTradeTime()
        {
            DateTime FirstTimeLine = GetThisDay("00:00:00");
            return ConvertSecondToClock(GetValidImperialTimeLine(FirstTimeLine));
        }


        protected void Timer1_Tick(object sender, EventArgs e)
        {
            TimeNow.Text = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time").ToString();
            TimeNow24h.Text = "(" + TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time").ToString("HH:mm:ss") + ")";
            ImperialTrade.Text = GetImperialTradeTime();
            Bartering.Text = GetImperialTradeTime();

            if (Store1.Text == string.Empty && Store2.Text == string.Empty)
            {
                int TotalRow = 0;
                int RowCout = 0;
                DataTable TotalTime;
                DataTable BossData;
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


                if (RowCout == 2)
                {
                    Store1.Text = GetThisDay(BossData.Rows[0][0].ToString()).ToString();
                    BossName.Text = BossData.Rows[0][1].ToString();
                    AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                    Store2.Text = GetThisDay(BossData.Rows[1][0].ToString()).ToString();
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
                            DateTime Next = GetThisDay(BossData.Rows[1][0].ToString());
                            Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                            Store2.Text = Next.ToString();
                        } else if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == 0 && TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time") > GetThisDay(BossData.Rows[0][0].ToString()))
                        {
                                DateTime Next = GetThisDay(BossData.Rows[0][0].ToString());
                                Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                                Store1.Text = Next.ToString();
                                DateTime Next1 = GetThisDay(BossData.Rows[1][0].ToString());
                                Next1 = MoveNextDay(Next1.Hour, Next1.Minute, Next1.Second);
                                Store2.Text = Next1.ToString();
                        }
                    }
                } else if (RowCout == 3)
                {
                    //If first "Time" row equal to second "Time" row then Load 2 upcoming Boss and 1 Boss after
                    if (BossData.Rows[0][0].ToString() == BossData.Rows[1][0].ToString())
                    {
                        Store1.Text = GetThisDay(BossData.Rows[0][0].ToString()).ToString();
                        BossName.Text = BossData.Rows[0][1].ToString();
                        AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                        Store2.Text = GetThisDay(BossData.Rows[2][0].ToString()).ToString();
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
                                DateTime Next = GetThisDay(BossData.Rows[2][0].ToString());
                                Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                                Store2.Text = Next.ToString();
                            }
                            else if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == 0 && TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time") > GetThisDay(BossData.Rows[0][0].ToString()))
                            {
                                DateTime Next = GetThisDay(BossData.Rows[0][0].ToString());
                                Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                                Store1.Text = Next.ToString();
                                DateTime Next1 = GetThisDay(BossData.Rows[2][0].ToString());
                                Next1 = MoveNextDay(Next1.Hour, Next1.Minute, Next1.Second);
                                Store2.Text = Next1.ToString();
                            }
                        }
                    }
                    //If second "Time" row equal to third "Time" row then Load 1 upcoming Boss and 2 Boss after
                    if (BossData.Rows[1][0].ToString() == BossData.Rows[2][0].ToString())
                    {
                        Store1.Text = GetThisDay(BossData.Rows[0][0].ToString()).ToString();
                        BossName.Text = BossData.Rows[0][1].ToString();
                        AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                        Store2.Text = GetThisDay(BossData.Rows[1][0].ToString()).ToString();
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
                                DateTime Next = GetThisDay(BossData.Rows[1][0].ToString());
                                Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                                Store2.Text = Next.ToString();
                            }
                            else if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == 0 && TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time") > GetThisDay(BossData.Rows[0][0].ToString()))
                            {
                                DateTime Next = GetThisDay(BossData.Rows[0][0].ToString());
                                Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                                Store1.Text = Next.ToString();
                                DateTime Next1 = GetThisDay(BossData.Rows[1][0].ToString());
                                Next1 = MoveNextDay(Next1.Hour, Next1.Minute, Next1.Second);
                                Store2.Text = Next1.ToString();
                            }
                        }
                    }
                } else if (RowCout == 4)
                {
                    Store1.Text = GetThisDay(BossData.Rows[0][0].ToString()).ToString();
                    BossName.Text = BossData.Rows[0][1].ToString();
                    AnhWorldBoss.ImageUrl = BossData.Rows[0][2].ToString();
                    Store2.Text = GetThisDay(BossData.Rows[2][0].ToString()).ToString();
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
                            DateTime Next = GetThisDay(BossData.Rows[2][0].ToString());
                            Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                            Store2.Text = Next.ToString();
                        }
                        else if (TotalTime.Rows[i][0].ToString() == BossData.Rows[0][0].ToString() && i == 0 && TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time") > GetThisDay(BossData.Rows[0][0].ToString()))
                        {
                            DateTime Next = GetThisDay(BossData.Rows[0][0].ToString());
                            Next = MoveNextDay(Next.Hour, Next.Minute, Next.Second);
                            Store1.Text = Next.ToString();
                            DateTime Next1 = GetThisDay(BossData.Rows[2][0].ToString());
                            Next1 = MoveNextDay(Next1.Hour, Next1.Minute, Next1.Second);
                            Store2.Text = Next1.ToString();
                        }
                    }
                }
                
            }
            string a = Store1.Text;
            string b = Store2.Text;
            DateTime End = DateTime.Parse(a, System.Globalization.CultureInfo.CurrentCulture);
            DateTime End2 = DateTime.Parse(b, System.Globalization.CultureInfo.CurrentCulture);
            TimeSpan TimeLeft = End.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
            TimeSpan TimeLeft2 = End2.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));

            int Total = Convert.ToInt32(TimeLeft.TotalSeconds);
            int Total2 = Convert.ToInt32(TimeLeft2.TotalSeconds);
            Timer1.Interval = 1000;

            string[] CheckedBoss = new string[0];
            
            if (chk_Kzarka.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Kzarka";
            } if(chk_Kutum.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Kutum";
            } if(chk_Nouver.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Nouver";
            } if(chk_Karanda.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Karanda";
            } if(chk_Garmoth.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Garmoth";
            } if(chk_Quint_Muraka.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Quint";
            } if(chk_Offin.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Offin";
            } if(chk_Vell.Checked)
            {
                Array.Resize(ref CheckedBoss, CheckedBoss.Length + 1);
                CheckedBoss[CheckedBoss.Length - 1] = "Vell";
            }
            for (int y = 0; y < CheckedBoss.Length; y++)
            {
                if (CheckedBoss[y] == BossName.Text || CheckedBoss[y] == BossName3.Text)
                {
                    if (Total <= 1800 && Total > 1799 && chk_30min.Checked)
                    {
                        int Number = 0;
                        for (int f = 0; f < CheckedBoss.Length; f++)
                        {
                            if (CheckedBoss[f] == BossName.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName.Text, BossName.Text + "();", true);
                                Number++;
                            }
                            else if (CheckedBoss[f] == BossName3.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName3.Text, BossName3.Text + "();", true);
                                Number++;
                            }
                        }
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "MIN30", "MIN30("+Number.ToString()+");", true);
                    }
                    if (Total <= 900 && Total > 899 && chk_15min.Checked)
                    {
                        int Number = 0;
                        for (int f = 0; f < CheckedBoss.Length; f++)
                        {
                            if (CheckedBoss[f] == BossName.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName.Text, BossName.Text + "();", true);
                                Number++;
                            }
                            else if (CheckedBoss[f] == BossName3.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName3.Text, BossName3.Text + "();", true);
                                Number++;
                            }
                        }
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "MIN15", "MIN15(" + Number.ToString() + ");", true);
                    }
                    if (Total <= 300 && Total > 299 && chk_05min.Checked)
                    {
                        int Number = 0;
                        for (int f = 0; f < CheckedBoss.Length; f++)
                        {
                            if (CheckedBoss[f] == BossName.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName.Text, BossName.Text + "();", true);
                                Number++;
                            }
                            else if (CheckedBoss[f] == BossName3.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName3.Text, BossName3.Text + "();", true);
                                Number++;
                            }
                        }
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "MIN5", "MIN5(" + Number.ToString() + ");", true);
                    }
                    if (Total <= 60 && Total > 59 && chk_01min.Checked)
                    {
                        int Number = 0;
                        for (int f = 0; f < CheckedBoss.Length; f++)
                        {
                            if (CheckedBoss[f] == BossName.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName.Text, BossName.Text + "();", true);
                                Number++;
                            }
                            else if (CheckedBoss[f] == BossName3.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName3.Text, BossName3.Text + "();", true);
                                Number++;
                            }
                        }
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "MIN1", "MIN1(" + Number.ToString() + ");", true);
                    }
                    if (Total <= 0 && Total > -1 && chk_live.Checked)
                    {
                        int Number = 0;
                        for (int f = 0; f < CheckedBoss.Length; f++)
                        {
                            if (CheckedBoss[f] == BossName.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName.Text, BossName.Text + "();", true);
                                Number++;
                            }
                            else if (CheckedBoss[f] == BossName3.Text)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, GetType(), BossName3.Text, BossName3.Text + "();", true);
                                Number++;
                            }
                        }
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "SUMMON", "SUMMON(" + Number.ToString() + ");", true);
                    }
                    break;
                }
            }




            if (Total < 300)
            {
                Label1.Attributes.Add("style", "Color: #fff;");
                Label1.CssClass = "glow";
                BossName.CssClass = "col-md-6 glow";
                BossName3.CssClass = "col-md-6 glow";
            }
            else
            {
                Label1.Attributes.Add("style", "Color: #fff;");
                Label1.CssClass = "";
                BossName.CssClass = "col-md-6";
                BossName3.CssClass = "col-md-6";
            }

            if (Total < -60)
            {
                //Get Boss data from the next Day
                if (End2.Day != TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time").Day)
                {
                    Store1.Text = "";
                    Store2.Text = "";
                } else 
                {
                    Store1.Text = "";
                    Store2.Text = "";
                    Response.Redirect("Boss-Timer.aspx");
                }
                
            }

            if (Total < 0)
            {
                Label1.CssClass = "GoLiveGlow";
                BossName.CssClass = "col-md-6 GoLiveGlow";
                BossName3.CssClass = "col-md-6 GoLiveGlow";
                Label1.Text = "LIVE";
                Label2.Text = ConvertSecondToClock(Total2);
            }
            else
            {
                Label1.Text = ConvertSecondToClock(Total);
                Label2.Text = ConvertSecondToClock(Total2);
                Imperial.Text = ConvertSecondToClock(Total);
                Night.Text = ConvertSecondToClock(Total);
            }
        }
    }
}