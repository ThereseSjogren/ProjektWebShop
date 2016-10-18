using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WebShopDAL.Models;

namespace Webprojekt1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            List<CartItem> list = new List<CartItem>();
            Guid g = Guid.Empty;
            Session["CartID"] = g;
            Session["AddToChartCart"] = list;
            List<Product> searchedlist = new List<Product>();
            Session["SearchedProduct"] = searchedlist;
            
        }

    }
}