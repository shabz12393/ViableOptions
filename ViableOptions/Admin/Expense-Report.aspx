<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Expense-Report.aspx.cs" Inherits="Admin_Expense_Report" %>

<%@ Register Src="~/WebControls/Cashier/Reports/Expenses.ascx" TagPrefix="uc1" TagName="Expenses" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Expenses runat="server" ID="Expenses" />
</asp:Content>

