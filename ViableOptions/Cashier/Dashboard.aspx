<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master"  EnableEventValidation="false" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Cashier_Dashboard" %>

<%@ Register Src="~/WebControls/Cashier/Dashboard.ascx" TagPrefix="uc1" TagName="Dashboard" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Dashboard runat="server" ID="Dashboard" />
</asp:Content>

