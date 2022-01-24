<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Cashier_Customers" %>

<%@ Register Src="~/WebControls/Cashier/Bookings/Customers.ascx" TagPrefix="uc1" TagName="Customers" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Customers runat="server" ID="Customers" />
</asp:Content>

