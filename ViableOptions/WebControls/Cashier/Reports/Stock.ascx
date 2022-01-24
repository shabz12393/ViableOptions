<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Stock.ascx.cs" Inherits="WebControls_Cashier_Reports_Stock" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.XtraReports.v19.1.Web.WebForms, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Stocks</h5>
    </div>
    <div class="card-body">
        <div class="row">
            <dx:ASPxRadioButtonList ID="rblStatus" runat="server" Height="40px" SelectedIndex="0" Width="100%" 
                RepeatDirection="Horizontal"
                ItemSpacing="20px">
                <RadioButtonFocusedStyle Font-Bold="False">
                </RadioButtonFocusedStyle>
                <ClientSideEvents ValueChanged="function(s, e) {
	cpStock.PerformCallback();
}" />
                <Items>
                    <dx:ListEditItem Text="Available" Value="Available"/>
                    <dx:ListEditItem Text="Low Stock" Value="Low" />
                </Items>
                <FocusedStyle Font-Bold="True">
                </FocusedStyle>
                <Border BorderStyle="None" />
            </dx:ASPxRadioButtonList>
        </div>
        <div class="row mt-2">
            <dx:ASPxCallbackPanel ID="cpStock" runat="server" ClientInstanceName="cpStock" OnCallback="cpStock_Callback" Width="100%">
                <PanelCollection>
                    <dx:PanelContent runat="server">
                        <dx:ASPxWebDocumentViewer ID="wdvReport" runat="server" ColorScheme="dark" ReportSourceId="xrStock">
                        </dx:ASPxWebDocumentViewer>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxCallbackPanel>
        </div>
    </div>
</div>

