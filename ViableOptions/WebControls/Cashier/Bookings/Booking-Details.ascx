<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Booking-Details.ascx.cs" Inherits="WebControls_Cashier_Bookings_Booking_Details" %>
<%@ Register Src="Details/Payments.ascx" TagName="Payments" TagPrefix="uc1" %>
<%@ Register Src="Details/Event-Items.ascx" TagName="Event" TagPrefix="uc2" %>
<%@ Register Src="Details/Guests.ascx" TagName="Guests" TagPrefix="uc3" %>
<%@ Register Src="Details/Event-Info.ascx" TagPrefix="uc1" TagName="EventInfo" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%" TabSpacing="10">
    <TabPages>
        <dx:TabPage Text="Payments">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-row">
                        <div class="w3-half">
                            <dx:ASPxCallbackPanel ID="cpReceipt" runat="server" ClientInstanceName="cpReceipt" OnCallback="cpReceipt_Callback" Width="100%">
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        <div class="w3-row">
                                            <div class="w3-half">
                                                <dx:ASPxButton ID="bReceipt" runat="server" AutoPostBack="False"
                                                    Height="40px" Text="Receipt" Width="100%">
                                                    <ClientSideEvents Click="function(s, e) {
	cpReceipt.PerformCallback();
}" />
                                                </dx:ASPxButton>
                                            </div>
                                            <div class="w3-half">
                                                <dx:ASPxPopupControl ID="pcReceipt" runat="server"
                                                    ContentUrl="~/Cashier/Receipt/Booking-Receipt.aspx"
                                                    EnableTheming="True" HeaderText="Receipt" Modal="True"
                                                    PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
                                                    <ClientSideEvents Init="OnPopupInit" />
                                                    <HeaderStyle Font-Bold="True" />
                                                    <ContentCollection>
                                                        <dx:PopupControlContentControl runat="server">
                                                        </dx:PopupControlContentControl>
                                                    </ContentCollection>
                                                </dx:ASPxPopupControl>
                                            </div>
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxCallbackPanel>
                        </div>
                    </div>
                    <div class="w3-container mt-2">
                        <uc1:Payments ID="Payments1" runat="server" />
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Items">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc2:Event ID="Event1" runat="server" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Event Info">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:EventInfo runat="server" ID="EventInfo" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Guests">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc3:Guests ID="Guests1" runat="server" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
