<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Dashboard.ascx.cs" Inherits="WebControls_Cashier_Dashboard" %>

<%@ Register Src="~/WebControls/Cashier/Stock/Search-Stock.ascx" TagName="Stock" TagPrefix="uc1" %>
<%@ Register Src="~/WebControls/Cashier/Bookings.ascx" TagPrefix="uc1" TagName="CashBookings" %>



<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" TabSpacing="10" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Bookings">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:CashBookings runat="server" ID="CashBookings" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Stock">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:Stock ID="Stock2" runat="server" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>



