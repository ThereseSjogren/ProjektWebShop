<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MaleSweatshirts.aspx.cs" Inherits="Webprojekt1.Pages.MaleClothes.MaleSweatshirts" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../../Content/ProductStyle.css" rel="stylesheet" />
    <link href="../../Content/Childstyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                       <h3>Men Sweatshirts</h3>
                </li>


                <li>
                    <a href="MaleTshirts.aspx">T-shirts</a>
                </li>
                <li>
                    <a href="MaleJeans.aspx">Jeans</a>
                </li>
                <li>
                    <a href="MaleJackets.aspx">Jackets</a>
                </li>


            </ul>
        </div>
        <div class="container">
            <div class="row">
             <p class="lead">Men SweatShirts</p>
                <div>
                    <div id="InsertedMaleSweatShirts" runat="server" >

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



      
           <%-- <div class="col-1-4">
                <div class="cover left">
                    <div class="show show-second">
                        <img src="../../Pictures/men/Sweatshirt/3caa141679d0786eeac67d5f3e7b7cbf.jpg" />

                        <div class="mask">
                            <h2>Lacoste</h2>
                            <p>$50.00</p>
                            <a href="../ShoppingCartMen/MenCartSweatShirt/MSweatShirt1.aspx" class="more">More info</a>
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
                            <a href="../ShoppingCartMen/MenCartSweatShirt/MSweatShirt2.aspx" class="more">More info</a>
                        </div>

                    </div>

                </div>
            </div>--%>

       
    </div>
</asp:Content>


