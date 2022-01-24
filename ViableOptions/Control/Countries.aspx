<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Countries.aspx.cs" Inherits="Control_Countries" %>

<%@ Register Src="~/WebControls/Control/Countries.ascx" TagPrefix="uc1" TagName="Countries" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Countries runat="server" ID="Countries" />
</asp:Content>

