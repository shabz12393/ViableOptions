<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Default.ascx.cs" Inherits="WebControls_Default" %>


<div class="card mx-auto mt-4" style="width: 500px">
    <div class="card-header font-weight-bold">
        <h5>Login</h5>
    </div>
    <div class="card-body mx-auto">

        <div class="row">
            <dx:ASPxImage ID="imgLogin" runat="server" Height="254px" ImageUrl="~/Images/ic_logo.png" ShowLoadingImage="True" Width="364px">
            </dx:ASPxImage>
        </div>
        <div class="row">
            <dx:ASPxTextBox ID="tbUserName" runat="server" ClientInstanceName="userNameTb" 
                Height="40px" NullText="Username" Width="100%" HelpText="Username">
                <ValidationSettings ErrorDisplayMode="Text" ErrorText="Username required" ErrorTextPosition="Bottom">
                    <RequiredField IsRequired="True" />
                </ValidationSettings>
                <HelpTextSettings Position="Top">
                </HelpTextSettings>
                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                </HelpTextStyle>
                <FocusedStyle Border-BorderColor="Orange">
                </FocusedStyle>
            </dx:ASPxTextBox>
        </div>
        <div class="row">
            <dx:ASPxTextBox ID="tbPassword" runat="server" ClientInstanceName="passwordTb" 
                Height="40px" NullText="Password" Password="True" Width="100%" HelpText="Password">
                <ValidationSettings ErrorDisplayMode="Text" ErrorText="Password required" ErrorTextPosition="Bottom">
                    <RequiredField IsRequired="True" />
                </ValidationSettings>
                <HelpTextSettings Position="Top">
                </HelpTextSettings>
                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                </HelpTextStyle>
                <FocusedStyle Border-BorderColor="Orange">
                </FocusedStyle>
            </dx:ASPxTextBox>
        </div>
        <div class="row">
            <dx:ASPxButton ID="btnLogin" runat="server" Font-Bold="True" Height="40px" Text="Sign In" Width="100%" 
                OnClick="btnLogin_Click">
                 </dx:ASPxButton>
        </div>
        <div>
            <dx:ASPxLabel ID="lblError" runat="server" ForeColor="Red">
            </dx:ASPxLabel>
        </div>
    </div>
</div>
