<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking-Report.aspx.cs" Inherits="Cashier_Booking_Report" %>

<%@ Register Src="~/WebControls/Cashier/Reports/Bookings.ascx" TagPrefix="uc1" TagName="Bookings" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Bookings runat="server" ID="Bookings" />
</asp:Content>

