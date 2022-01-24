<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Admin_Payments" %>

<%@ Register Src="~/WebControls/Cashier/Payments/Payments.ascx" TagPrefix="uc1" TagName="Payments" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Payments runat="server" ID="Payments" />
</asp:Content>

