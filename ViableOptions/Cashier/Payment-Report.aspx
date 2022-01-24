<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payment-Report.aspx.cs" Inherits="Cashier_Payment_Report" %>

<%@ Register Src="~/WebControls/Cashier/Reports/Payments.ascx" TagPrefix="uc1" TagName="Payments" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Payments runat="server" ID="Payments" />
</asp:Content>

