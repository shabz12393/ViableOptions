<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Item-Category.ascx.cs" Inherits="WebControls_Cashier_Items_Item_Category" %>

<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Items Category">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-container">
                        <div class="row mb-2">
                            <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True"
                                Height="40px" Text="New +" Width="150px">
                                <ClientSideEvents Click="gridCallback" />
                            </dx:ASPxButton>
                        </div>
                        <div class="row">
                            <dx:ASPxGridView ID="gvCategory" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsCategory" EnableTheming="True" KeyFieldName="category_id" Width="100%" OnCustomCallback="gvCategory_CustomCallback">
                                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                </SettingsAdaptivity>
                                <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterBlankItems="True" ShowHeaderFilterButton="True" ShowFilterRowMenu="True" />
                                <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
                                <SettingsCommandButton>
                                    <UpdateButton RenderMode="Button">
                                    </UpdateButton>
                                    <CancelButton RenderMode="Button">
                                    </CancelButton>
                                </SettingsCommandButton>
                                <EditFormLayoutProperties>
                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                                </EditFormLayoutProperties>
                                <SettingsEditing Mode="EditForm"></SettingsEditing>
                                <SettingsPager PageSize="40" NumericButtonCount="6" />
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="category_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="category" ShowInCustomizationForm="True" VisibleIndex="1">
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
                            <asp:ObjectDataSource ID="odsCategory" runat="server" OldValuesParameterFormatString="original_{0}"
                                SelectMethod="GetCategories" TypeName="CatalogAccess" />
                        </div>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>

