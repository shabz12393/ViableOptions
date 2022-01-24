<%@ Page Title="" Language="C#" MasterPageFile="~/Form.master" AutoEventWireup="true" CodeFile="book-items.aspx.cs" Inherits="Cashier_Add_book_items" %>

<%@ Register Src="~/WebControls/Cashier/Add/book-items.ascx" TagPrefix="uc1" TagName="bookitems" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:bookitems runat="server" ID="bookitems" />
</asp:Content>

