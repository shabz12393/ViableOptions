<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Expenses.aspx.cs" Inherits="Admin_Expenses" %>

<%@ Register Src="~/WebControls/Admin/Finance/Expenses.ascx" TagPrefix="uc1" TagName="Expenses" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Expenses runat="server" id="Expenses" />
</asp:Content>

