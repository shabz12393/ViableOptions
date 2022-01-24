<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Item-Category.aspx.cs" Inherits="Admin_Item_Category" %>

<%@ Register Src="~/WebControls/Admin/Items/Categories.ascx" TagPrefix="uc1" TagName="ItemsCategory" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ItemsCategory runat="server" ID="ItemsCategory" />
</asp:Content>

