<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Items-Booked.ascx.cs" Inherits="WebControls_Cashier_Bookings_Items_Booked" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Items Booked">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-container">
                        <dx:ASPxGridView ID="gvItems" runat="server" AutoGenerateColumns="False" DataSourceID="odsItemsBooked" EnableRowsCache="False" EnableTheming="True" KeyFieldName="serial_no" Width="100%" OnHtmlDataCellPrepared="gvItems_HtmlDataCellPrepared">
                            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                            </SettingsAdaptivity>
                            <SettingsPager PageSize="50">
                            </SettingsPager>
                            <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFooter="True" ShowGroupFooter="VisibleAlways" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                            <SettingsBehavior EnableRowHotTrack="True" />

                            <SettingsPopup>
                                <HeaderFilter MinHeight="140px"></HeaderFilter>
                            </SettingsPopup>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="serial_no" ShowInCustomizationForm="True" VisibleIndex="9" ReadOnly="True">
                                    <EditFormSettings Visible="False"></EditFormSettings>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="event_type" ShowInCustomizationForm="True" VisibleIndex="8">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="price" ShowInCustomizationForm="True" VisibleIndex="6">
                                    <PropertiesTextEdit DisplayFormatString="n0" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="quantity" ShowInCustomizationForm="True" VisibleIndex="2">
                                    <PropertiesTextEdit DisplayFormatString="n0" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="amount" ShowInCustomizationForm="True" VisibleIndex="7">
                                    <PropertiesTextEdit DisplayFormatString="n0" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="delivery_dt" ShowInCustomizationForm="True" VisibleIndex="3">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataDateColumn FieldName="return_dt" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="item_status" ShowInCustomizationForm="True" VisibleIndex="5" Caption="status">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn FieldName="customer" ShowInCustomizationForm="True" VisibleIndex="0">
                                    <PropertiesComboBox DataSourceID="odsCustomer" TextField="full_name" ValueField="full_name">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="items" FieldName="item_id" ShowInCustomizationForm="True" VisibleIndex="1">
                                    <PropertiesComboBox DataSourceID="odsItems" TextField="item" ValueField="item_id" ValueType="System.Int32">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                            <GroupSummary>
                                <dx:ASPxSummaryItem FieldName="amount" ShowInGroupFooterColumn="amount" SummaryType="Sum" ValueDisplayFormat="n0" />
                                <dx:ASPxSummaryItem FieldName="quantity" ShowInGroupFooterColumn="quantity" SummaryType="Sum" ValueDisplayFormat="n0" />
                            </GroupSummary>
                            <Styles>
                                <Header Font-Bold="True">
                                </Header>
                                <Cell Paddings-Padding="7px" />
                            </Styles>
                        </dx:ASPxGridView>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsItemsBooked" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetBookedItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsItems" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomers" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
