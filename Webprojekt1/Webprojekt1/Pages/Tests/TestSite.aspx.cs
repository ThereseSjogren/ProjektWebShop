using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebShopDAL.ConnectedLayer;
using WebShopDAL.Models;
using System.Web.ModelBinding;
using System.Data.SqlClient;
using System.Data;


namespace Webprojekt1.Pages
{
    public partial class TestSite : System.Web.UI.Page
    {
        public IQueryable<Product> GetAllProducts([Control("productsDropDownList")]string productBrand = "")
        {
            List<Product> allProductsList = new List<Product>();
            WbsDAL wbs = new WbsDAL();
            wbs.OpenConnection($"Data Source=(local);Initial Catalog=WebbShop;Integrated Security=True");
            allProductsList = wbs.GetProducts();
            //Same solution as the one below
            //if (string.IsNullOrEmpty(productBrand))
            //{
            //    return wbs.GetProducts().AsQueryable();
            //}
            //else
            //{
            //    return wbs.GetProducts().Where(x => x.ProductBrand == productBrand).AsQueryable();
            //}
            return string.IsNullOrEmpty(productBrand) ?
                wbs.GetProducts().AsQueryable() :
                wbs.GetProducts().Where(x => x.ProductBrand == productBrand).AsQueryable();

        }
        public void DeleteProduct(int productID)
        {
            WbsDAL wbs = new WbsDAL();
            wbs.OpenConnection($"Data Source=(local);Initial Catalog=WebbShop;Integrated Security=True");
            //wbs.DeleteProductAdmin(productID);

        }
        public void UpdateProduct(int productID)
        {
            WbsDAL wbs = new WbsDAL();
            wbs.OpenConnection($"Data Source=(local);Initial Catalog=WebbShop;Integrated Security=True");
            //wbs.UpdateProductAdmin(productID);


        }

        public IEnumerable<Product> GetBrands()
        {
            IEnumerable<Product> productList = new List<Product>();

            WbsDAL invDAL = new WbsDAL();
            invDAL.OpenConnection($"Data Source=(local); Integrated Security = true; Initial Catalog=WebbShop");

            productList = invDAL.GetProducts();
            productList.Select(x => new { x.ProductBrand }).Distinct();


            return productList;
        }
        //public void GetProductDetails(int id)
        //{
        //    List<Product> lstDescriptionProduct = new List<Product>();
        //    WbsDAL wbs = new WbsDAL();
        //    wbs.OpenConnection($"Data Source=(local);Initial Catalog=WebbShop;Integrated Security=True");
        //    lstDescriptionProduct =  wbs.lsDescriptionProduct(id);
        //    _singleProductGridView.DataSource = lstDescriptionProduct;
        //    _singleProductGridView.DataBind();


        //}
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}