using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WebShopDAL.ConnectedLayer;
using WebShopDAL.Models;
using System.Data;
using System.Web.ModelBinding;



namespace Webprojekt1
{
    public partial class Products : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ////////////////////////
            //  LOAD All Products //
            ////////////////////////

            int number;
            string markupHTML = "";
            List<Product> allProductList = new List<Product>();
            WbsDAL wbs = new WbsDAL();
            wbs.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            allProductList = wbs.GetListOfAllProducts();
            foreach (Product p in allProductList)
            {
                number = Decimal.ToInt32(p.PriceUnit);
                markupHTML += $"<div class=\"col-md-3 box\">" +
                                 $"<div class =\"thumbnail\">" +
                                    $"<img src =\"/Images/{p.ImageURL}\" alt =\"Generic placeholder thumbnail\">" +
                                 $"</div>" +                                
                                 $"<div class=\"cover left\">" +
                                 $"<div class =\"caption\">" +
                                    $"<h3>{p.ProductBrand}</h3>" +
                                    $"<h2 class=\"title\">{p.ProductBrand}</h2>" +
                                    $"{number}SEK" +
                                 $"</div>" +
                                 $"<a href=\"ProductInformation.aspx?ProductID={p.ProductID}\">" +
                                 $"<div class=\"btn\">" +
                                 
                                   $"More Info <br />" +
                                   $"</div></a>" +
                                   $"<div class=\"btn\">" +
                                   $"<a href =\"AddToCart.aspx?ProductID={p.ProductID}\">Buy<br/></a>" +
                                     
                                   $"</a>" +

                                 $"</div>" +
                               $"</div>" +
                              $"</div>";
            }
            InsertedProducts.InnerHtml = markupHTML;
        }
        //<a href = "ProductInformation.aspx?ProductID=<%#:{p.ProductID}%>" > More Info<br /></a>              
        //                  </div>        
        //                <div class="btn">
        //                    <a href = "AddToCart.aspx?ProductID=<%#:Item.ProductID%>" > Buy < br />
        //                    </ a >
        //public IQueryable<Products> GetProducts([QueryString("id")] int? ProductID)
        //{

        //    WbsDAL wbs = new WbsDAL();
        //    wbs.OpenConnection("Data Source=.;Initial Catalog=WebbShop;Integrated Security=True");
        //    string
        //    using (resource)
        //    {

        //    }
        //    IQueryable query = (IQueryable)wbs.GetListOfAllProducts();
        //    if (ProductID.HasValue && ProductID > 0)
        //    {

        //        foreach (Product p in query)
        //        {

        //        }
        //    }
        //    return query;

        //}

    }

}
#region MyRegion
        //protected void CreateFilter_Click(object sender, EventArgs e)
        //{

        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
        //    con.Open();

        //    //string sql = @"select count(*) from tblProduct AS p 
        //    //                INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID 
        //    //                Where CategoryName = 'T-Shirt' AND Color = '@Color' AND Size = '@Size'";
        //    //using (SqlCommand _sqlCommand = new SqlCommand(sql, con))
        //    //{
        //    string sql = @"select p.ProductID from tblProduct AS p 
        //                    INNER JOIN tblCategory AS c ON p.CategoryID = c.CategoryID 
        //                    Where  Color = '@Color' AND Size = '@Size'";
        //    using (SqlCommand _sqlCommand = new SqlCommand(sql, con))
        //    {
        //        _sqlCommand.Parameters.AddWithValue("@Size", _dropDownSize.SelectedValue);
        //        _sqlCommand.Parameters.AddWithValue("@Color", _dropDownColor.SelectedValue);


        //        List<Product> filt = new List<Product>();
        //        SqlDataReader reader = _sqlCommand.ExecuteReader();
        //        while (reader.Read())
        //        {

        //            try
        //            {
        //                int productID = (int)reader["ProductID"];
        //                string color = (string)reader["Color"];
        //                string size = (string)reader["Size"];
        //                Product p = new Product(productID, color, size);
        //                filt.Add(p);
        //                GridView1.DataSource = filt;
        //                GridView1.DataBind();
        //            }
        //            catch (SqlException ex)
        //            {

        //                Response.Write(ex.Message);
        //            }
        //        }
        //      }

        //    }
        //} 
        #endregion

    