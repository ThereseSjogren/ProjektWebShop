<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WomenTshirt.aspx.cs" Inherits="Webprojekt1.Pages.Womenclothes.WomenTshirt" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                   <h3>Women T-shirts</h3>
                </li>
               
              
                <li>
                    <a href="WomenSweatshirt.aspx">Sweatshirt</a>
                </li>
                <li>
                    <a href="WomenJeans.aspx">Jeans</a>
                </li>
                <li>
                    <a href="WomenJackets.aspx">Jacket</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
              <div id="InsertedProductsTs" runat="server" >
                  <p class="lead">Women T-Shirt</p>
            </div>
                <%--<div class="btn-group show-on-hover">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        Size <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Small</a></li>
                        <li><a href="#">Medium</a></li>
                        <li><a href="#">Large</a></li>
                            
                    </ul>
                </div>
                <div class="btn-group show-on-hover">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        Color <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Black</a></li>
                        <li><a href="#">Blue</a></li>
                        <li><a href="#">Yellow</a></li>
                    </ul>
                </div>--%>
            </div>
        </div>

 </div>

      
            <%--<div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/T-shirt/t-shirt-women-12.jpg" />

                        <div class="mask">
                            <h2>Pulz</h2>
                            <p>$15.00</p>
                            <a href="../ShoppingCartWomen/WomenCartTShirt/WTShirt1.aspx" class="more">More info</a>
                        </div>

                    </div>
                </div>
            </div>
            


            <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/T-shirt/untitled.png" />

                        <div class="mask">
                            <h2>Vero Moda</h2>
                            <p>$10.00</p>
                            <a href="../ShoppingCartWomen/WomenCartTShirt/WTShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
   
</asp:Content>



