<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Cashier_Category" %>

<%@ Register Src="~/WebControls/Cashier/Items/Item-Category.ascx" TagPrefix="uc1" TagName="ItemCategory" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ItemCategory runat="server" ID="ItemCategory" />
</asp:Content>

