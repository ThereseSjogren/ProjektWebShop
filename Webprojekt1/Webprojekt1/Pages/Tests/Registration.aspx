<%@ Page Title="" Language="C#" MasterPageFile="../../Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Webprojekt1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="margin-Top:10%; font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-style: normal; text-align: center; color: #000000" class="text-center"><strong>Registration Page</strong></h1>
    <hr />
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="width: 472px"><strong>First Name</strong>:</td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxFName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="First Name is required" ForeColor="Red" ControlToValidate="_txtBoxFName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 472px"><strong>Last Name:</strong></td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxLName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Last Name is requiered" ForeColor="Red" ControlToValidate="_txtBoxLName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 472px"><strong>Address:</strong></td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxAddress" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address is required." ForeColor="Red" ControlToValidate="_txtBoxAddress"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 472px"><b>Email:</b></td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxEmail" runat="server" TextMode="Email" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="_txtBoxEmail" ErrorMessage="Email is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="_txtBoxEmail" ErrorMessage="You must enter the valid email ID." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 472px"><strong>User Name:</strong></td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxUserName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="_txtBoxUserName" ErrorMessage="User Name is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 472px"><b>Password:</b></td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="_txtBoxPassword" ErrorMessage="Password is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 472px"><b>Confirm Password:</b></td>
            <td style="width: 229px">
                <asp:TextBox ID="_txtBoxRPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="_txtBoxRPassword" ErrorMessage="Confirme Password is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="_txtBoxPassword" ControlToValidate="_txtBoxRPassword" ErrorMessage="Both Password must be same." ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 472px"><strong>ZipCode:</strong></td>
            <td style="width: 229px">
                <asp:DropDownList ID="_dropDownListZipCode" runat="server" Width="180px">
                    <asp:ListItem>Zip code</asp:ListItem>
                    <asp:ListItem Value="1">30241</asp:ListItem>
                    <asp:ListItem Value="2">30593</asp:ListItem>
                    <asp:ListItem Value="3">30272</asp:ListItem>
                    <asp:ListItem Value="4">30271</asp:ListItem>
                    <asp:ListItem Value="5">30595</asp:ListItem>
                    <asp:ListItem Value="6">21764</asp:ListItem>
                    <asp:ListItem Value="7">20154</asp:ListItem>
                    <asp:ListItem Value="8">60574</asp:ListItem>
                    <asp:ListItem Value="9">40254</asp:ListItem>
                    <asp:ListItem Value="10">90265</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Zip Code is required." ForeColor="Red" ControlToValidate="_dropDownListZipCode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 472px">&nbsp;</td>
            <td style="width: 229px">&nbsp;</td>
            <td class="text-left">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 472px">&nbsp;</td>
            <td style="width: 229px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 472px">&nbsp;</td>
            <td style="width: 229px">
                <asp:Button ID="_btnSubmit" runat="server" OnClick="_btnSubmit_Click" Text="Submit" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <hr />
</asp:Content>
