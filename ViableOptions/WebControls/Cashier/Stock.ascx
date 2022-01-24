<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Stock.ascx.cs" Inherits="WebControls_Cashier_Stock" %>

<%@ Register Src="~/WebControls/Cashier/Stock/Item-Stock.ascx" TagPrefix="uc2" TagName="ItemStock" %>
<%@ Register Src="~/WebControls/Cashier/Stock/Search-Stock.ascx" TagPrefix="uc2" TagName="SearchStock" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Items">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc2:ItemStock runat="server" ID="ItemStock" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Search">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc2:SearchStock runat="server" ID="SearchStock1" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>

