using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Webprojekt1.Models;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WebShopDAL.ConnectedLayer;
using WebShopDAL.Models;

namespace Webprojekt1.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                #region PreviousCode
                // Validate the user password
                //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                //var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                //var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);


                //switch (result)
                //{
                //    case SignInStatus.Success:
                //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                //        break;
                //    case SignInStatus.LockedOut:
                //        Response.Redirect("/Account/Lockout");
                //        break;
                //    case SignInStatus.RequiresVerification:
                //        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
                //                                        Request.QueryString["ReturnUrl"],
                //                                        RememberMe.Checked),
                //                          true);
                //        break;
                //    case SignInStatus.Failure:
                //    default:
                //        FailureText.Text = "Invalid login attempt";
                //        ErrorMessage.Visible = true;
                //        break;
                #endregion
                //1 - Connection
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
                con.Open();
                //WbsDAL wbsDAL = new WbsDAL();
                //wbsDAL.OpenConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);

                //Check if Username is an email
                if (_txtBoxUserName.Text.Contains("@"))
                {
                    //Using 
                    string checkEmail = $"SELECT UserName FROM tblCustomer where Email = '{_txtBoxUserName.Text}'";
                    using (SqlCommand cmd = new SqlCommand(checkEmail, con))
                    {
                        //Returns number of users with the inputed user

                        string tempEmail = (string)cmd.ExecuteScalar();
                        if (tempEmail == _txtBoxUserName.Text)
                        {
                            //con.Open();
                            string checkPasswordQuery = $"Select Password from tblCustomer where Email = '{_txtBoxUserName.Text}'";
                            using (SqlCommand comPassword = new SqlCommand(checkPasswordQuery, con))
                            {
                                string password = (string)comPassword.ExecuteScalar();
                                if (password == _txtBoxPassword.Text)
                                {
                                    Session["UserName"] = _txtBoxUserName.Text;
                                    Response.Write("Password is correct");
                                    Response.Redirect("../Pages/Products.aspx");
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
                                    Response.Redirect("../Pages/Products.aspx");
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
}

