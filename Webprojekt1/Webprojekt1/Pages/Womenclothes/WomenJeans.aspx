<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WomenJeans.aspx.cs" Inherits="Webprojekt1.Pages.Womenclothes.WomenJeans" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
           <h3>Women Jeans</h3>
                </li>
               <li>
                    <a href="WomenTshirt.aspx">T-Shirt</a>
                </li>
                <li>
                    <a href="WomenSweatshirt.aspx">Sweatshirt</a>
                </li>
              
                <li>
                    <a href="WomenJackets.aspx">Jacket</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
                <p class="lead">Women Jeans</p>
             <div id="InsertedProductsWJe" runat="server" >

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
                        <img src="../../Pictures/women/Jeans/womens-blue-skinny-fit-plain-wash-jeans-p27729-49668_image.jpg" />

                        <div class="mask">
                            <h2>Mos Mosh</h2>
                            <p>$70.00</p>
                            <a href="../ShoppingCartWomen/WomenCartJeans/WJeans1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartWomen/WomenCartJeans/WJeans2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
   
</asp:Content>


