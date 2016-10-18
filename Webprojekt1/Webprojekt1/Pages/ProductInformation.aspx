<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductInformation.aspx.cs" Inherits="Webprojekt1.Pages.ProductInformation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/ShoppingCartStyle.css" rel="stylesheet" type="text/css" />
    <div id="InsertedProduct" runat="server"></div>
   <%-- <div class="product group">
        <div class="col-1-2 product-image">
            <div class="bg"></div>
            <div class="indicator">
                <div class="dot one"></div>
                <div class="dot two"></div>
                <div class="dot three"></div>
            </div>
        </div>
        <div class="col-1-2 product-info">
            <h1>T-shirt
                <br />
                Tommy Hilfiger
            </h1>
            <h3>$40</h3>
       
            
                <asp:DropDownList ID="_dropDownQuantity" runat="server" Width="180px">
                        <asp:ListItem>Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
             <div>
                 <div>
                     <asp:Label ID="_lblTestSessionList" runat="server" Text=""></asp:Label>
                 </div>
            </div>
            
            <div class="add-btn"  Text="Add to cart"  OnClick="_btnAddToChart_Click" runat="server">
            
                </div>
            <p>
               
            </p>
           
            
        </div>
    </div>--%>
</asp:Content>
