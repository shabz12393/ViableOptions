<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Control_Users" %>

<%@ Register Src="~/WebControls/Control/Users.ascx" TagPrefix="uc1" TagName="Users" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Users runat="server" id="Users" />
</asp:Content>

