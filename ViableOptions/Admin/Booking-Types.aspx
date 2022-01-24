<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking-Types.aspx.cs" Inherits="Admin_Booking_Types" %>

<%@ Register Src="~/WebControls/Admin/Bookings/Booking-Types.ascx" TagPrefix="uc1" TagName="BookingTypes" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:BookingTypes runat="server" ID="BookingTypes" />
</asp:Content>

