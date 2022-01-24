<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Staffs.aspx.cs" Inherits="Admin_Staffs" %>

<%@ Register Src="~/WebControls/Admin/Staff/Staff.ascx" TagPrefix="uc1" TagName="Staff" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Staff runat="server" ID="Staff" />
</asp:Content>

