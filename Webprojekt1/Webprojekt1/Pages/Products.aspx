<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Webprojekt1.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <%--<link href="../Content/ProductStyle.css" rel="stylesheet" type="text/css" />--%>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">Men Category
                    </a>
                </li>
                <li>
                    <a href="MaleClothes/MaleTshirts.aspx">T-Shirt</a>
                    <%--<a href="Tshirt.aspx">T-Shirt</a>--%>
                </li>
                <li>
                    <a href="MaleClothes/MaleSweatshirts.aspx">Sweatshirt</a>
                    <%--<a href="Sweatshirt.aspx">Sweatshirt</a>--%>
                </li>
                <li>
                    <a href="MaleClothes/MaleJeans.aspx">Jeans</a>
                    <%--<a href="Trouses.aspx">Jeans</a>--%>
                </li>
                <li>
                    <a href="MaleClothes/MaleJackets.aspx">Jacket</a>
                  <%--<a href="Jackets.aspx">Jacket</a>--%>
                </li>
            </ul>
        </div>
        <div class="container">
            <div class="row">
                <p class="lead">Products</p>
                <div>
                    <div id="InsertedProducts" runat="server" >

                    </div>
                </div>
                <div>
                    <br />
                </div>
                <div>
                    
                </div>
            </div>
            <div class="row1">
            

            
           <%--<div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                            <br />
                        Material: 70% Ull, 
                                 
                        
                                 <br />
                        20% Polyester, 4% Nylon,
                                    <br />
                        3% Viskos Dubbelknäppt 
                         <br />
                        Snörfodrad kant Avtagbart
                                 <br />
                        foder Tål ej maskin- eller 
                                      <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                  <br />
                        Material: 70% Ull, 
                             <br />
                        20% Polyester, 4% Nylon,
                                    <br />
                        3% Viskos Dubbelknäppt 
                              <br />
                        Snörfodrad kant Avtagbart
                                 <br />
                        foder Tål ej maskin- eller 
                                       <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                   <br />
                        Material: 70% Ull, 
                              <br />
                        20% Polyester, 4% Nylon,
                                <br />
                        3% Viskos Dubbelknäppt 
                              <br />
                        Snörfodrad kant Avtagbart
                                <br />
                        foder Tål ej maskin- eller 
                                       <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                  <br />
                        Material: 70% Ull, 
                               <br />
                        20% Polyester, 4% Nylon,
                                 <br />
                        3% Viskos Dubbelknäppt 
                                   <br />
                        Snörfodrad kant Avtagbart
                                 <br />
                        foder Tål ej maskin- eller 
                                   <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                <br />
                        Material: 70% Ull, 
                                   <br />
                        20% Polyester, 4% Nylon,
                              <br />
                        3% Viskos Dubbelknäppt 
                              <br />
                        Snörfodrad kant Avtagbart
                                  <br />
                        foder Tål ej maskin- eller 
                                   <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                  <br />
                        Material: 70% Ull, 
                                    <br />
                        20% Polyester, 4% Nylon,
                           <br />
                        3% Viskos Dubbelknäppt 
                                 <br />
                        Snörfodrad kant Avtagbart
                               <br />
                        foder Tål ej maskin- eller 
                                 <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                             <br />
                        Material: 70% Ull, 
                               <br />
                        20% Polyester, 4% Nylon,
                                     <br />
                        3% Viskos Dubbelknäppt 
                           <br />
                        Snörfodrad kant Avtagbart
                                   <br />
                        foder Tål ej maskin- eller 
                                  <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                   <br />
                        Material: 70% Ull, 
                            <br />
                        20% Polyester, 4% Nylon,
                                    <br />
                        3% Viskos Dubbelknäppt 
                                  <br />
                        Snörfodrad kant Avtagbart
                           <br />
                        foder Tål ej maskin- eller 
                                  <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                              <br />
                        Material: 70% Ull, 
                                     <br />
                        20% Polyester, 4% Nylon,
                            <br />
                        3% Viskos Dubbelknäppt 
                                <br />
                        Snörfodrad kant Avtagbart
                                  <br />
                        foder Tål ej maskin- eller 
                                   <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                                  <br />
                        Material: 70% Ull, 
                             <br />
                        20% Polyester, 4% Nylon,
                                    <br />
                        3% Viskos Dubbelknäppt 
                                <br />
                        Snörfodrad kant Avtagbart
                               <br />
                        foder Tål ej maskin- eller 
                                     <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                               <br />
                        Material: 70% Ull, 
                                <br />
                        20% Polyester, 4% Nylon,
                                <br />
                        3% Viskos Dubbelknäppt 
                             <br />
                        Snörfodrad kant Avtagbart
                                       <br />
                        foder Tål ej maskin- eller 
                                   <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 box">
                <div class="cover left">
                    <h2 class="title">Tommy Hilfiger</h2>
                    <p class="intro">
                        Produktinformation
                               <br />
                        Material: 70% Ull, 
                                   <br />
                        20% Polyester, 4% Nylon,
                             <br />
                        3% Viskos Dubbelknäppt 
                                <br />
                        Snörfodrad kant Avtagbart
                                <br />
                        foder Tål ej maskin- eller 
                                    <br />
                        handtvätt.Kemtvätt
                    </p>
                    <div class="btn">
                        <a href="ShoppingCart.aspx">Info<br />
                            40 $
                        </a>
                    </div>
                </div>
            </div>--%>
            <hr />
            <div style="margin-right: 5px; margin-top: 326px">
                        
            </div>
        </div>
    </div>
    </div>
   
</asp:Content>


