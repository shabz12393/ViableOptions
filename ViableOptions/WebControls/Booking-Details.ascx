<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Booking-Details.ascx.cs" Inherits="WebControls_Booking_Details" %>
<%@ Register Src="~/WebControls/Cashier/Bookings/Details/Guests.ascx" TagPrefix="uc1" TagName="Guests" %>
<%@ Register Src="~/WebControls/Details/Items.ascx" TagPrefix="uc1" TagName="Items" %>
<%@ Register Src="~/WebControls/Details/Payments.ascx" TagPrefix="uc1" TagName="Payments" %>
<%@ Register Src="~/WebControls/Details/Info.ascx" TagPrefix="uc1" TagName="Info" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%" TabSpacing="10">
    <TabPages>
        <dx:TabPage Text="Payments">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:Payments runat="server" ID="Payments" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Items">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:Items runat="server" ID="Items" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Event Info">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:Info runat="server" ID="Info" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Guests">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:Guests runat="server" ID="Guests" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
