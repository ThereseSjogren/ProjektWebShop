<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChildSweatshirt.aspx.cs" Inherits="Webprojekt1.Pages.ChildClothes.ChildSweatshirt" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                     <h3>Child Sweatshirts</h3>
                </li>
                 <li>
                    <a href="ChildTshirt.aspx">T-Shirt</a>
                </li>
               
                <li>
                    <a href="ChildJeans.aspx">Jeans</a>
                </li>
                <li>
                    <a href="ChildJackets.aspx">Jacket</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
             <p class="lead">Child Sweatshirt</p>
                <div>
                    <div id="InsertedChildSweatShirts" runat="server" >

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
                        <img src="../../Pictures/child/Sweatshirt/images1VUSFMVT.jpg" />

                        <div class="mask">
                            <h2>Lyod</h2>
                            <p>$48.00</p>
                            <a href="../ShoppingCartChild/ChildCartSweatShirt/CSweatShirt1.aspx" class="more">More info</a>

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
                            <a href="../ShoppingCartChild/ChildCartSweatShirt/CSweatShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>


