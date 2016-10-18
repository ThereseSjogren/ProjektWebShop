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
        public string ProductBrand { get; set; }
        public decimal PriceUnit { get; set; }
        public string ProductDescription { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public int Stock { get; set; }

        public int CategoryID { get; set; }
        public string ImageURL { get; set; }

        public List<Category> CategoryProductList { get; set; }
        public Product()
        {

        }
        public Product(string productBrand, string productdescription,string color, string size, string gender, string categoryname)
        {

        }

        public Product( string productBrand, decimal priceUnit, string description, string color, string size) //For every picture from products
        {
            
            this.ProductBrand = productBrand;
            this.PriceUnit = priceUnit;
            this.ProductDescription = description;
            this.Color = color;
            this.Size = size;
            

        }
        public Product(int productID, string color, string size)
        {
            ProductID = productID;
            Color = color;
            Size = size;
        }

        public Product(int productID,string productBrand,decimal priceUnit,string description, string color, string size, int stock, int categoryID, string imageURL)
        {
            ProductID = productID;
            ProductBrand = productBrand;
            this.PriceUnit = priceUnit;
            this.ProductDescription = description;
            this.Color = color;
            this.Size = size;
            this.Stock = stock;
            this.CategoryID = categoryID;
            ImageURL = imageURL;

        }

        public Product(string imageURL, int productID, string productBrand, decimal priceUnit, string productDescription, string color, string size, int stock, int categoryID)
        {
            ImageURL = imageURL;
            ProductID = productID;
            ProductBrand = productBrand;
            PriceUnit = priceUnit;
            ProductDescription = productDescription;
            Color = color;
            Size = size;
            Stock = stock;
            CategoryID = categoryID;
        }
    }
}
