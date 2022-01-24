<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Customers.ascx.cs" Inherits="WebControls_Cashier_Bookings_Customers" %>



<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Customers">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-container">
                        <div class="row mb-2">
                            <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="New +" Width="150px">
                                <ClientSideEvents Click="gridCallback" />
                            </dx:ASPxButton>
                        </div>
                        <div class="row">
                            <dx:ASPxGridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsCustomers" EnableRowsCache="False" KeyFieldName="customer_id" OnCustomCallback="gvCustomers_CustomCallback" Width="100%" EnableTheming="True" OnRowInserting="gvCustomers_RowInserting">
                                <ClientSideEvents EndCallback="onEndCallback" />
                                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                </SettingsAdaptivity>
                                <SettingsPager PageSize="50">
                                </SettingsPager>
                                <SettingsEditing Mode="EditForm">
                                </SettingsEditing>
                                <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                                <SettingsBehavior AllowEllipsisInText="True" ConfirmDelete="True" EnableRowHotTrack="True" />
                                <SettingsCommandButton>
                                    <UpdateButton RenderMode="Button">
                                    </UpdateButton>
                                    <CancelButton RenderMode="Button">
                                    </CancelButton>
                                </SettingsCommandButton>

                                <SettingsPopup>
                                    <HeaderFilter MinHeight="140px"></HeaderFilter>
                                </SettingsPopup>

                                <EditFormLayoutProperties>
                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="customer_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="8">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="customer_code" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Customer Code" ReadOnly="True">
                                        <EditFormSettings Visible="False" />
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="full_name" ShowInCustomizationForm="True" VisibleIndex="1">
                                        <PropertiesTextEdit>
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="telephone" ShowInCustomizationForm="True" VisibleIndex="4">
                                        <PropertiesTextEdit>
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="email" ShowInCustomizationForm="True" VisibleIndex="5">
                                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="7">
                                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="gender" ShowInCustomizationForm="True" VisibleIndex="6">
                                        <PropertiesComboBox>
                                            <Items>
                                                <dx:ListEditItem Text="Male" Value="Male" />
                                                <dx:ListEditItem Text="Female" Value="Female" />
                                                <dx:ListEditItem Text="Other" Value="Other" />
                                            </Items>
                                            <ValidationSettings>
                                                <RegularExpression ErrorText="" />
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                                <Styles>
                                    <Header Font-Bold="True">
                                    </Header>
                                    <Cell Paddings-Padding="8px" />
                                </Styles>
                            </dx:ASPxGridView>
                        </div>
                        <div>
                            <asp:ObjectDataSource ID="odsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomers" TypeName="CatalogAccess"></asp:ObjectDataSource>
                        </div>
                    </div>

                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>

