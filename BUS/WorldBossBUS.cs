﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace BUS
{
    public class WorldBossBUS
    {
        public static WorldBossDTO GetTime(DateTime Now)
        {
            return WolrdBossDAO.GetTime(Now);
        }

    }
}
