<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Charts.ascx.cs" Inherits="WebControls_Admin_Dashboard_Charts" %>

<%@ Register Assembly="DevExpress.Dashboard.v19.1.Web.WebForms, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Dashboard</h5>
    </div>
    <div class="card-body w3-container">
        <div class="w3-row">
            <dx:ASPxRadioButtonList ID="rblStatus" runat="server" Height="40px" RepeatDirection="Horizontal" SelectedIndex="0" Width="100%">
                <ClientSideEvents ValueChanged="function(s, e) {
	cpDashboard.PerformCallback();
}" />
                <Items>
                    <dx:ListEditItem Selected="True" Text="Booking" Value="Booking" />
                    <dx:ListEditItem Text="Payments" Value="Payments" />
                    <dx:ListEditItem Text="Items" Value="Items" />
                </Items>
            </dx:ASPxRadioButtonList>
        </div>
        <div class="w3-row mt-2 ">
            <dx:ASPxCallbackPanel ID="cpDashboard" runat="server" ClientInstanceName="cpDashboard" Width="100%">
                <PanelCollection>
                    <dx:PanelContent runat="server">
                        <div class="row">
                            <dx:ASPxDashboard ID="dashboard" runat="server" LoadDefaultDashboard="false" WorkingMode="Viewer" OnDashboardLoading="dvDashboard_DashboardLoading" ColorScheme="dark.compact">
                            </dx:ASPxDashboard>
                        </div>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxCallbackPanel>
        </div>
    </div>
</div>



