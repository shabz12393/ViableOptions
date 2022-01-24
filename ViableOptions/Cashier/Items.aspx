<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Items.aspx.cs" Inherits="Cashier_Items" %>

<%@ Register Src="~/WebControls/Cashier/Items/Items.ascx" TagPrefix="uc1" TagName="Items" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Items runat="server" ID="Items" />
</asp:Content>

