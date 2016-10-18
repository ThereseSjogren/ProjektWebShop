using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using WebShopDAL.ConnectedLayer;
using WebShopDAL.Models;

namespace Webprojekt1.Pages.ChildClothes
{
    public partial class ChildJeans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////////////////////////
            //  LOAD All Products //
            ////////////////////////

            int number;
            string markupHTML = "";
            List<Product> allChilJeansList = new List<Product>();
            WbsDAL wbs = new WbsDAL();
            wbs.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            allChilJeansList = wbs.GetJeansChild();
            foreach (Product p in allChilJeansList)
            {
                number = Decimal.ToInt32(p.PriceUnit);
                markupHTML += $"<div class=\"col-md-3 box\">" +
                                 $"<div class =\"thumbnail\" >" +
                                    $"<img src =\"/Images/{p.ImageURL}\" alt =\"Generic placeholder thumbnail\">" +
                                 $"</div>" +
                                 $"<div class=\"cover left\">" +
                                 $"<div class = \"caption\">" +
                                    $"<h3>{p.ProductBrand}</h3>" +
                                    $"<h2 class=\"title\">{p.ProductBrand}</h2>" +
                                 $"</div>" +
                                 $"<div class=\"btn\">" +
                                   $"<a href=\"ProductInformation.aspx?ProductID={p.ProductID}\">More Info<br />" +
                                     $"{number}SEK" +
                                   $"</a>" +
                                 $"</div>" +
                               $"</div>" +
                              $"</div>";
            }
            InsertedChildJackets.InnerHtml = markupHTML;
        }
    }
}