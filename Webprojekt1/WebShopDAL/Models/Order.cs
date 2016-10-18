using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebShopDAL.Models
{
    public class Order
    {
        public int OrderID { get; set; }
        public DateTime OrderDate { get; set; }
        public DateTime DeliveryDate { get; set; }
        public int Moms { get; set; }
        public int CustomerID { get; set; }
        List<Customer> CustomersOrderList { get; set; }
        List<Customer> ProductOrdersList { get; set; }
        public int Quantity { get; set; }

    }
}
