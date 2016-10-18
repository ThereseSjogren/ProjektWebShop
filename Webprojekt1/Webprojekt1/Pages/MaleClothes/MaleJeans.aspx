<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MaleJeans.aspx.cs" Inherits="Webprojekt1.Pages.MaleClothes.MaleJeans" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                                     <h3>Men Jeans</h3>
                </li>

                <li>
                    <a href="MaleTshirts.aspx">T-shirts</a>
                </li>
                <li>
                    <a href="MaleJeans.aspx">Sweatshirts</a>
                </li>
                <li>
                    <a href="MaleJackets.aspx">Jackets</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
              <p class="lead">Men Jeans</p>
                <div>
                    <div id="InsertedMaleJeans" runat="server" >

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
                        <img src="../../Pictures/men/Jeans/284732_main.jpg" />

                        <div class="mask">
                            <h2>Replay</h2>
                            <p>$110.00</p>
                            <a href="../ShoppingCartMen/MenCartJeans/MJeans1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartMen/MenCartJeans/MJeans2.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartMen/MenCartJeans/MJeans3.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>


