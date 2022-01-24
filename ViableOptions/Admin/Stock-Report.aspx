<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Stock-Report.aspx.cs" Inherits="Admin_Stock_Report" %>

<%@ Register Src="~/WebControls/Cashier/Reports/Stock.ascx" TagPrefix="uc1" TagName="Stock" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Stock runat="server" ID="Stock" />
</asp:Content>

