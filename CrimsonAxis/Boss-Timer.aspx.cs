using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Store1.Text == "" && Store2.Text == "")
            {
                WorldBossDTO Tim = WorldBossBUS.GetTime(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
                Store1.Text = Tim.Time;
                BossName.Text = Tim.Name;
                AnhWorldBoss.ImageUrl = Tim.AnhBoss;
                After.Text = "Boss kế: ";
                Store2.Text = Tim.Time2;
                BossName2.Text = Tim.Name2;
                AnhWorldBoss2.ImageUrl = Tim.AnhBoss2;
            }
            string a = Store1.Text;
            string b = Store2.Text;
            DateTime End = DateTime.Parse(a, System.Globalization.CultureInfo.CurrentCulture);
            DateTime End2 = DateTime.Parse(b, System.Globalization.CultureInfo.CurrentCulture);
            TimeSpan TimeLeft = End.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
            TimeSpan TimeLeft2 = End2.Subtract(TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "SE Asia Standard Time"));
            int Total = Convert.ToInt32(TimeLeft.TotalSeconds);
            int Total2 = Convert.ToInt32(TimeLeft2.TotalSeconds);
            if (Total < -30)
            {
                Store1.Text = "";
                Store2.Text = "";
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