<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Webprojekt1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="12" class="container">
        <div class="row">
            <div class="col-lg-6">
                <div></div>
                <div class="form-group">
                    <label for="MailTo">Our Mail</label>
                    <div class="input-group">
                        Our Mail:<asp:Label ID="lblOurMAil" runat="server" Text="contactUs@website.se"></asp:Label>
                        <%--<input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>--%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">Your Name:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <%--<input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>--%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Your Email:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtInputEmail" runat="server" ></asp:TextBox>
                        <%--<input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Enter Email" required  >--%>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtInputEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Subject">Subject:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                        <%--<input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>--%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage">Message:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtMessageBody" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <%--<textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>--%>
                    </div>
                    <div class="form-group">
                        <label for="WrongMessage"></label>
                        <div class="input-group">
                            <asp:Label ID="lblWrongmessage" runat="server" Text=""></asp:Label>
                            <%--<textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>--%>
                        </div>
                        <asp:Button ID="btnSendEmail" runat="server" Text="Send!" OnClick="btnSendEmail_Click" />
                        <%--<input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">--%>
                    </div>
                    <hr class="featurette-divider hidden-lg">
                    <div class="col-lg-5 col-md-push-1">
                        <address>

                            <p class="lead">
                                Helsingborg S 26458<br>
                                Phone: 042-00000<br>
                            </p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
