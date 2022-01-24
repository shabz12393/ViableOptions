<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Refunds.aspx.cs" Inherits="Admin_Refunds" %>

<%@ Register Src="~/WebControls/Cashier/Payments/Refunds.ascx" TagPrefix="uc1" TagName="Refunds" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Refunds runat="server" ID="Refunds" />
</asp:Content>

