<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Low-Stock.aspx.cs" Inherits="Cashier_Low_Stock" %>

<%@ Register Src="~/WebControls/Cashier/Stock/Low-Stock.ascx" TagPrefix="uc1" TagName="LowStock" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:LowStock runat="server" ID="LowStock" />
</asp:Content>

