<%@ Page Language="C#" MasterPageFile="../../Site.Master" AutoEventWireup="true" CodeBehind="MaleJackets.aspx.cs" Inherits="Webprojekt1.Pages.MaleClothes.MaleJackets" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                                 <h3>Men Jackets</h3>
                </li>
                

                <li>
                    <a href="MaleTshirts.aspx">T-shirts</a>
                </li>
                <li>
                    <a href="MaleJeans.aspx">Sweatshirts</a>
                </li>
                <li>
                    <a href="MaleJeans.aspx">Jeans</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
             <p class="lead">Men Jacket</p>
                <div>
                    <div id="InsertedMaleJackets" runat="server" >
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



      
           <%-- <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/men/Jacket/High-Quality-Pure-Cotton-font-b-Men-b-font-font-b-jacket-b-font-2016-Spring.jpg" />

                        <div class="mask">
                            <h2>Helly Hansen</h2>
                            <p>$80.00</p>
                            <a href="../ShoppingCartMen/MenCartJacket/MJacket1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartMen/MenCartJacket/Mjacket2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>


