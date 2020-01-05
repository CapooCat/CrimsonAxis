using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DTO
{
    public class GuildBlogDTO
    {
        private int iD;
        private string title;
        private string description;
        private string dateAdded;
        private string image;
        private int loai;
        private string link;
        private string tenLoai;

        public string Title
        {
            get
            {
                return title;
            }

            set
            {
                title = value;
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

        public string Description
        {
            get
            {
                return description;
            }

            set
            {
                description = value;
            }
        }

        public string Image
        {
            get
            {
                return image;
            }

            set
            {
                image = value;
            }
        }

        public string DateAdded
        {
            get
            {
                return dateAdded;
            }

            set
            {
                dateAdded = value;
            }
        }

        public int Loai
        {
            get
            {
                return loai;
            }

            set
            {
                loai = value;
            }
        }

        public string Link
        {
            get
            {
                return link;
            }

            set
            {
                link = value;
            }
        }

        public string TenLoai
        {
            get
            {
                return tenLoai;
            }

            set
            {
                tenLoai = value;
            }
        }

        public GuildBlogDTO()
        {
            TenLoai = null;
            Link = null;
        }
    }
}
