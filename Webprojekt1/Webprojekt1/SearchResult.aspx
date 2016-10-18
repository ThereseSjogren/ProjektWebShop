<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Webprojekt1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Filterbox.js"></script>
    <link href="../Content/ProductStyle.css" rel="stylesheet" type="text/css" />
    <div id="wrapper">
        <%--<div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">Men Category
                    </a>
                </li>
                <li>
                    <a href="MaleClothes/MaleTshirts.aspx">T-Shirt</a>
                    <%--<a href="Tshirt.aspx">T-Shirt</a>--%>
                <%--</li>
                <li>
                    <a href="MaleClothes/MaleSweatshirts.aspx">Sweatshirt</a>
                    <%--<a href="Sweatshirt.aspx">Sweatshirt</a>--%>
                <%--</li>
                <li>
                    <a href="MaleClothes/MaleJeans.aspx">Jeans</a>
                    <%--<a href="Trouses.aspx">Jeans</a>--%>
                <%--</li>
                <li>--%>
                   <%-- <a href="MaleClothes/MaleJackets.aspx">Jacket</a>--%>
                  <%--<a href="Jackets.aspx">Jacket</a>--%>
               <%-- </li>
        <%--    </ul>--%>
       <%-- </div>--%>
        <div class="container">
            <div class="row">
                <p class="lead">Search Result</p>
                <div>
                    <div id="InsertedProducts" runat="server" >

                    </div>
                </div>
                </div>
            </div>
        </div>
</asp:Content>
