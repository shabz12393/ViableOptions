<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Item-Report.aspx.cs" Inherits="Cashier_Item_Report" %>

<%@ Register Src="~/WebControls/Cashier/Reports/Items.ascx" TagPrefix="uc1" TagName="Items" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Items runat="server" ID="Items" />
</asp:Content>

