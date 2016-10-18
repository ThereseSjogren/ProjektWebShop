<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChildJeans.aspx.cs" Inherits="Webprojekt1.Pages.ChildClothes.ChildJeans" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <h3>Child Jeans</h3>
                </li>
                <li>
                    <a href="ChildTshirt.aspx">T-Shirt</a>
                </li>
                <li>
                    <a href="ChildSweatshirt.aspx">Sweatshirt</a>
                </li>
                <li>
                    <a href="ChildJackets.aspx">Jacket</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
               <p class="lead">Child Jeans</p>
                <div>
                    <div id="InsertedChildJackets" runat="server" >

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
                        <img src="../../Pictures/child/Jeans/Wholesale-2015-kids-pants-Boys-jeans-pant-kids-denim-trousers-baby-jeans-clothing-child-pant-baby.jpg" />

                        <div class="mask">
                            <h2>Levis</h2>
                            <p>$70.00</p>
                            <a href="../ShoppingCartChild/ChildCartJeans/CJeans1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartChild/ChildCartJeans/CJeans2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>



