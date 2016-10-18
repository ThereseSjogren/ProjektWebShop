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
using System.IO;

namespace Webprojekt1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
            //    con.Open();
            //    string checkUser = $"SELECT count(*) FROM tblCustomer WHERE UserName = '{_txtBoxUserName.Text}'";

            //    using (SqlCommand cmd = new SqlCommand(checkUser, con))
            //    {
            //        //Returns number of users with the inputed user
            //        int tempUser = (int)cmd.ExecuteScalar();

            //        if (tempUser == 1)
            //        {
            //            Response.Write("User already exists");

            //        }



            //    }

            //}
        }

        protected void _btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebbShopConnectionString"].ConnectionString);
                con.Open();

                if (_txtBoxUserName.Text == _txtBoxEmail.Text)
                {
                    _txtBoxUserName = _txtBoxEmail;
                    string sql = $"INSERT INTO tblCustomer (FirstName,LastName, Address, Email, UserName, Password, ZipCodeID, RabattID) VALUES ('{_txtBoxFName.Text}','{_txtBoxLName.Text}', '{_txtBoxAddress.Text}','{_txtBoxEmail.Text}', '{_txtBoxUserName.Text}', '{_txtBoxPassword.Text}', {Int32.Parse(_dropDownListZipCode.SelectedValue)},{1})";
                    using (SqlCommand _sqlCommand = new SqlCommand(sql, con))
                    {
                        //_sqlCommand.Parameters.AddWithValue("@FirstName", _txtBoxFName.Text);
                        //_sqlCommand.Parameters.AddWithValue("@LastName", _txtBoxLName.Text);
                        //_sqlCommand.Parameters.AddWithValue("@Address", _txtBoxAddress.Text);
                        //_sqlCommand.Parameters.AddWithValue("@Email", _txtBoxEmail.Text);
                        //_sqlCommand.Parameters.AddWithValue("@UserName", _txtBoxUserName.Text);
                        //_sqlCommand.Parameters.AddWithValue("@Password", _txtBoxPassword.Text);
                        //_sqlCommand.Parameters.AddWithValue("@ZipCodeID", Int32.Parse(_dropDownListZipCode.SelectedValue));
                        //_sqlCommand.Parameters.AddWithValue("@RabattID", 1);

                        _sqlCommand.ExecuteNonQuery();
                        Response.Redirect("login.aspx");
                        Response.Write("Your registration was successfull!"); 
                    }
                }
                else
                {
                    string sql = $"INSERT INTO tblCustomer (FirstName,LastName, Address, Email, UserName, Password, ZipCodeID, RabattID) VALUES ('{_txtBoxFName.Text}','{_txtBoxLName.Text}', '{_txtBoxAddress.Text}','{_txtBoxEmail.Text}', '{_txtBoxUserName.Text}', '{_txtBoxPassword.Text}', {Int32.Parse(_dropDownListZipCode.SelectedValue)},{1})";
                    using (SqlCommand _sqlCommand = new SqlCommand(sql, con))
                    {
                        //_sqlCommand.Parameters.AddWithValue("@FirstName", _txtBoxFName.Text);
                        //_sqlCommand.Parameters.AddWithValue("@LastName", _txtBoxLName.Text);
                        //_sqlCommand.Parameters.AddWithValue("@Address", _txtBoxAddress.Text);
                        //_sqlCommand.Parameters.AddWithValue("@Email", _txtBoxEmail.Text);
                        //_sqlCommand.Parameters.AddWithValue("@UserName", _txtBoxUserName.Text);
                        //_sqlCommand.Parameters.AddWithValue("@Password", _txtBoxPassword.Text);
                        //_sqlCommand.Parameters.AddWithValue("@ZipCodeID", Int32.Parse(_dropDownListZipCode.SelectedValue));
                        //_sqlCommand.Parameters.AddWithValue("@RabattID", 1);

                        _sqlCommand.ExecuteNonQuery();
                        Response.Redirect("login.aspx");
                        Response.Write("Your registration was successfull!");
                    }
                }
            }

            catch (Exception ex)
            {

                Response.Write(ex.Message);



            }


        }
    }
}