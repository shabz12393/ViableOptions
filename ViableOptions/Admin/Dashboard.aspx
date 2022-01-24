<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<%@ Register Src="~/WebControls/Admin/Dashboard/Charts.ascx" TagPrefix="uc1" TagName="Charts" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Charts runat="server" ID="Charts" />
</asp:Content>

