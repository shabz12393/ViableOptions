<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payment-Modes.aspx.cs" Inherits="Admin_Payment_Modes" %>

<%@ Register Src="~/WebControls/Admin/Payments/Payment-Modes.ascx" TagPrefix="uc1" TagName="PaymentModes" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:PaymentModes runat="server" ID="PaymentModes" />
</asp:Content>

