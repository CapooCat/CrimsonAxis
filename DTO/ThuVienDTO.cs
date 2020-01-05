using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DTO
{
    public class ThuVienDTO
    {
        private string image;
        private string imageID;
        private string code = "background-image: url(";
        private string end = ");";

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

        public string ImageID
        {
            get
            {
                return imageID;
            }

            set
            {
                imageID = value;
            }
        }

        public string End
        {
            get
            {
                return end;
            }

            set
            {
                end = value;
            }
        }

        public string Code
        {
            get
            {
                return code;
            }

            set
            {
                code = value;
            }
        }
    }
}
