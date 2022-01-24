<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Stock.ascx.cs" Inherits="WebControls_Admin_Stock_Stock" %>


<%@ Register Src="~/WebControls/Cashier/Stock/Search-Stock.ascx" TagPrefix="uc1" TagName="SearchStock" %>
<%@ Register Src="~/WebControls/Admin/Stock/Data/Item-Stock.ascx" TagPrefix="uc1" TagName="ItemStock" %>

<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" TabSpacing="10" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Items">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:ItemStock runat="server" id="ItemStock" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Search">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:SearchStock runat="server" ID="SearchStock1" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>

