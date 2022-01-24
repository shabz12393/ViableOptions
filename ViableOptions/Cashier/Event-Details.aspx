<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Event-Details.aspx.cs" Inherits="Cashier_Event_Details" %>

<%@ Register Src="~/WebControls/Cashier/Bookings/Booking-Details.ascx" TagPrefix="uc1" TagName="EventDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:EventDetails runat="server" ID="EventDetails" />
</asp:Content>

