<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Cashier_Profile" %>

<%@ Register Src="~/WebControls/User-Profile.ascx" TagPrefix="uc1" TagName="UserProfile" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:UserProfile runat="server" ID="UserProfile" />
</asp:Content>

