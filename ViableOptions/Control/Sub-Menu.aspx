<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sub-Menu.aspx.cs" Inherits="Control_Sub_Menu" %>

<%@ Register Src="~/WebControls/Control/Menu/Sub-Menu.ascx" TagPrefix="uc1" TagName="SubMenu" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:SubMenu runat="server" id="SubMenu" />
</asp:Content>

