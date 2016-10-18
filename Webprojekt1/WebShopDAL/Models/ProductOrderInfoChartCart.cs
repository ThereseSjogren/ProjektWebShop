using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebShopDAL.Models
{
    public class ProductOrderInfoChartCart
    {
        public string ImageURL { get; set; }
        public int ProductID { get; set; }
        public string ProductBrand { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public string CategoryName { get; set; }
        public decimal PriceUnit { get; set; }
        public int Quantity { get; set; }
        public int Rabatt { get; set; }
             
        
        public decimal Price { get; set; }
        public decimal TotalWithDiscount { get; set; }
        public decimal TotalWithTax { get; set; }

        

        public ProductOrderInfoChartCart()
        {

        }
        public ProductOrderInfoChartCart(string imageURL, int productID, string brand, string color, string size, string categoryName, decimal priceUnit, int quantity, int rabatt,  decimal price, decimal totalWithDiscount, decimal totalWithTax)
        {
            ImageURL = imageURL;
            ProductID = productID;
            ProductBrand = brand;
            Color = color;
            Size = size;
            CategoryName = categoryName;
            PriceUnit = priceUnit;
            Rabatt = rabatt;
            Quantity = quantity;            
            Price = Price;
            TotalWithDiscount = totalWithTax;
            TotalWithTax = totalWithTax;

        }
        
    }
}
