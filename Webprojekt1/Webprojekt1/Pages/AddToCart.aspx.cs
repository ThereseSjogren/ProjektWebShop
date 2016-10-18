using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webprojekt1.Models;

namespace Webprojekt1
{
    public partial class AddToCart : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rawProductID = Request.QueryString["ProductID"];
            int productID;
            Int32.TryParse(rawProductID, out productID);

            if (!string.IsNullOrEmpty(rawProductID) && Int32.TryParse(rawProductID, out productID))
            {
                ShoppingCartActions userShoppingCart = new ShoppingCartActions();

                userShoppingCart.AddToCart(productID);

            }
            else
            {
                throw new Exception("Error loading page without ID");
            }
            Response.Redirect("ShoppingCart.aspx");
        }

    }
}
    