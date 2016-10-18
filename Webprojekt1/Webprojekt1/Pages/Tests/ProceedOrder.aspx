<%@ Page Title="" Language="C#" MasterPageFile="../../Site.Master" AutoEventWireup="true" CodeBehind="ProceedOrder.aspx.cs" Inherits="Webprojekt1.ProceedOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:10%">
    <h1 style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-style: normal; text-align: center; color: #000000" class="text-center"><strong>Proceed order</strong></h1>
    </div>
    <br />
    <hr />
    <br />
    <div>
        
        <table class="nav-justified">
            <tr>
                <td style="text-align: right; width: 373px"><b>Select Category:</b></td>
                <td>
                    <asp:DropDownList ID="_dropDownGender" runat="server" Width="180px">
                        <asp:ListItem>Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Child</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; height: 20px; width: 373px"><strong>Select type:</strong></td>
                <td style="height: 20px">
                    <asp:DropDownList ID="_dropDownCategory" runat="server" Width="180px">
                        <asp:ListItem>Category</asp:ListItem>
                        <asp:ListItem>T-Shirt</asp:ListItem>
                        <asp:ListItem>Jacket</asp:ListItem>
                        <asp:ListItem>Jeans</asp:ListItem>
                        <asp:ListItem>Sweatshirt</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px"><b>Select Size:</b></td>
                <td>
                    <asp:DropDownList ID="_dropDownSize" runat="server" Width="180px">
                        <asp:ListItem>Size</asp:ListItem>
                        <asp:ListItem>XS</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; height: 24px; width: 373px"><b>Select Color:</b></td>
                <td style="height: 24px">
                    <asp:DropDownList ID="_dropDownColor" runat="server" Width="180px">
                        <asp:ListItem>Color</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px"><strong>Quantity:</strong></td>
                <td>
                    <asp:TextBox ID="_txtBoxQuantity" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>
                    <asp:Button ID="_btnSubmitOrder" runat="server" Font-Bold="True" OnClick="_btnSubmitOrder_Click" Text="Get Product" Width="180px" />
                </td>
            </tr>
        </table>
        
    </div>
    <div>
        <asp:GridView ID="GridViewGetProduct" runat="server"></asp:GridView>
    </div>
    <br />
    <hr />
</asp:Content>
