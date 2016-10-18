<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Male.aspx.cs" Inherits="Webprojekt1.Pages.Male" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/ProductStyle.css" rel="stylesheet" />
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <h3>Male Category</h3>
                </li>
                <li>
                    <a href="MaleClothes/MaleTshirts.aspx">T-shirts</a>
                </li>
                <li>
                    <a href="MaleClothes/MaleSweatshirts.aspx">Sweatshirts</a>
                </li>
                <li>
                    <a href="MaleClothes/MaleJeans.aspx">Jeans</a>
                </li>
                <li>
                    <a href="MaleClothes/MaleJackets.aspx">Jackets</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
                <p class="lead">Products</p>
                <div>
                    <div id="InsertedAllMen" runat="server" >

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
                    <img src="../../../Pictures/child/T-shirt/24.jpg" />
                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt1.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/45197503_xxl.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt2.aspx" class="more">More info</a>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/4f6b262346ff1.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt3.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/77.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$80.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt4.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/boys-tees-font-b-shirts-b-font-shark-girls-t-font-b-shirts-b-font-baby.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt5.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/dsdd.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt6.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/ggdg.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt7.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/grrg.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt8.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/halloween-splatter-mask-mens-t-shirt-subhw01.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt9.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/HDBTJ.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt10.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/htt.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt11.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/il_340x270.694750800_pvl2.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt12.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/lålålå.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt13.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/men-s-white-amp-black-contrast-t-shirt-41_t_300_300.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt14.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/mens-bright-orange-plain-y-neck-t-shirt-with-contrast-trim-p20003-20903_zoom.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt15.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/mens-white-paisley-pocket-t-shirt-p18970-15461_zoom.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt16.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/New-Arrival-Men-s-T-Shirt-Minions-Despicable-Me-Funny-font-b-Graphic-b-font-font.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt17.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/new-fashion-men-t-shirt-high-quality-3d-t-shirt-animal-cartoon-3d-printed-short-sleeve-t-shirt-tops-tees-men-t-shirt-m-4xl-1_large.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt18.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/new-fashion-men-tee-tops-t-shirts-custom.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt19.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/nionoin.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt20.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/original_colour-in-car-child-s-t-shirt.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt21.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/sh.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt22.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/shopping.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt23.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/sport-mens-tshirt-tryzub-ukrainian-t-shirts.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt24.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/tth.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt25.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/tthth.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt26.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../../Pictures/child/T-shirt/Denna.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$15.00</p>
                        <a href="ShoppingCartMen/MenCartTShirt/MTshirt27.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>








        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Sweatshirt/3caa141679d0786eeac67d5f3e7b7cbf.jpg" />

                    <div class="mask">
                        <h2>Lacoste</h2>
                        <p>$50.00</p>
                        <a href="ShoppingCartMen/MenCartSweatShirt/MSweatShirt1.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Sweatshirt/60f2cf198749d11d54c436685f2fe903.jpg" />

                    <div class="mask">
                        <h2>G-Star</h2>
                        <p>$70.00</p>
                        <a href="ShoppingCartMen/MenCartSweatShirt/MSweatShirt2.aspx" class="more">More info</a>
                    </div>
                </div>

            </div>
        </div>

        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Jeans/284732_main.jpg" />

                    <div class="mask">
                        <h2>Replay</h2>
                        <p>$110.00</p>
                        <a href="ShoppingCartMen/MenCartJeans/MJeans1.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Jeans/denim-hm.jpg" />

                    <div class="mask">
                        <h2>Lee</h2>
                        <p>$100.00</p>
                        <a href="ShoppingCartMen/MenCartJeans/MJeans2.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Jeans/denim-jeans-for-men-1.jpg" />

                    <div class="mask">
                        <h2>G-Star</h2>
                        <p>$90.00</p>
                        <a href="ShoppingCartMen/MenCartJeans/MJeans3.aspx" class="more">More info</a>
                    </div>

                </div>

            </div>
        </div>

        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Jacket/High-Quality-Pure-Cotton-font-b-Men-b-font-font-b-jacket-b-font-2016-Spring.jpg" />

                    <div class="mask">
                        <h2>Helly Hansen</h2>
                        <p>$80.00</p>
                      <a href="ShoppingCartMen/MenCartJacket/MJacket1.aspx" class="more">More info</a>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-1-4">
            <div class="cover left">
                <div class="show show-second">
                    <img src="../../Pictures/men/Jacket/2015-New-sport-hoodie-font-b-men-b-font-rain-font-b-jacket-b-font-winter.jpg" />

                    <div class="mask">
                        <h2>Henry Llyod</h2>
                        <p>$120.00</p>
                       <a href="ShoppingCartMen/MenCartJacket/Mjacket2.aspx" class="more">More info</a>
                    </div>
                </div>

            </div>
        </div>--%>



    </div>
</asp:Content>

