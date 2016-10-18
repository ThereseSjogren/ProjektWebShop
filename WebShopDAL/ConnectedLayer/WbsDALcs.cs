using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebShopDAL.Models;
using System.Data.SqlClient;

namespace WebShopDAL.ConnectedLayer
{
    public class WbsDAL
    {
        private SqlConnection _sqlConnection = null;


        public void OpenConnection(string connectionString)
        {
            _sqlConnection = new SqlConnection { ConnectionString = connectionString };
            _sqlConnection.Open();
        }
        public void CloseConnection()
        {
            _sqlConnection.Close();
        }

        //public void InsertProduct(Product p)
        //{
        //    string sql = $"Insert into Product (ProductID, ProductName, Category, Size) Values ('{p.ProductID}', '{p.ProductName}', '{p.PriceUnit}', '{p.Color}', '{p.Size}', '{p.Stock}', '{p.CategoryID}')";

        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}

        public void DeleteProduct(int id)
        {
            string sql = $"Delete from Product where ProductID = {id}";
        }
        public void UpdateProduct()
        {

        }

        public void InsertOrder()//TODO: Need more attributes from Order table
        {
            string sql = $"Insert into Order (OrderDate,DeliveryDate, CustomerID) Values ('????????')";//TODO

            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                cmd.ExecuteNonQuery();
            }
        }


        //public List<Product> AddToCustomerBasket(int id)
        //{
        //    string sql = $""
        //    List<Product> ListOfCustomerBasket = new List<Product>();
        //    using (resource)
        //    {

        //    }
        //}

        public List<Product> GetProducts()
        {
            List<Product> lsAllProduct = new List<Product>();
            string sql = $"select * from tblProduct";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader _sqlDtReader = cmd.ExecuteReader();
                while (_sqlDtReader.Read())
                {
                    int productID = (int)_sqlDtReader["ProductID"];
                    string productName = (string)_sqlDtReader["ProductName"];
                    int priceUnit = (int)_sqlDtReader["PriceUnit"];
                    string description = (string)_sqlDtReader["Description"];
                    string color = (string)_sqlDtReader["Color"];
                    string size = (string)_sqlDtReader["Size"];
                    int stock = (int)_sqlDtReader["Stock"];
                    int categoryID = (int)_sqlDtReader["CategoryID"];

                    lsAllProduct.Add(new Product(productID, productName, priceUnit, description, color, size, stock, categoryID));
                }
                _sqlDtReader.Close();
               
            }
            return lsAllProduct;
        }


    }
}
