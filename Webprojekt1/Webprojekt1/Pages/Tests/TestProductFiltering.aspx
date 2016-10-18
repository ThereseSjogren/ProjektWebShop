<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestProductFiltering.aspx.cs" Inherits="Webprojekt1.Pages.Tests.TestProductFiltering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="_dropDownListSize" runat="server">
            <asp:ListItem>Size</asp:ListItem>
            <asp:ListItem Value="S">Small</asp:ListItem>
            <asp:ListItem Value="M">Medium</asp:ListItem>
            <asp:ListItem Value="L">Large</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="_dropDownListColor" runat="server">
            <asp:ListItem>Color</asp:ListItem>
            <asp:ListItem>Black</asp:ListItem>
            <asp:ListItem>Yellow</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="_btnSubmit" runat="server" Text="Submit" OnClick="_btnSubmit_Click" />
    <asp:GridView ID="_gridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WebbShopConnectionString %>" SelectCommand="SELECT [ProductID], [Color], [Size] FROM [tblProduct] WHERE (([Size] = @Size) AND ([Color] = @Color))">
            <SelectParameters>
                <asp:ControlParameter ControlID="_dropDownListSize" Name="Size" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="_dropDownListColor" Name="Color" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
