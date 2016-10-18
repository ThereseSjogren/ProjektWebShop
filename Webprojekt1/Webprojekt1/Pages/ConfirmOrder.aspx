<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="Webprojekt1.Pages.ConfirmOrder" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/ConFirmOrderStyle.css" rel="stylesheet" type="text/css" />



 

    <table>

        <tr>
            <td class="text-center" style="width: 50px" ><strong>First name</strong>:</td>
            <td style="width: 229px">
                <asp:TextBox ID="TextBoxFName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="text-right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="First Name is required" ForeColor="Red" ControlToValidate="TextBoxFName"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="text-center" style="width: 50px"><strong>Last name</strong>:</td>
            <td style="width: 229px">
                <asp:TextBox ID="TextBoxLName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="text-right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ForeColor="Red" ControlToValidate="TextBoxLName"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="text-center" style="width: 50px"><strong>Email</strong>:</td>
            <td style="width: 229px">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
             
            </td>
            <td class="text-right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Name is required" ForeColor="Red" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="text-center" style="width: 50px"><strong>Adress</strong>:</td>
            <td style="width: 229px">
                <asp:TextBox ID="TextBoxAdress" runat="server" Width="180px"></asp:TextBox>
                   <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
            <td class="text-right">
            </td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Adress Name is required" ForeColor="Red" ControlToValidate="TextBoxAdress"></asp:RequiredFieldValidator>
        </tr>
    </table>

</asp:Content>
                                   
