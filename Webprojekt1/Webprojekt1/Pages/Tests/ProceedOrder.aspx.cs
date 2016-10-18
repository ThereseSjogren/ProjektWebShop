using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebShopDAL.ConnectedLayer;
using WebShopDAL.Models;
using System.Configuration;
using System.Web.ModelBinding;
using System.Data;
using System.IO;

namespace Webprojekt1
{
    public partial class ProceedOrder : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _btnSubmitOrder_Click(object sender, EventArgs e)
        {
            WbsDAL wbsDAL = new WbsDAL();
            wbsDAL.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            string description = "Fine brand";//Check this
            string category = _dropDownCategory.Text;
            string gender = _dropDownGender.Text;
            string color = _dropDownColor.Text;
            string size = _dropDownSize.Text;
            int quantity = Int32.Parse(_txtBoxQuantity.Text);
            int productID = wbsDAL.GetProduct(description, category, gender, color, size);
            string userName = (string)Session["UserName"];
            int customerID = wbsDAL.GetCustomerLoggedID(userName);
            //int orderID = wbsDAL.InsertOrderProductTable(productID, quantity, customerID);
            Response.Redirect("../OrderRec.aspx");
            

        }
    }
}