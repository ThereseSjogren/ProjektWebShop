<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChildTshirt.aspx.cs" Inherits="Webprojekt1.Pages.ChildClothes.ChildTshirt" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
             <h3>Child T-shirts</h3>
                </li>
              
            
                <li>
                    <a href="ChildSweatshirt.aspx">Sweatshirt</a>
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
             <p class="lead">Child T-Shirt</p>
                <div>
                    <div id="InsertedChildTshirt" runat="server" >

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
                        <img src="../../Pictures/child/T-shirt/boys-tees-font-b-shirts-b-font-shark-girls-t-font-b-shirts-b-font-baby.jpg" />
                        <div class="mask">
                            <h2>Fred Perry</h2>
                            <p>$15.00</p>
                            <a href="../ShoppingCartChild/ChildCartTShirt/CTShirt1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartChild/ChildCartTShirt/CTShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>



