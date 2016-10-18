using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webprojekt1.Models;
using WebShopDAL.Models;
namespace Webprojekt1
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<CartItem> GetShoppingCartItems()
        {
            ShoppingCartActions run = new ShoppingCartActions();
            return run.GetCartItems();
        }
    }
}