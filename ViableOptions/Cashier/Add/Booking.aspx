
<%@ Page Title="" Language="C#" MasterPageFile="~/Form.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Cashier_Add_Booking" %>

<%@ Register Src="~/WebControls/Cashier/Add/Booking.ascx" TagPrefix="uc1" TagName="Booking" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <uc1:Booking runat="server" ID="Booking" />
</asp:Content>