<%@ Page Language="C#" MasterPageFile="../../Site.Master" AutoEventWireup="true" CodeBehind="TestSite.aspx.cs" Inherits="Webprojekt1.Pages.TestSite" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/ProductStyle.css" rel="stylesheet" type="text/css" />

    <h1 style="margin-Top:10%" class="text-center"><strong>Test Site</strong></h1>
    <div ><a style="Width: 1%;padding:1px; background-color:blueviolet; border-color:white ;text-decoration:none;color:white"  href="Login.aspx">Login test site</a></div>
    <div ><a style="padding:1px; background-color:blueviolet; border-color:black; text-decoration:none;color:white" href="Registration.aspx">Register test site</a></div>
     <div ><a style="Width: 1% ;padding:1px; background-color:cornflowerblue; border-color:black; text-decoration:none;color:white" href="ProceedOrder.aspx">Proceed Order</a></div>

   

    <asp:GridView ID="_invGridView" runat="server" AllowPaging="true" PageSize="2" AllowSorting="True" DataKeyNames="ProductID" CellPadding="4" AutoGenerateColumns="false" ItemType="WebShopDAL.Models.Product" SelectMethod="GetAllProducts" DeleteMethod="DeleteProduct" UpdateMethod="UpdateProduct" EmptyDataText="There are no data records to display." BackColor="#66ccff">

        <Columns>
            <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" />
            <asp:BoundField DataField="ProductID" HeaderText="Reference" ReadOnly="true" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductBrand" HeaderText="Product Brand" SortExpression="ProductBrand" />
            <asp:BoundField DataField="PriceUnit" HeaderText="PriceUnit" SortExpression="PriceUnit" />
            <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" SortExpression="ProductDescription" />
            <asp:BoundField DataField="Color" HeaderText="Color" ReadOnly="true" SortExpression="ProductID" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
        </Columns>
    </asp:GridView>

    <%--<asp:GridView ID="_singleProductGridView" runat="server"  DataKeyFrames="ProductID"  AutoGenerateColumns="false" ItemType="WebShopDAL.Models.Product" SelectMethod="GetProductDetails" >
                        <Columns>
                             <asp:TemplateField>
                                <itemtemplate>
                                     <b>Brand :</b> <%# Eval("ProductBrand") %>
                                     <br>
                                     <b>Price :</b> <%# Eval("PriceUnit") %>
                                     <br>
                                     <b>Name   :</b> <%# Eval("ProductDescription")%>
                                     <br>
                                     <b>Color  :</b> <%# Eval("Color")%>
                                     <br />
                                     <b>Color  :</b> <%# Eval("Size")%>
                                     <br>
                                   <img src="../Pictures/ProductPictures/018390-0082.jpg" />
                                 </itemtemplate>
                                </asp:TemplateField>
                        </Columns>
                    </asp:GridView>--%>
                <%--</div>

            </div>
        </div>
    </div>--%>
</asp:Content>


