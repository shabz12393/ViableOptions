<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Control_Staff" %>

<%@ Register Src="~/WebControls/Control/Staff.ascx" TagPrefix="uc1" TagName="Staff" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Staff runat="server" ID="Staff" />
</asp:Content>

