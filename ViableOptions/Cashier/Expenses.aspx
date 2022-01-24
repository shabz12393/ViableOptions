<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Expenses.aspx.cs" Inherits="Cashier_Expenses" %>

<%@ Register Src="~/WebControls/Cashier/Finance/Expenses.ascx" TagPrefix="uc1" TagName="Expenses" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Expenses runat="server" ID="Expenses" />
</asp:Content>

