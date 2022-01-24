<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Audit-Report.aspx.cs" Inherits="Admin_Audit_Report" %>

<%@ Register Src="~/WebControls/Admin/Reports/Audits.ascx" TagPrefix="uc1" TagName="Audits" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Audits runat="server" ID="Audits" />
</asp:Content>

