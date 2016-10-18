using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebShopDAL.Models
{
    public class ProductChartInfo
    {
        public int ProductID { get; set; }
        public string CategoryName { get; set; }
        public string Gender { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public int Quantity { get; set; }
        public int RabattID { get; set; }



        public ProductChartInfo(int productID, string categoryName, string gender, string color, string size, int quantity, int rabattID)
        {
            ProductID = productID;
            CategoryName = categoryName;
            Gender = gender;
            Color = color;
            Size = size;            
            Quantity = quantity;
            RabattID = rabattID;




        }

    }
}
