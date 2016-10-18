using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WebShopDAL.Models;
using System.Data;
using System.Web.ModelBinding;

namespace Webprojekt1.Pages.Tests
{
    public partial class TestProductFiltering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            con.Open();

            //string sql = @"select count(*) from tblProduct AS p 
            //                INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID 
            //                Where CategoryName = 'T-Shirt' AND Color = '@Color' AND Size = '@Size'";
            //using (SqlCommand _sqlCommand = new SqlCommand(sql, con))
            //{
            string sql = @"select p.ProductID from tblProduct AS p 
                            INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID 
                            Where  Color = '@Color' AND Size = '@Size'";
            using (SqlCommand _sqlCommand = new SqlCommand(sql, con))
            {
                _sqlCommand.Parameters.AddWithValue("@Size", _dropDownListSize.SelectedValue);
                _sqlCommand.Parameters.AddWithValue("@Color", _dropDownListColor.SelectedValue);


                List<Product> filt = new List<Product>();
                SqlDataReader reader = _sqlCommand.ExecuteReader();
                while (reader.Read())
                {

                    try
                    {
                        int productID = (int)reader["ProductID"];
                        string color = (string)reader["Color"];
                        string size = (string)reader["Size"];
                        Product p = new Product(productID, color, size);
                        filt.Add(p);
                        _gridView.DataSource = filt;
                        _gridView.DataBind();
                    }
                    catch (SqlException ex)
                    {

                        Response.Write(ex.Message);
                    }
                }
            }

        }
    }
    
}