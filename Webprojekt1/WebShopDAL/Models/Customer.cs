using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebShopDAL.Models
{
    public class Customer
    {
        public int CustomerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ZipCode { get; set; }
        public int RabattID { get; set; }

        public Customer(int customerID, string firstName, string lastName, string address, string email, string userName, string password, string zipcode, int rabattID)
        {
            CustomerID = customerID;
            FirstName = firstName;
            LastName = lastName;
            Address = address;
            Email = email;
            UserName = userName;
            Password = password;
            ZipCode = zipcode;
            RabattID = rabattID;

        }

    }
}
