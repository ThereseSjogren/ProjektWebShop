using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebShopDAL.Models
{
    public class Product
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int PriceUnit { get; set; }
        public string Description { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public decimal Stock { get; set; }

        public int CategoryID { get; set; }


        public Product(int productID,string productName,int priceUnit,string description, string color, string size, int stock, int categoryID)
        {
            this.ProductID = productID;
            this.ProductName = productName;
            this.PriceUnit = priceUnit;
            this.Description = description;
            this.Color = color;
            this.Size = size;
            this.Stock = stock;
            this.CategoryID = categoryID;

        }
    }
}
