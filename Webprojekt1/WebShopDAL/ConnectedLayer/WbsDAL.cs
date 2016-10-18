using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebShopDAL.Models;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web;
using System.Data;

namespace WebShopDAL.ConnectedLayer
{
    public class WbsDAL
    {
        private SqlConnection _sqlConnection = null;
        public List<Product> ProductList { get; set; }
        public List<Category> CategoryList { get; set; }

        public WbsDAL()
        {
            ProductList = new List<Product>();
            CategoryList = new List<Category>();
        }

        public void OpenConnection(string connectionString)
        {
            _sqlConnection = new SqlConnection { ConnectionString = connectionString };
            _sqlConnection.Open();
        }
        public void CloseConnection()
        {
            _sqlConnection.Close();
        }
        //Registrate Customer
        public void InsertCustomer(Customer c)
        {
            string sql = $"Insert into tblCustomer (FirstName, LastName, Email, Address, UserName, Password, RabattID, ZipCode) Values ({c.FirstName}, {c.LastName},{c.Email},{c.Address},{c.UserName}, {c.Password},{c.RabattID}, {c.ZipCode})";

            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                cmd.ExecuteNonQuery();
            }
        }
        public void UpdateCustomer(int id)
        {
            string sql = $"Update tblCustomer SET  Where CustomerID = {id}";

            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                cmd.ExecuteNonQuery();
            }
        }

        #region 1_AllProductSiteRequest(request for Products.aspx)
        public List<Product> GetListOfAllProducts()
        {
            List<Product> productList = new List<Product>();
            string sql = $"Select * From tblProduct";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productList.Add(new Product
                    {

                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]

                    });


                }
                reader.Close();
                reader.Dispose();
            }
            return productList;
        }
        #endregion
        #region 2_ProductInformationRequest(request for ProductInformation.aspx)
        public Product GetProductForProdIformation(int productID)
        {
            Product p = new Product();
            string sql = $"Select * From tblProduct Where ProductID = {productID}";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    p.ImageURL = (string)reader["ImageURL"];
                    p.ProductID = (int)reader["ProductID"];
                    p.ProductBrand = (string)reader["ProductBrand"];
                    p.PriceUnit = (decimal)reader["PriceUnit"];
                    p.ProductDescription = (string)reader["ProductDescription"];
                    p.Color = (string)reader["Color"];
                    p.Size = (string)reader["Size"];
                    p.Stock = (int)reader["Stock"];
                    p.CategoryID = (int)reader["CategoryID"];
                }
                reader.Close();
                reader.Dispose();
            }
            return p;
        }



        #endregion
        #region 3_FilterAllWomanCategories
        public List<Product> GetAllWoman()
        {
            List<Product> productAllWomanList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where Gender = 'Female'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productAllWomanList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productAllWomanList;
        }
        public List<Product> GetTShirtWoman()
        {
            List<Product> productTShirtWomanList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Female' AND c.CategoryName = 'T-Shirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productTShirtWomanList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productTShirtWomanList;
        }
        public List<Product> GetSweatshirtWoman()
        {
            List<Product> productSweatshirtWomanList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Female' AND c.CategoryName = 'Sweatshirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productSweatshirtWomanList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productSweatshirtWomanList;
        }
        public List<Product> GetJeansWoman()
        {
            List<Product> productJeansWomanList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Female' AND c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJeansWomanList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJeansWomanList;
        }
        public List<Product> GetJacketsWoman()
        {
            List<Product> productJacketsWomanList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Female' AND c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql,_sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJacketsWomanList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJacketsWomanList;
        }
        #endregion
        #region 4_FilterAllMenCategories
        public List<Product> GetAllMan()
        {
            List<Product> productAllManList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where Gender = 'Male'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productAllManList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productAllManList;
        }
        public List<Product> GetTShirtMan()
        {
            List<Product> productTShirtManList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Male' AND c.CategoryName = 'T-Shirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productTShirtManList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productTShirtManList;
        }
        public List<Product> GetSweatshirtMan()
        {
            List<Product> productSweatshirtManList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Male' AND c.CategoryName = 'Sweatshirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productSweatshirtManList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productSweatshirtManList;
        }
        public List<Product> GetJeansMan()
        {
            List<Product> productJeansManList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Male' AND c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJeansManList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJeansManList;
        }
        public List<Product> GetJacketsMan()
        {
            List<Product> productJacketsManList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Male' AND c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJacketsManList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJacketsManList;
        }
        #endregion
        #region 5_FilterAllChildCategories
        public List<Product> GetAllChild()
        {
            List<Product> productAllChildList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where Gender = 'Child'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productAllChildList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productAllChildList;
        }
        public List<Product> GetTShirtChild()
        {
            List<Product> productTShirtChildList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Child' AND c.CategoryName = 'T-Shirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productTShirtChildList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productTShirtChildList;
        }
        public List<Product> GetSweatshirtChild()
        {
            List<Product> productSweatshirtChildList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Child' AND c.CategoryName = 'Sweatshirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productSweatshirtChildList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productSweatshirtChildList;
        }
        public List<Product> GetJeansChild()
        {
            List<Product> productJeansChildList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Child' AND c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJeansChildList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJeansChildList;
        }
        public List<Product> GetJacketsChild()
        {
            List<Product> productJacketsChildList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.Gender = 'Child' AND c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJacketsChildList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJacketsChildList;
        }
        #endregion
        #region 6_FilterByCategory
        public List<Product> GetAllTShirt()
        {
            List<Product> productTShirtList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.CategoryName = 'T-Shirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productTShirtList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productTShirtList;
        }
        public List<Product> GetAllSweatshirt()
        {
            List<Product> productSweatshirtList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.CategoryName = 'Sweatshirt'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productSweatshirtList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productSweatshirtList;
        }
        public List<Product> GetAllJeans()
        {
            List<Product> productJeansList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.CategoryName = 'Jeans'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJeansList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJeansList;
        }
        public List<Product> GetAllJackets()
        {
            List<Product> productJacketsList = new List<Product>();
            string sql = $"Select * From tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where c.CategoryName = 'Jacket'";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productJacketsList.Add(new Product
                    {
                        ImageURL = (string)reader["ImageURL"],
                        ProductID = (int)reader["ProductID"],
                        ProductBrand = (string)reader["ProductBrand"],
                        PriceUnit = (decimal)reader["PriceUnit"],
                        ProductDescription = (string)reader["ProductDescription"],
                        Color = (string)reader["Color"],
                        Size = (string)reader["Size"],
                        Stock = (int)reader["Stock"],
                        CategoryID = (int)reader["CategoryID"]
                    });
                }

            }
            return productJacketsList;
        }
        #endregion
        #region SearchFilter
        public List<Product> GetSearchProduct(string input)
        {

            List<Product> productSearch = new List<Product>();
            //string getProduct = $"SELECT p.ProductID p.ProductBrand, op.Quantity, p.PriceUnit, o. p.FROM tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID  WHERE CategoryName= '{category}' AND Gender= '{gender}' AND Color = '{color}' AND Size = '{size}' ";
            using (SqlCommand cmd = new SqlCommand("sp_SearchField", _sqlConnection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SearchInput", input);
                

                SqlDataReader dataReader = cmd.ExecuteReader();//Here is the issue
                                                               //dataTable.Load(dataReader);
                                                               //dataReader.Close();
                                                               //dataReader.Dispose();

                while (dataReader.Read())
                {

                    productSearch.Add(new Product
                    {
                        ImageURL = (string)dataReader["ImageURL"],
                        ProductID = (int)dataReader["ProductID"],
                        ProductBrand = (string)dataReader["ProductBrand"],
                        PriceUnit = (decimal)dataReader["PriceUnit"],
                        ProductDescription = (string)dataReader["ProductDescription"],
                        Color = (string)dataReader["Color"],
                        Size = (string)dataReader["Size"],
                        Stock = (int)dataReader["Stock"],
                        CategoryID = (int)dataReader["CategoryID"]
                    });
                }
                dataReader.Close();
                dataReader.Dispose();
            }
            return productSearch;

        }
        #endregion


        #region ChartQueries
        public List<ProductOrderInfoChartCart> GetProductInfo(int productID, string category, string gender, string color, string size, int quantity, int rabattID)
        {

            List<ProductOrderInfoChartCart> productOrderInfo = new List<ProductOrderInfoChartCart>();
            //string getProduct = $"SELECT p.ProductID p.ProductBrand, op.Quantity, p.PriceUnit, o. p.FROM tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID  WHERE CategoryName= '{category}' AND Gender= '{gender}' AND Color = '{color}' AND Size = '{size}' ";
            using (SqlCommand cmd = new SqlCommand("sp_GetAllChartInfo", _sqlConnection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", productID);
                cmd.Parameters.AddWithValue("@Category", category);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Color", color);
                cmd.Parameters.AddWithValue("@Size", size);
                cmd.Parameters.AddWithValue("@Quantity", quantity);
                cmd.Parameters.AddWithValue("@RabattID", rabattID);

                SqlDataReader dataReader = cmd.ExecuteReader();//Here is the issue
                                                               //dataTable.Load(dataReader);
                                                               //dataReader.Close();
                                                               //dataReader.Dispose();

                while (dataReader.Read())
                {

                    productOrderInfo.Add(new ProductOrderInfoChartCart
                    {
                        ProductID = (int)dataReader["ProductID"],
                        ProductBrand = (string)dataReader["ProductBrand"],
                        Color = (string)dataReader["Color"],
                        Size = (string)dataReader["Size"],
                        CategoryName = (string)dataReader["CategoryName"],
                        PriceUnit = (decimal)dataReader["PriceUnit"],
                        Quantity = (int)dataReader["Quantity"],
                        Rabatt = (int)dataReader["Rabatt"],
                        Price = (decimal)dataReader["Total"],
                        TotalWithDiscount = (decimal)dataReader["Total with Discount"],
                        TotalWithTax = (decimal)dataReader["Total with Tax"]
                    });
                }
                dataReader.Close();
                dataReader.Dispose();
            }
            return productOrderInfo;

        }

        #endregion

        #region OrderProcess

        /// <summary>
        /// Order process that includes insert to order table, insert to productOrder table, check username
        /// </summary>
        /// <param name="custumerID"></param>
        /// <returns>Created order's ID</returns>
        public int InsertToOrderTbl(int custumerID)
        {

            //////////////////////////////////
            var OrderDate = DateTime.Now.Date;
            var DelivDate = OrderDate.AddDays(5).Date;
            int moms = 25;
            int createdOrderID = 0;
            //////////////////////////////////
            string sql = @"INSERT INTO tblOrder (OrderDate,DeliveryDate, Moms, CustomerID) OUTPUT INSERTED.OrderID VALUES (@OrderDate,@DeliveryDate, @moms, @custumerID)";
            using (SqlCommand _sqlCommand = new SqlCommand(sql, _sqlConnection))
            {


                _sqlCommand.Parameters.AddWithValue("@OrderDate", OrderDate);
                _sqlCommand.Parameters.AddWithValue("@DeliveryDate", DelivDate);
                _sqlCommand.Parameters.AddWithValue("@moms", moms);
                _sqlCommand.Parameters.AddWithValue("@custumerID", custumerID);
                createdOrderID = (int)_sqlCommand.ExecuteScalar();
            }
            return createdOrderID;

        }



        /// <summary>
        /// Calls InsertToOrderTbl(customerID) and creates a new row in ProductOrder table
        /// </summary>
        /// <param name="productID"></param>
        /// <param name="quantity"></param>
        /// <param name="customerID"></param>
        public int InsertOrderProductTable(int productID, /*int quantity,*/ int orderID)
        {
            int quantity = 1;
            //SqlCommand _cmdInsertProductToOrderTable = new SqlCommand($"", _sqlConnection);

            using (SqlCommand _cmdInsertToOrderProductTbl = new SqlCommand($"INSERT INTO tblOrderProduct (ProductID,OrderID, Quantity) VALUES (@ProductID,@OrderID, @Quantity)", _sqlConnection))
            {
                _cmdInsertToOrderProductTbl.Parameters.AddWithValue("@ProductID", productID);
                _cmdInsertToOrderProductTbl.Parameters.AddWithValue("@OrderID", orderID);
                _cmdInsertToOrderProductTbl.Parameters.AddWithValue("@Quantity", quantity);
                //_cmdInsertToOrderProductTbl.ExecuteNonQuery();
                _cmdInsertToOrderProductTbl.ExecuteNonQuery();
                return orderID;

            }

        }

        public int GetCustomerLoggedID(string userName)
        {
            int customerID;
            string numberOfCustomers = $"SELECT COUNT(*) FROM tblCustomer Where UserName = '{userName}'";
            using (SqlCommand cmd = new SqlCommand(numberOfCustomers, _sqlConnection))
            {
                customerID = (int)cmd.ExecuteScalar();
                if (customerID == 1)
                {
                    return customerID;
                }
                return customerID;
            }
        }

        public int GetProduct(string description, string category, string gender, string color, string size)
        {
            try
            {

                int productID = 0;
                using (SqlCommand cmd = new SqlCommand("sp_GetProduct", _sqlConnection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@CategoryName", category);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Color", color);
                    cmd.Parameters.AddWithValue("@Size", size);
                    productID = (int)cmd.ExecuteScalar();


                    return productID;





                }

            }
            catch (SqlException ex)
            {

                throw (ex);
            }
        }
        #endregion

        public int FilterItem(string category, string color, string size)
        {
            string filterItem = $"select productID from tblProduct AS p INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID Where CategoryName= '{category}' And Color = '{color}' AND Size = '{size}'";
            using (SqlCommand cmd = new SqlCommand(filterItem, _sqlConnection))
            {
                int productID = (int)cmd.ExecuteScalar();
                return productID;
            }
        }

        #region ProductAdministration
        //public void InsertProductAdmin(Product p)
        //{
        //    string sql = $"Insert into tblProduct (ProductBrand, PriceUnit, Description, Color, Size,Stock, CategodyID) Values ('{p.ProductBrand}', '{p.ProductDescription}','{p.PriceUnit}', '{p.Color}', '{p.Size}', '{p.Stock}', '{p.CategoryID}')";

        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}

        //public void DeleteProductAdmin(int id)
        //{
        //    string sql = $"Delete from tblProduct where ProductID = {id}";
        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}
        //public void UpdateProductAdmin(int id)
        //{
        //    string sql = $"Update tblProduct SET  Where ProductID = {id}";

        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}
        public Product ProductSelectToCart(int id)//Get values from html form (customer)
        {
            Product productToCart = new Product();
            string sql = $"SELECT * FROM tblProduct Where ProductID = {id}";

            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string imageURL = (string)reader["ImageURL"];
                    int productID = (int)reader["ProductID"];
                    string productBrand = (string)reader["ProductBrand"];
                    decimal priceUnit = (decimal)reader["PriceUnit"];
                    string productDescription = (string)reader["ProductDescription"];
                    string color = (string)reader["Color"];
                    string size = (string)reader["Size"];
                    int stock = (int)reader["Stock"];
                    int categoryID = (int)reader["CategoryID"];

                    productToCart = new Product(imageURL, productID, productBrand, priceUnit, productDescription, color, size, stock, categoryID);

                }
                reader.Close();
                reader.Dispose();

            }
            return productToCart;

        }
        public List<Product> lsDescriptionProduct(int id)
        {
            List<Product> lsAllProduct = new List<Product>();
            string sql = $"SELECT ProductBrand, PriceUnit, ProductDescription, Color, Size from tblProduct Where ProductID = {id} ";
            using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
            {
                SqlDataReader _sqlDtReader = cmd.ExecuteReader();
                while (_sqlDtReader.Read())
                {

                    string productBrand = (string)_sqlDtReader["ProductBrand"];
                    decimal priceUnit = (decimal)_sqlDtReader["PriceUnit"];
                    string productDescription = (string)_sqlDtReader["ProductDescription"];
                    string color = (string)_sqlDtReader["Color"];
                    string size = (string)_sqlDtReader["Size"];



                    lsAllProduct.Add(new Product(productBrand, priceUnit, productDescription, color, size));
                }
                _sqlDtReader.Close();

            }
            return lsAllProduct;



        }//NOT IN USE

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
                    string productBrand = (string)_sqlDtReader["ProductBrand"];
                    decimal priceUnit = (decimal)_sqlDtReader["PriceUnit"];
                    string productDescription = (string)_sqlDtReader["ProductDescription"];
                    string color = (string)_sqlDtReader["Color"];
                    string size = (string)_sqlDtReader["Size"];
                    int stock = (int)_sqlDtReader["Stock"];
                    int categoryID = (int)_sqlDtReader["CategoryID"];

                    //lsAllProduct.Add(new Product(productID, productBrand, priceUnit, productDescription, color, size, stock, categoryID /*imageURL*/));
                }
                _sqlDtReader.Close();

            }
            return lsAllProduct;
        }

        public int ReturnUserLogedIn(string userName, string password)
        {
            int customerID = 0;

            //Check if user name is an email or a proper userName
            if (userName.Contains("@"))
            {
                //Count if any customer with this email
                string checkEmail = $"SELECT count(*) FROM tblCustomer where Email = '{userName}'";
                using (SqlCommand cmd = new SqlCommand(checkEmail, _sqlConnection))
                {
                    //ExecuteScalar combined with the count sql query, returns number of users with the inputed user
                    int tempEmail = (int)cmd.ExecuteScalar();
                    if (tempEmail == 1)
                    {
                        //If it exists check the password
                        string checkPasswordQuery = $"Select Password from tblCustomer where Email = '{userName}'";
                        using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery, _sqlConnection))
                        {
                            string pass = (string)comPassword.ExecuteScalar();
                            if (pass == password)
                            {
                                //If password correct select user and keep it in a variable to turn it back (needed to place the order of an eventual purchase)
                                string selectCustomer = $"Select * from tblCustomer where Email = '{userName}'";
                                using (SqlCommand comPassword2 = new SqlCommand(checkPasswordQuery, _sqlConnection))
                                {
                                    customerID = (int)comPassword2.ExecuteScalar();

                                    //Session["NewUserEmail"] = email;
                                    //("Password is correct");
                                    //Response.Redirect("../Products.aspx");                                                            
                                }
                            }
                            //else
                            //If not
                            //islogged = false;
                            //Response.Write("Password is not correct");
                        }
                    }
                    //else
                    //    islogged = false;

                    //Response.Write("UserName is not correct is not correct");                   
                }
                return customerID;
            }
            else
            {
                string checkUser = $"SELECT count(*) FROM tblCustomer WHERE UserName = '{userName}'";
                using (SqlCommand cmd2 = new SqlCommand(checkUser, _sqlConnection))
                {
                    //Returns number of users with the inputed user
                    int tempUser = (int)cmd2.ExecuteScalar();
                    if (tempUser == 1)
                    {
                        string checkPasswordQuery = $"Select Password from tblCustomer where UserName = '{userName}'";
                        using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery, _sqlConnection))
                        {
                            string pass = (string)comPassword.ExecuteScalar();
                            if (pass == password)
                            {
                                //If password correct select user and keep it in a variable to turn it back (needed to place the order of an eventual purchase)
                                string selectCustomer = $"Select * from tblCustomer where UserName = '{userName}'";
                                using (SqlCommand comPassword2 = new SqlCommand(checkPasswordQuery, _sqlConnection))
                                {
                                    customerID = (int)comPassword2.ExecuteScalar();

                                    //Session["New"] = userName;
                                    //("Password is correct");
                                    //Response.Redirect("../Products.aspx");                          
                                }
                                //islogged = true;                               
                            }
                            //else
                            //islogged = false;
                        }
                    }
                    //else
                    //islogged = false;                   
                }
                //return islogged;
                return customerID;
            }

        }//TODO Needs to return customerID
        #endregion


        #region ProductAdministration
        //public void InsertProductAdmin(Product p)
        //{
        //    string sql = $"Insert into tblProduct (ProductBrand, PriceUnit, Description, Color, Size,Stock, CategodyID) Values ('{p.ProductBrand}', '{p.ProductDescription}','{p.PriceUnit}', '{p.Color}', '{p.Size}', '{p.Stock}', '{p.CategoryID}')";

        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}

        //public void DeleteProductAdmin(int id)
        //{
        //    string sql = $"Delete from tblProduct where ProductID = {id}";
        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}
        //public void UpdateProductAdmin(int id)
        //{
        //    string sql = $"Update tblProduct SET  Where ProductID = {id}";

        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        cmd.ExecuteNonQuery();
        //    }
        //}
        ////public void ProductSelectOptions(int id,string color, string size, int amount, int categoryID)//Get values from html form (customer)
        ////{
        ////    string sql = $"SELECT * FROM tblProduct   Color = {color}, Size = {size},Stock = {-amount}, CategodyID = {categoryID} Where ProductID = {id}";

        ////    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        ////    {
        ////        cmd.ExecuteNonQuery();
        ////    }
        ////} 

        //public List<Product> lsDescriptionProduct(int id)
        //{
        //    List<Product> lsAllProduct = new List<Product>();
        //    string sql = $"SELECT ProductBrand, PriceUnit, ProductDescription, Color, Size from tblProduct Where ProductID = {id} ";
        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        SqlDataReader _sqlDtReader = cmd.ExecuteReader();
        //        while (_sqlDtReader.Read())
        //        {

        //            string productBrand = (string)_sqlDtReader["ProductBrand"];
        //            decimal priceUnit = (decimal)_sqlDtReader["PriceUnit"];
        //            string productDescription = (string)_sqlDtReader["ProductDescription"];
        //            string color = (string)_sqlDtReader["Color"];
        //            string size = (string)_sqlDtReader["Size"];



        //            lsAllProduct.Add(new Product(productBrand, priceUnit, productDescription, color, size));
        //        }
        //        _sqlDtReader.Close();

        //    }
        //    return lsAllProduct;



        //}

        //public List<Product> GetProducts()
        //{
        //    List<Product> lsAllProduct = new List<Product>();
        //    string sql = $"select * from tblProduct";
        //    using (SqlCommand cmd = new SqlCommand(sql, _sqlConnection))
        //    {
        //        SqlDataReader _sqlDtReader = cmd.ExecuteReader();
        //        while (_sqlDtReader.Read())
        //        {
        //            int productID = (int)_sqlDtReader["ProductID"];
        //            string productBrand = (string)_sqlDtReader["ProductBrand"];
        //            decimal priceUnit = (decimal)_sqlDtReader["PriceUnit"];
        //            string productDescription = (string)_sqlDtReader["ProductDescription"];
        //            string color = (string)_sqlDtReader["Color"];
        //            string size = (string)_sqlDtReader["Size"];
        //            int stock = (int)_sqlDtReader["Stock"];
        //            int categoryID = (int)_sqlDtReader["CategoryID"];

        //            lsAllProduct.Add(new Product(productID, productBrand, priceUnit, productDescription, color, size, stock, categoryID));
        //        }
        //        _sqlDtReader.Close();

        //    }
        //    return lsAllProduct;
        //}

        //public int ReturnUserLogedIn(string userName, string password)
        //{
        //    int customerID = 0;
        //    bool islogged;
        //    //Check if user name is an email or a proper userName
        //    if (userName.Contains("@"))
        //    {
        //        //Count if any customer with this email
        //        string checkEmail = $"SELECT count(*) FROM tblCustomer where Email = '{userName}'";
        //        using (SqlCommand cmd = new SqlCommand(checkEmail, _sqlConnection))
        //        {
        //            //ExecuteScalar combined with the count sql query, returns number of users with the inputed user
        //            int tempEmail = (int)cmd.ExecuteScalar();
        //            if (tempEmail == 1)
        //            {
        //                //If it exists check the password
        //                string checkPasswordQuery = $"Select Password from tblCustomer where Email = '{userName}'";
        //                using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery, _sqlConnection))
        //                {
        //                    string pass = (string)comPassword.ExecuteScalar();
        //                    if (pass == password)
        //                    {
        //                        //If password correct select user and keep it in a variable to turn it back (needed to place the order of an eventual purchase)
        //                        string selectCustomer = $"Select * from tblCustomer where Email = '{userName}'";
        //                        using (SqlCommand comPassword2 = new SqlCommand(checkPasswordQuery, _sqlConnection))
        //                        {
        //                            customerID = (int)comPassword2.ExecuteScalar();
        //                            islogged = true;
        //                            //Session["NewUserEmail"] = email;
        //                            //("Password is correct");
        //                            //Response.Redirect("../Products.aspx");                                                            
        //                        }
        //                    }
        //                    //else
        //                    //If not
        //                    //islogged = false;
        //                    //Response.Write("Password is not correct");
        //                }
        //            }
        //            //else
        //            //    islogged = false;

        //            //Response.Write("UserName is not correct is not correct");                   
        //        }
        //        return customerID;
        //    }
        //    else
        //    {
        //        string checkUser = $"SELECT count(*) FROM tblCustomer WHERE UserName = '{userName}'";
        //        using (SqlCommand cmd2 = new SqlCommand(checkUser, _sqlConnection))
        //        {
        //            //Returns number of users with the inputed user
        //            int tempUser = (int)cmd2.ExecuteScalar();
        //            if (tempUser == 1)
        //            {
        //                string checkPasswordQuery = $"Select Password from tblCustomer where UserName = '{userName}'";
        //                using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery, _sqlConnection))
        //                {
        //                    string pass = (string)comPassword.ExecuteScalar();
        //                    if (pass == password)
        //                    {
        //                        //If password correct select user and keep it in a variable to turn it back (needed to place the order of an eventual purchase)
        //                        string selectCustomer = $"Select * from tblCustomer where UserName = '{userName}'";
        //                        using (SqlCommand comPassword2 = new SqlCommand(checkPasswordQuery, _sqlConnection))
        //                        {
        //                            customerID = (int)comPassword2.ExecuteScalar();
        //                            islogged = true;
        //                            //Session["New"] = userName;
        //                            //("Password is correct");
        //                            //Response.Redirect("../Products.aspx");                          
        //                        }
        //                        //islogged = true;                               
        //                    }
        //                    //else
        //                    //islogged = false;
        //                }
        //            }
        //            //else
        //            //islogged = false;                   
        //        }
        //        //return islogged;
        //        return customerID;
        //    }

        //}//TODO Needs to return customerID
        #endregion

        public void ShowDetails(int orderID)//Not in use
        {
            DataTable dr = new DataTable();
            using (SqlCommand cmdAllOrderDetails = new SqlCommand($"sp_GetAllOrderInfo @OrderID={orderID}", _sqlConnection))
            {
                SqlDataReader _adapter = cmdAllOrderDetails.ExecuteReader();
                dr.Load(_adapter);
                _adapter.Close();
            }
        }


    }

}
