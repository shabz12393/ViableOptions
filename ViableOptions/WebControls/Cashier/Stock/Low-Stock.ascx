<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Low-Stock.ascx.cs" Inherits="WebControls_Cashier_Stock_Low_Stock" %>



    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Low Stock">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                                <div class="row">
                                    <dx:ASPxGridView ID="gvStock" runat="server" AutoGenerateColumns="False" DataSourceID="odsStock" EnableRowsCache="False" CssClass="grid" EnableTheming="True" KeyFieldName="stockId" Width="100%" OnHtmlDataCellPrepared="gvStock_HtmlDataCellPrepared" ClientInstanceName="gvLowStock">
                                        <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="500" ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                        </SettingsAdaptivity>
                                        <SettingsPager PageSize="50" NumericButtonCount="6" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn FieldName="stock_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="avail_stock" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Stock">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="col_message" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="item" FieldName="item_id" ShowInCustomizationForm="True" VisibleIndex="0">
                                                <PropertiesComboBox DataSourceID="odsItems" ValueField="item_id" ValueType="System.Int32">
                                                    <Columns>
                                                        <dx:ListBoxColumn FieldName="item">
                                                        </dx:ListBoxColumn>
                                                    </Columns>
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataTextColumn FieldName="re_order_level" ShowInCustomizationForm="True" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
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
                                    <asp:ObjectDataSource ID="odsStock" runat="server"
                                        SelectMethod="GetStockForPurchase" TypeName="CatalogAccess"/>
                                </div>
                                <div>
                                    <asp:ObjectDataSource ID="odsItems" runat="server" SelectMethod="GetItems" 
                                        TypeName="CatalogAccess" 
                                        />
                                </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>



