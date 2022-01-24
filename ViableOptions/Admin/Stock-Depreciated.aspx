<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Stock-Depreciated.aspx.cs" Inherits="Admin_Stock_Depreciated" %>

<%@ Register Src="~/WebControls/Admin/Stock/Depreciated.ascx" TagPrefix="uc1" TagName="Depreciated" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Depreciated runat="server" id="Depreciated" />
</asp:Content>

