using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebShopDAL.Models;
using WebShopDAL.ConnectedLayer;


namespace WebShopDAL.Models
{
    public class CartItem
    {
        public string ItemID { get; set; }
        public string CartID { get; set; }
        
        public int Quantity { get; set; }
        public System.DateTime DateCreated  { get; set; }
        public int ProductID { get; set; }

        public Product Product { get; set; }
    }
}
