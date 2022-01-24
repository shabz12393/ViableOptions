<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Payments.ascx.cs" Inherits="WebControls_Cashier_Payments" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Payments">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-container">
                        <dx:ASPxGridView ID="gvPayments" runat="server" AutoGenerateColumns="False" DataSourceID="odsPayments" EnableRowsCache="False" EnableTheming="True" KeyFieldName="payment_id" Width="100%">
                            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                            </SettingsAdaptivity>
                            <SettingsPager PageSize="50">
                            </SettingsPager>
                            <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFooter="True" ShowGroupFooter="VisibleAlways" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                            <SettingsBehavior EnableRowHotTrack="True" />

                            <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="payment_id" ShowInCustomizationForm="True" VisibleIndex="10" ReadOnly="True">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="booking_id" ShowInCustomizationForm="True" VisibleIndex="9">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="cashier" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="2">
                                    <PropertiesComboBox DataSourceID="odsStaff" TextField="full_name" ValueField="staff_id" ValueType="System.Int32">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn FieldName="deposit" ShowInCustomizationForm="True" VisibleIndex="1">
                                    <PropertiesTextEdit DisplayFormatString="n0" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="amount_refunded" ShowInCustomizationForm="True" VisibleIndex="3">
                                    <PropertiesTextEdit DisplayFormatString="n0" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="payment_date" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="receipt_no" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="discount" ShowInCustomizationForm="True" VisibleIndex="8">
                                    <PropertiesTextEdit DisplayFormatString="n0" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="payt mode" FieldName="pm_id" ShowInCustomizationForm="True" VisibleIndex="4">
                                    <PropertiesComboBox DataSourceID="odsPaymentModes" TextField="payt_mode" ValueField="pm_id" 
                                        ValueType="System.Int32">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                            <TotalSummary>
                                <dx:ASPxSummaryItem FieldName="deposit" ShowInColumn="deposit" SummaryType="Sum" ValueDisplayFormat="n0" />
                                <dx:ASPxSummaryItem FieldName="discount" ShowInColumn="discount" SummaryType="Sum" ValueDisplayFormat="n0" />
                                <dx:ASPxSummaryItem FieldName="amount_refunded" ShowInColumn="amount_refunded" ValueDisplayFormat="n0" SummaryType="Sum" />
                            </TotalSummary>
                            <GroupSummary>
                                <dx:ASPxSummaryItem FieldName="deposit" ShowInGroupFooterColumn="deposit" SummaryType="Sum" ValueDisplayFormat="n0" />
                                <dx:ASPxSummaryItem FieldName="discount" ShowInGroupFooterColumn="discount" SummaryType="Sum" ValueDisplayFormat="n0" />
                                <dx:ASPxSummaryItem FieldName="amount_refunded" ShowInGroupFooterColumn="amount_refunded" SummaryType="Sum" ValueDisplayFormat="n0" />
                            </GroupSummary>
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
                        <asp:ObjectDataSource ID="odsPayments" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetPayments" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsPaymentModes" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetPaymentModes" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
