 <%@ Control Language="C#" AutoEventWireup="true" CodeFile="Refunds.ascx.cs" Inherits="WebControls_Cashier_Payments_Refunds" %>


    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Customer Refunds">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                                <div class="w3-container">
                                    <dx:ASPxGridView ID="gvRefunds" runat="server" AutoGenerateColumns="False" DataSourceID="odsRefunds" EnableRowsCache="False" EnableTheming="True" KeyFieldName="refund_id" Width="100%">
                                        <SettingsDetail ShowDetailRow="True" />
                                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                        </SettingsAdaptivity>
                                        <Templates>
                                            <DetailRow>
                                                <dx:ASPxPageControl ID="ASPxPageControl2" runat="server" ActiveTabIndex="0" Width="100%">
                                                    <TabPages>
                                                        <dx:TabPage Text="Booking Details">
                                                            <ContentCollection>
                                                                <dx:ContentControl runat="server">
                                                                            <div>
                                                                                <dx:ASPxGridView ID="gvDetails" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvDetails" DataSourceID="odsBookings" EnableRowsCache="False" EnableTheming="True" KeyFieldName="booking_id" OnBeforePerformDataSelect="gvDetails_BeforePerformDataSelect" Theme="Default" Width="100%">
                                                                                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                                                                    </SettingsAdaptivity>
                                                                                    <SettingsCommandButton>
                                                                                        <UpdateButton RenderMode="Button">
                                                                                        </UpdateButton>
                                                                                        <CancelButton RenderMode="Button">
                                                                                        </CancelButton>
                                                                                    </SettingsCommandButton>
                                                                                    <EditFormLayoutProperties>
                                                                                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="250" />
                                                                                    </EditFormLayoutProperties>
                                                                                    <SettingsPager Visible="False">
                                                                                    </SettingsPager>
                                                                                    <Settings ShowFooter="True" ShowGroupFooter="VisibleAlways" VerticalScrollableHeight="250" VerticalScrollBarMode="Visible" />
                                                                                    <Columns>
                                                                                        <dx:GridViewDataTextColumn FieldName="booking_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataDateColumn FieldName="delivery_dt" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                        </dx:GridViewDataDateColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="venue" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                        </dx:GridViewDataTextColumn>
                                                                                    </Columns>
                                                                                </dx:ASPxGridView>
                                                                            </div>
                                                                            <div>
                                                                                <asp:ObjectDataSource ID="odsBookings" runat="server" OldValuesParameterFormatString="original_{0}"  
                                                                                    SelectMethod="GetBookingForPayment" TypeName="CatalogAccess">
                                                                                    <SelectParameters>
                                                                                        <asp:SessionParameter Name="payment_id" SessionField="payment_id" Type="Int32" />
                                                                                    </SelectParameters>
                                                                                </asp:ObjectDataSource>
                                                                            </div>
                                                                </dx:ContentControl>
                                                            </ContentCollection>
                                                        </dx:TabPage>
                                                    </TabPages>
                                                </dx:ASPxPageControl>
                                            </DetailRow>
                                        </Templates>
                                        <SettingsPager PageSize="50">
                                        </SettingsPager>
                                        <Settings ShowFilterRow="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" 
                                            ShowFooter="True" ShowGroupFooter="VisibleAlways" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                                        <SettingsBehavior EnableRowHotTrack="True" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn FieldName="refund_id" ShowInCustomizationForm="True" 
                                                VisibleIndex="6" ReadOnly="True">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="payment_id" ShowInCustomizationForm="True" VisibleIndex="5">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="amount_refunded" ShowInCustomizationForm="True" VisibleIndex="1" Caption="amount refunded">
                                                <PropertiesTextEdit DisplayFormatString="n0" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="created_dt" ShowInCustomizationForm="True" VisibleIndex="2" Caption="refund date">
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="cashier" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="4">
                                                <PropertiesComboBox DataSourceID="odsStaff" TextField="full_name" ValueField="staff_id" ValueType="System.Int32">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn FieldName="customer" ShowInCustomizationForm="True" VisibleIndex="0">
                                                <PropertiesComboBox DataSourceID="odsCustomers" TextField="full_name" ValueField="full_name">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="event" FieldName="event_id" ShowInCustomizationForm="True" VisibleIndex="3">
                                                <PropertiesComboBox DataSourceID="odsEvents" TextField="event_type" ValueField="event_id" ValueType="System.Int32">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                        <TotalSummary>
                                            <dx:ASPxSummaryItem FieldName="amount_refunded" ShowInColumn="amount_refunded" SummaryType="Sum" ValueDisplayFormat="n0" />
                                        </TotalSummary>
                                        <Styles>
                                            <Header Font-Bold="True">
                                            </Header>
                                            <Cell>
                                                <Paddings Padding="7px" />
                                            </Cell>
                                        </Styles>
                                    </dx:ASPxGridView>
                                </div>
                                <div>
                                    <asp:ObjectDataSource ID="odsCustomers" runat="server"  SelectMethod="GetCustomers" TypeName="CatalogAccess"></asp:ObjectDataSource>
                                </div>
                                <div>
                                    <asp:ObjectDataSource ID="odsRefunds" runat="server" SelectMethod="GetRefunds" TypeName="CatalogAccess"></asp:ObjectDataSource>
                                </div>
                                <div>
                                    <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
                                </div>
                                <div>
                                    <asp:ObjectDataSource ID="odsEvents" runat="server" SelectMethod="GetEvents" TypeName="CatalogAccess">
                                        </asp:ObjectDataSource>
                                </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
