<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WomenJackets.aspx.cs" Inherits="Webprojekt1.Pages.Womenclothes.WomenJackets" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
               <h3>Women Jackets</h3>
                </li>
                <li>
                    <a href="WomenTshirt.aspx">T-Shirt</a>
                </li>
                <li>
                    <a href="WomenSweatshirt.aspx">Sweatshirt</a>
                </li>
                <li>
                    <a href="WomenJeans.aspx">Jeans</a>
                </li>


            </ul>
        </div>
        
        <div class="container">
            <div class="row">
                <p class="lead">Women T-shirt</p>
                <div id="InsertedProductsWJ" runat="server" >

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



      
           <%-- <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Jacket/arrow_women_brown_leather_jacket_ikyt5.jpg" />

                        <div class="mask">
                            <h2>Fjällräven</h2>
                            <p>$80.00</p>
                            <a href="../ShoppingCartWomen/WomenCartJacket/WJacket1.aspx" class="more">More info</a>
                        </div>

                    </div>
                </div>
            </div>
            


            <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Jacket/white-womens-jacket-12.jpg" />

                        <div class="mask">
                            <h2>Cellbes</h2>
                            <p>$85.00</p>
                            <a href="../ShoppingCartWomen/WomenCartJacket/WJacket2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>


