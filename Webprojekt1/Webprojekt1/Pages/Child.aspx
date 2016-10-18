<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="child.aspx.cs" Inherits="Webprojekt1.Pages.Child" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <h3>Child Category</h3>
                </li>
                <li>
                    <a href="ChildClothes/ChildTshirt.aspx">T-Shirt</a>
                </li>
                <li>
                    <a href="ChildClothes/ChildSweatshirt.aspx">Sweatshirt</a>
                </li>
                <li>
                    <a href="ChildClothes/ChildJeans.aspx">Jeans</a>
                </li>
                <li>
                    <a href="ChildClothes/ChildJackets.aspx">Jacket</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
                <p class="lead">Child</p>
                <div>
                    <div id="InsertedAllChild" runat="server" >

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
                    <img src="../../Pictures/child/Sweatshirt/images1VUSFMVT.jpg" />

                    <div class="mask">
                        <h2>Lyod</h2>
                        <p>$48.00</p>
                        <a href="ShoppingCartChild/ChildCartSweatShirt/CSweatShirt1.aspx" class="more">More info</a>
                    </div>

                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/Sweatshirt/New-2016-kids-clothes-font-b-children-b-font-hoodie-long-sleeve-boys-font-b-sweatshirt.jpg" />
                    <div class="mask">
                        <h2>Hubba</h2>
                        <p>$45.00</p>
                        <a href="ShoppingCartChild/ChildCartSweatShirt/CSweatShirt2.aspx" class="more">More info</a>
                    </div>

                </div>

            </div>
        </div>--%>
        <%--<div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/T-shirt/boys-tees-font-b-shirts-b-font-shark-girls-t-font-b-shirts-b-font-baby.jpg" />
                    <div class="mask">
                        <h2>Fred Perry</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartChild/ChildCartTShirt/CTShirt1.aspx" class="more">More info</a>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/T-shirt/original_colour-in-car-child-s-t-shirt.jpg" />

                    <div class="mask">
                        <h2>Gant</h2>
                        <p>$10.00</p>
                        <a href="ShoppingCartChild/ChildCartTShirt/CTShirt2.aspx" class="more">More info</a>
                    </div>

                </div>

            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/Jeans/Wholesale-2015-kids-pants-Boys-jeans-pant-kids-denim-trousers-baby-jeans-clothing-child-pant-baby.jpg" />

                    <div class="mask">
                        <h2>Levis</h2>
                        <p>$70.00</p>
                        <a href="ShoppingCartChild/ChildCartJeans/CJeans1.aspx" class="more">More info</a>
                    </div>

                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/Jeans/gp621440-00vliv01.jpg" />

                    <div class="mask">
                        <h2>Replay</h2>
                        <p>$60.00</p>
                        <a href="ShoppingCartChild/ChildCartJeans/CJeans2.aspx" class="more">More info</a>
                    </div>

                </div>

            </div>
        </div>

        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/Jacket/Free-Shipping-Kid-Winter-Down-Jacket-Winter-Child-Coat-Warm-Unisex-Baby-Jacket-White-Duck-Down.jpg" />

                    <div class="mask">
                        <h2>Tommy Hilfiger</h2>
                        <p>$40.00</p>
                        <a href="ShoppingCartChild/ChildCartJacket/CJacket1.aspx" class="more">More info</a>
                    </div>

                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/child/Jacket/lhotse_kids_jacket_bright_blue.jpg" />

                    <div class="mask">
                        <h2>Peak Performance</h2>
                        <p>$50.00</p>
                        <a href="ShoppingCartChild/ChildCartJacket/CJacket2.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
</asp:Content>



