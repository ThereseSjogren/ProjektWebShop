<%@ Page Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WJacket1.aspx.cs" Inherits="Webprojekt1.Pages.ShoppingCartWomen.WomenCartJacket.WJacket1" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="../../../Content/ShoppingCartStyle.css" rel="stylesheet" />

    <div class="product group">
        <div class="col-md-3 product-image">
    <img src="../../../Pictures/women/Jacket/arrow_women_brown_leather_jacket_ikyt5.jpg" />

      
        </div>
        <div class="col-md-3 product-info">
            <h1>Jacket
                <br />
               Fjällräven 
            </h1>
            <h3>$80.00</h3>
            <div class="select-dropdown">
                <select>
                    <option value="size">Size</option>
                    <option value="size">Small</option>
                    <option value="size">Medium</option>
                    <option value="size">Large</option>
            
                </select>
            </div>
            <div class="select-dropdown">
                <select>
                    <option value="quantity">Quantity</option>
                    <option value="quantity">1</option>
                    <option value="quantity">2</option>
                    <option value="quantity">3</option>
                    <option value="quantity">4</option>
                    <option value="quantity">5</option>
                    <option value="quantity">6</option>
                    <option value="quantity">7</option>
                    <option value="quantity">8</option>
                    <option value="quantity">9</option>
                </select>
            </div>
            <div class="select-dropdown">
                <select>
                    <option value="color">Color</option>
                    <option value="color">Black</option>
                    <option value="color">Yellow</option>
                    <option value="color">Blue</option>
                </select>
            </div>
            <a href="#" class="add-btn">Add to cart</a>
            <p>
                Thomas Jacob Hilfiger founded his eponymous
                 label Tommy Hilfiger in 1985, expanding the 
                line to include clothing, accessories, luggage
                 and fragrance. Known for his classic American 
                outlook and signature 'preppy with a twist' 
                aesthetic, Tommy Hilfiger's timeless red, white 
                and blue logo is seen across an edit of accessories, 
                sunglasses and underwear.
            </p>

            <ul>
                <li>Soft-touch jersey</li>
                <li>Crew-neck</li>
                <li>Plain design</li>
                <li>Logo detail </li>
                <li>95% Cotton, 5% Elastane</li>
                <li>Machine wash</li>
                <li>Our model wears a size Medium</li>
            </ul>

        </div>


    
        </div>

</asp:Content>