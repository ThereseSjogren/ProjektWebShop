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

namespace Webprojekt1
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    SqlConnection con = new SqlConnection($"Data Source=(local);Initial Catalog=WebbShop;Integrated Security=True");
            //    con.Open();
                
            //    //ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString
            //    string checkUser = $"SELECT count(*) FROM tblCustomer WHERE UserName = '{_txtBoxUserName.Text}'";

            //    using (SqlCommand cmd = new SqlCommand(checkUser, con))
            //    {
            //        //Returns number of 
            //        int temp = (int)cmd.ExecuteScalar();
            //        if (temp == 1)
            //        {
            //            Response.Write("User already exists");
            //        }
            //    }
            //}
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            con.Open();
            //WbsDAL wbsDAL = new WbsDAL();
            //wbsDAL.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);

            if (_txtBoxUserName.Text.Contains("@"))
            {
                string checkEmail = $"SELECT UserName FROM tblCustomer where Email = '{_txtBoxUserName.Text}'";
                using (SqlCommand cmd = new SqlCommand(checkEmail, con))
                {
                    //Returns number of users with the inputed user
                    
                    string tempEmail = (string)cmd.ExecuteScalar();
                    if (tempEmail == _txtBoxUserName.Text)
                    {
                        //con.Open();
                        string checkPasswordQuery = $"Select Password from tblCustomer where Email = '{_txtBoxUserName.Text}'";
                        using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery,con))
                        {
                            string password = (string)comPassword.ExecuteScalar();
                            if (password == _txtBoxPassword.Text)
                            {
                                Session["UserName"] = _txtBoxUserName.Text;
                                Response.Write("Password is correct");
                                Response.Redirect("../Products.aspx");
                            }
                            else
                                Response.Write("Password is not correct");
                        }
                    }
                    else
                    {
                        Response.Write("UserName is not correct is not correct");
                    }
                }
            }
            else
            {
                string checkUser = $"SELECT UserName FROM tblCustomer WHERE UserName = '{_txtBoxUserName.Text}'";

                using (SqlCommand cmd2 = new SqlCommand(checkUser, con))
                {
                    //Returns number of users with the inputed user
                    string tempUser = (string)cmd2.ExecuteScalar();
                    
                    if (tempUser == _txtBoxUserName.Text)
                    {
                        
                        string checkPasswordQuery = $"Select Password from tblCustomer where UserName = '{_txtBoxUserName.Text}'";
                        using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery, con))
                        {
                            string password = (string)comPassword.ExecuteScalar();
                            if (password == _txtBoxPassword.Text)
                            {
                                Session["UserName"] = _txtBoxUserName.Text;
                                Response.Write("Password is correct");
                                Response.Redirect("../Products.aspx");
                            }
                            else
                                Response.Write("Password is not correct");
                        }
                    }
                    else
                    {
                        Response.Write("UserName is not correct is not correct");
                    }

                
                }
            }
            
        }
    }
    
}