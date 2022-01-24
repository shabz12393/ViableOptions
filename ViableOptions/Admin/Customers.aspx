<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Admin_Customers" %>

<%@ Register Src="~/WebControls/Admin/Customers.ascx" TagPrefix="uc1" TagName="Customers" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Customers runat="server" ID="Customers" />
</asp:Content>

