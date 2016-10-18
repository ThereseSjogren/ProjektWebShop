<%@ Page Title="" Language="C#" MasterPageFile="../../Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webprojekt1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-3">
        </div>
        <div style="margin-top:10%" class="col-md-6">
            <h1 style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-style: normal; text-align: center; color: #000000" class="text-center"><strong>Login Page</strong></h1>
            <br />
            <hr />

            

            <table class="nav-justified">
                <tr>
                    <td class="text-right" style="width: 336px; height: 29px;"><span style="text-align: center"><strong style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-style: normal; text-align: center; color: #000000">User name:</strong></span></td>
                    <td style="width: 296px; height: 29px;">
                        <asp:TextBox ID="_txtBoxUserName" runat="server" Width="252px" Height="30px"></asp:TextBox>
                    </td>
                    <td style="width: 174px; height: 29px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="_txtBoxUserName" ErrorMessage="Please enter user name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 336px; height: 39px;"></td>
                    <td style="width: 296px; height: 39px;"></td>
                    <td style="width: 174px; height: 39px;"></td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 336px; height: 51px;"><span style="text-align: center"><strong style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-style: normal; text-align: center; color: #000000">Password:</strong></span></td>
                    <td style="width: 296px; height: 51px;">
                        <asp:TextBox ID="_txtBoxPassword" runat="server" Width="252px" Height="30px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="width: 174px; height: 51px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="_txtBoxPassword" ErrorMessage="Please enter the password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 336px; height: 60px"></td>
                    <td style="width: 296px; height: 60px">
                        <asp:Button ID="btnLogin" runat="server" Text="LogIn" Width="138px"  style="text-align: center;font-size: large; font-family: Arial, Helvetica, sans-serif; font-style: normal; text-align: center; color: #000000" Height="36px" Font-Bold="True" Font-Size="Small" OnClick="btnLogin_Click"/>
                    </td>
                    <td style="height: 60px; width: 174px;"></td>
                </tr>
            </table>
            <br />
            <hr />
        </div>
    </div>
    

</asp:Content>
