using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebShopDAL.ConnectedLayer;
using System.Configuration;
using WebShopDAL.Models;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Webprojekt1.Models;



namespace Webprojekt1.Pages
{
    public partial class ProductInformation : Page
    {
        protected List<ProductOrderInfoChartCart> listChart;

        public void AddToChartCart(Product p)
        {
            //Add list to Session


            List<Product> _productList = new List<Product>();
            _productList = (List<Product>)Session["AddToChartCart"];
            _productList.Add(p);
            Session["AddToChartCart"] = _productList;

            #region FirstCode

            //newDt = Session["AddToChartCart"] as DataTable;
            //foreach (DataRow row in newDt.Rows)
            //{

            //        int productID = (int)row["ProductID"];
            //        string brand = (string)row["ProductBrand"];
            //        string color = (string)row["Color"];
            //        string size = (string)row["Size"];
            //        string categoryName = (string)row["CategoryName"];
            //        decimal priceUnit = (decimal)row["PriceUnit"];
            //        int quantity = (int)row["Quantity"];
            //        int rabatt = (int)row["Rabatt"];
            //        decimal price = (decimal)row["Total"];
            //        decimal totalWithDiscount = (decimal)row["Total with Discount"];
            //        decimal totalWithTax = (decimal)row["Total with Tax"]; 


            //             sessionInfo += $" <li>{productID}\t{brand}\t{color}\t{size}\t{categoryName}\t{priceUnit}\t{quantity}\t{rabatt}\t{price}\t{totalWithDiscount}\t{totalWithTax}</li>"; 

            //}
            //_lblTestSessionList.Text = sessionInfo; 
            #endregion

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //////////////////////////////////////////////////////////////////
            //  Request query string configured in all sites with product   //
            //////////////////////////////////////////////////////////////////

            //string productID = string.Empty;
            //if (!string.IsNullOrEmpty(Request.QueryString["ProductID"]))
            //{
            //   // ProductID = Request.QueryString["ProductID"];
            //}
            //else
            //{

            //}
            ////////////////////////
            //  LOAD Product //
            ////////////////////////

            int number;
            //string markupHTML = "";
            Product p = new Product();
            WbsDAL wbs = new WbsDAL();
            wbs.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
           // p = wbs.ProductSelectToCart(ProductID);

            number = Decimal.ToInt32(p.PriceUnit);
            StringBuilder markupHTML = new StringBuilder("");
            markupHTML.Append("<div class=\"product group\">");
            markupHTML.Append("<div class =\"thumbnail\" >");
            markupHTML.Append("<img src =\"/Images/" + p.ImageURL + "\" alt=\"Generic placeholder thumbnail\">");
            markupHTML.Append("</div>");
            markupHTML.Append("<div class = \"caption\">");
            markupHTML.Append("<h3></h3>");
            markupHTML.Append("<span>" + p.Size + "</span");
            markupHTML.Append("<h2 class=\"title\">" + p.ProductBrand + "</h2>");
            markupHTML.Append("</div>");
            markupHTML.Append("<div class=\"col-1-2 product-info\">");
            markupHTML.Append("<h1>" + p.ProductBrand + "</h1>");
            markupHTML.Append("<br />");
            markupHTML.Append("" + p.ProductDescription + "");
            markupHTML.Append("<br />");
            markupHTML.Append("<h3>" + number + "SEK</h3>");
            markupHTML.Append("<br />");
            markupHTML.Append("<div class=\"add-btn\"  Text=\"Add to cart\"  OnClick=\"_btnAddToChart_Click\" runat=\"server\">");
            markupHTML.Append("</div>");
            markupHTML.Append("</div>");



            //InsertedProduct.InnerHtml = markupHTML.ToString();
            //    markupHTML += $"<div class=\"col-md-3 box\">" +
            //                         $"<div class =\"thumbnail\">" +
            //                            $"<img src =\"/Images/{p.ImageURL}\" alt =\"Generic placeholder thumbnail\">" +
            //                         $"</div>" +
            //                         $"<div class=\"cover left\">" +
            //                         $"<div class =\"caption\">" +
            //                            $"<h3>{p.ProductBrand}</h3>" +
            //                            $"<h2 class=\"title\">{p.ProductBrand}</h2>" +
            //                            $"{number}SEK" +
            //                         $"</div>" +
            //                         $"<a href=\"ProductInformation.aspx?ProductID={p.ProductID}\">" +
            //                         $"<div class=\"btn\">" +

            //                           $"More Info <br />" +
            //                           $"</div></a>" +
            //                           $"<div class=\"btn\">" +
            //                           $"<a href =\"AddToCart.aspx?ProductID={p.ProductID}\">Buy<br/></a>" +

            //                           $"</a>" +

            //                         $"</div>" +
            //                       $"</div>" +
            //                      $"</div>";
            //}
            //InsertedProduct.InnerHtml = markupHTML.ToString;

            string rawProductID = Request.QueryString["ProductID"];
            
            

            if (!string.IsNullOrEmpty(rawProductID))
            {
                
                ShoppingCartActions userShoppingCart = new ShoppingCartActions();
                int productID = Int32.Parse(rawProductID);
                userShoppingCart.AddToCart(productID);

            }
            else
            {
                throw new Exception("Error loading page without ID");
            }
            Response.Redirect("ShoppingCart.aspx");


        }

        protected void _btnAddToChart_Click()
        {

            //int quantity = Int32.Parse(_dropDownQuantity.SelectedValue);
            //WbsDAL wbsDAL = new WbsDAL();
            //wbsDAL.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            //Product p = new Product();
            //p = wbsDAL.GetProductForProdIformation();


            //    //Get all product attributes to be able to call the product
            //    //string description = "Fine brand";
            //    //string category = "T-Shirt";
            //    //string gender = _dropDownGender.SelectedValue.ToString();
            //    //string color = _dropDownColor.SelectedValue.ToString();
            //    //string size = _dropDownSize.SelectedValue.ToString();

            //    //int productID = wbsDAL.GetProduct(description, category, gender, color, size);
            //    p = wbsDAL.ProductSelectToCart(productID);

            //    AddToChartCart(p);

            //    //Get ProductID


            //    ////Get DataTable with all Info

            //if (Session["UserName"] != null)
            //{
            //    listChart = wbsDAL.GetProductInfo(productID, category, gender, color, size, quantity, 1);

            //    AddToChartCart(listChart); 
            //}
            //else
            //{
            //    listChart = wbsDAL.GetProductInfo(productID, category, gender, color, size, quantity, 2);
            //    AddToChartCart(listChart);
            //}
            //Response.Redirect("../Default");

            //    //////////////////////////////////////////////////////////////////////////////////////////////
            //    //    Should insert the order in Maste.Site.cs (shoppingCart) TODO  / Needs to reLogic it   //
            //    //////////////////////////////////////////////////////////////////////////////////////////////

            //    ////Check userName to be able to get CustomerID
            //    //string userName = (string)Session["UserName"];
            //    ////Get CustomerID to be able to get OrderID
            //    //int customerID = wbsDAL.GetCustomerLoggedID(userName);
            //    ////Get OrderID and insert into tblOrderProduct
            //    //int orderID = wbsDAL.InsertOrderProductTable(productID, quantity, customerID);
            //    //Response.Redirect("../OrderRec.aspx");
            //}
            //}
        }
    }
}