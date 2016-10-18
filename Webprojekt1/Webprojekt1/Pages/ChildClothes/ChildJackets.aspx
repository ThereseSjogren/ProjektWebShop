<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChildJackets.aspx.cs" Inherits="Webprojekt1.Pages.ChildClothes.ChildJackets" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <h3>Child Jackets</h3>
                </li>
                <li>
                    <a href="ChildTshirt.aspx">T-Shirt</a>
                </li>
                <li>
                    <a href="ChildSweatshirt.aspx">Sweatshirt</a>
                </li>
                <li>
                    <a href="ChildJeans.aspx">Jeans</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
             <p class="lead">Products</p>
                <div>
                    <div id="InsertedChildJackets" runat="server" >

                    </div>
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



      
            <%--<div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/child/Jacket/Free-Shipping-Kid-Winter-Down-Jacket-Winter-Child-Coat-Warm-Unisex-Baby-Jacket-White-Duck-Down.jpg" />

                        <div class="mask">
                            <h2>Tommy Hilfiger</h2>
                            <p>$40.00</p>
                            <a href="../ShoppingCartChild/ChildCartJacket/CJacket1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartChild/ChildCartJacket/CJacket2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>--%>
           <%-- </div>--%>

       
    </div>
</asp:Content>


