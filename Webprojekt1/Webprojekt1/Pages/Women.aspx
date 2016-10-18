<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Women.aspx.cs" Inherits="Webprojekt1.Pages.Women" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
        <h3>Women Category</h3>
                </li>
                <li>
                    <a href="Womenclothes/WomenTshirt.aspx">T-Shirt</a>
                </li>
                <li>
                    <a href="Womenclothes/WomenSweatshirt.aspx">Sweatshirt</a>
                </li>
                <li>
                    <a href="Womenclothes/WomenJeans.aspx">Jeans</a>
                </li>
                <li>
                    <a href="Womenclothes/WomenJackets.aspx">Jacket</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
              <p class="lead">Products</p>
                <div>
                    <div id="InsertedAllWomen" runat="server" >

                    </div>
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



      
            <%--<div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Jeans/womens-blue-skinny-fit-plain-wash-jeans-p27729-49668_image.jpg" />

                        <div class="mask">
                            <h2>Mos Mosh</h2>
                            <p>$70.00</p>
                            <a href="ShoppingCartWomen/WomenCartJeans/WJeans1.aspx" class="more">More info</a>
                        </div>

                    </div>
                </div>
            </div>
            


            <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Jeans/womens-blue-shredded-skinny-jeans-p19857-20531_zoom.jpg" />

                        <div class="mask">
                            <h2>Pieces</h2>
                            <p>$65.00</p>
                            <a href="ShoppingCartWomen/WomenCartJeans/WJeans2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>


        
            <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Sweatshirt/blue-inc-woman-womens-grey-panther-sweatshirt-p18952-15395_zoom.jpg" />

                        <div class="mask">
                            <h2>ONLY</h2>
                            <p>$50.00</p>
                            <a href="ShoppingCartWomen/WomenCartSweatShirt/WSweatShirt1.aspx" class="more">More info</a>
                        </div>

                    </div>
                </div>
            </div>
            


            <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Sweatshirt/img-thing.jpg" />

                        <div class="mask">
                            <h2>Espirit</h2>
                            <p>$55.00</p>
                            <a href="ShoppingCartWomen/WomenCartSweatShirt/WSweatShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>
 <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/T-shirt/t-shirt-women-12.jpg" />

                        <div class="mask">
                            <h2>Pulz</h2>
                            <p>$15.00</p>
                            <a href="ShoppingCartWomen/WomenCartTShirt/WTShirt1.aspx" class="more">More info</a>
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
                            <a href="ShoppingCartWomen/WomenCartTShirt/WTShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>

       
            <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Jacket/arrow_women_brown_leather_jacket_ikyt5.jpg" />

                        <div class="mask">
                            <h2>Fjällräven</h2>
                            <p>$80.00</p>
                            <a href="ShoppingCartWomen/WomenCartJacket/WJacket1.aspx" class="more">More info</a>
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
                            <a href="ShoppingCartWomen/WomenCartJacket/WJacket2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>


       
    </div>
</asp:Content>


