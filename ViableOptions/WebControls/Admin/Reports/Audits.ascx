<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Audits.ascx.cs" Inherits="WebControls_Admin_Reports_Audit" %>
<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.XtraReports.v19.1.Web.WebForms, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<div class="style">
    <dx:ASPxWebDocumentViewer ID="wdvReport" runat="server" ColorScheme="dark" ReportSourceId="xrAuditTrail">
    </dx:ASPxWebDocumentViewer>
</div>

