<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Cashier_Events" %>

<%@ Register Src="~/WebControls/Cashier/Events.ascx" TagPrefix="uc1" TagName="Events" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Events runat="server" ID="Events" />
</asp:Content>

