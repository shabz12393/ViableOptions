<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Bookings.ascx.cs" Inherits="WebControls_Cashier_Reports_Bookings" %>
<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.XtraReports.v19.1.Web.WebForms, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<div class="style">
    <dx:ASPxWebDocumentViewer ID="wdvReport" runat="server" ColorScheme="dark" ReportSourceId="xrBookings">
    </dx:ASPxWebDocumentViewer>
</div>

