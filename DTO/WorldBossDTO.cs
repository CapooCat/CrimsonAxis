using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class WorldBossDTO
    {
        private string time;
        private int iD;
        private string name;
        private string anhBoss;
        private string time2;
        private string name2;
        private string anhBoss2;

        public string Time
        {
            get
            {
                return time;
            }

            set
            {
                time = value;
            }
        }

        public int ID
        {
            get
            {
                return iD;
            }

            set
            {
                iD = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string AnhBoss
        {
            get
            {
                return anhBoss;
            }

            set
            {
                anhBoss = value;
            }
        }

        public string Time2
        {
            get
            {
                return time2;
            }

            set
            {
                time2 = value;
            }
        }

        public string Name2
        {
            get
            {
                return name2;
            }

            set
            {
                name2 = value;
            }
        }

        public string AnhBoss2
        {
            get
            {
                return anhBoss2;
            }

            set
            {
                anhBoss2 = value;
            }
        }
    }
}
