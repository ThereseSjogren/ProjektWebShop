using System;
using System.Data;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using WebShopDAL.Models;
using WebShopDAL.ConnectedLayer;
using System.Data.SqlClient;

namespace Webprojekt1
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;
        //private List<ProductOrderInfoChartCart> listChart;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            List<CartItem> _productList = new List<CartItem>();
            _productList = (List<CartItem>)Session["AddToChartCart"];

            _listViewChart.DataSource = _productList;
            _listViewChart.DataBind();



            #region FirstCode
            //---------------------------------------------------------------------------
            //if (Session["AddToChartCart"] != null)
            //{
            //    string infoChart = $"ProductID\tBrand\tColor\tSize\tCategoryName\tPrice Unit\tRabattID\tQuantity\tPrice\tTotal With Discount\tTotal With Tax";
            //    List<ProductOrderInfoChartCart> myChartList = new List<ProductOrderInfoChartCart>();
            //    myChartList = (List<ProductOrderInfoChartCart>)Session["AddToChartCart"];
            //    foreach (var p in myChartList)
            //    {
            //        infoChart += $"<li>{p.ProductID}\t{p.Brand}\t{p.Color}\t{p.Size}t{p.CategoryName}\t{p.PriceUnit}\t{p.RabattID}\t{p.Quantity}\t{p.Price}\t{p.TotalWithDiscount}\t{p.TotalWithTax}</li>";
            //        _lblShowCart.Text = infoChart;
            //    }
            //}

            #endregion
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SearchField();
        }
        protected void SearchField()
        {
            List<Product> searchedProduct = new List<Product>();
            WbsDAL wbsdal = new WbsDAL();
            wbsdal.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            searchedProduct=wbsdal.GetSearchProduct(txtSearchbox.Text);
            Session["SearchedProduct"] = searchedProduct;
            Response.Redirect("~/SearchResult.aspx");
        }
        protected void ConfirmOrderShoppingCart_Click(object sender, EventArgs e) //TODO!!!!!!!
        {
            if ((string)Session["UserName"] != null)
            {
                List<ProductOrderInfoChartCart> orderList = new List<ProductOrderInfoChartCart>();
                WbsDAL wbsDAL = new WbsDAL();
                wbsDAL.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
                List<Product> listChart = (List<Product>)Session["AddToChartCart"];
                foreach (Product p in listChart)
                {
                    string imageURL = p.ImageURL;
                    int productID = p.ProductID;
                    string roductBrand = p.ProductBrand;
                    decimal PriceUnit = p.PriceUnit;
                    string ProductDescription = p.ProductDescription;
                    string Color = p.Color;
                    string Size = p.Size;
                }

                //Missing Code for Quantity

                string userName = (string)Session["UserName"];
                int customerID = wbsDAL.GetCustomerLoggedID(userName);
                int orderID = wbsDAL.InsertToOrderTbl(customerID);
                foreach (Product p in listChart)
                {
                    int productID = p.ProductID;

                    wbsDAL.InsertOrderProductTable(productID, orderID);
                }
                
            }

            else
            {
                Response.Redirect("~/Pages/ConfirmOrder");
            }



        }
        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
    }

}

