<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WomenSweatshirt.aspx.cs" Inherits="Webprojekt1.Pages.Womenclothes.WomenSweatshirt" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
               <h3>Women Sweatshirts</h3>
                </li>
                 <li>
                    <a href="WomenTshirt.aspx">T-Shirt</a>
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
                <p class="lead">Women Sweatshirt</p>
             <div id="InsertedProductsSws" runat="server" >

            </div>
               <%-- <div class="btn-group show-on-hover">
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

      
           <%-- <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/women/Sweatshirt/blue-inc-woman-womens-grey-panther-sweatshirt-p18952-15395_zoom.jpg" />

                        <div class="mask">
                            <h2>ONLY</h2>
                            <p>$50.00</p>
                            <a href="../ShoppingCartWomen/WomenCartTShirt/WTShirt1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartWomen/WomenCartTShirt/WTShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>

       --%>
   
</asp:Content>


