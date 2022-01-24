<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Items.ascx.cs" Inherits="WebControls_Cashier_Items_Items_Items" %>
<%@ Register Src="~/WebControls/Cashier/Add/Items.ascx" TagPrefix="uc1" TagName="Items" %>



<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" TabSpacing="10" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Items">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="form row mb-2">
                        <uc1:Items runat="server" ID="Items" />
                    </div>
                    <div class="row mt-2">
                        <dx:ASPxGridView ID="gvItems" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsItems" EnableTheming="True" KeyFieldName="item_id" Width="100%">
                            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                            </SettingsAdaptivity>
                            <SettingsPager NumericButtonCount="6" PageSize="40">
                            </SettingsPager>
                            <SettingsEditing Mode="EditForm">
                            </SettingsEditing>
                            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowGroupPanel="True" ShowHeaderFilterButton="True" />
                            <SettingsBehavior EnableRowHotTrack="True" />
                            <SettingsCommandButton>
                                <UpdateButton RenderMode="Button">
                                </UpdateButton>
                                <CancelButton RenderMode="Button">
                                </CancelButton>
                            </SettingsCommandButton>
                            <EditFormLayoutProperties ColCount="1">
                                <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600">
                                </SettingsAdaptivity>
                            </EditFormLayoutProperties>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="item_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="item" ShowInCustomizationForm="True" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="price" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="re_order_level" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Category" FieldName="category_id" ShowInCustomizationForm="True" VisibleIndex="3">
                                    <PropertiesComboBox DataSourceID="odsCategory" TextField="category" ValueField="category_id" ValueType="System.Int32">
                                        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
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
                        <asp:ObjectDataSource ID="odsItems" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetItems"
                            TypeName="CatalogAccess" />
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsCategory" runat="server" OldValuesParameterFormatString="original_{0}"
                            SelectMethod="GetCategories" TypeName="CatalogAccess" />
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>



