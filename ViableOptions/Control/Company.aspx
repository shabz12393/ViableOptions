<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="Control_Company" %>

<%@ Register Src="~/WebControls/Control/Company.ascx" TagPrefix="uc1" TagName="Company" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Company runat="server" ID="Company" />
</asp:Content>

