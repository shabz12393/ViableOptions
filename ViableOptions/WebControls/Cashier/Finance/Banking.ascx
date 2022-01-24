<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banking.ascx.cs" Inherits="WebControls_Admin_Finance_Banking" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Bank Transactions">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-container">
                        <div class="row">
                            <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="New +"
                                Width="150px">
                                <ClientSideEvents Click="gridCallback" />
                            </dx:ASPxButton>
                        </div>
                        <div class="row mt-2">
                            <dx:ASPxGridView ID="gvBanking" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsBanking" EnableRowsCache="False" EnableTheming="True" KeyFieldName="banking_id" Width="100%" OnCustomCallback="gvBanking_CustomCallback" OnRowInserting="gvBanking_RowInserting">
                                <ClientSideEvents EndCallback="onEndCallback" />
                                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                </SettingsAdaptivity>
                                <SettingsPager NumericButtonCount="10" PageSize="40">
                                </SettingsPager>
                                <SettingsEditing Mode="EditForm">
                                </SettingsEditing>
                                <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" ShowGroupPanel="True" />
                                <SettingsBehavior EnableRowHotTrack="True" />
                                <SettingsCommandButton>
                                    <UpdateButton RenderMode="Button">
                                    </UpdateButton>
                                    <CancelButton RenderMode="Button">
                                    </CancelButton>
                                </SettingsCommandButton>
                                <EditFormLayoutProperties>
                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="banking_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                        <EditFormSettings Visible="False"></EditFormSettings>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="tran_type" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Transaction Type">
                                        <PropertiesComboBox>
                                            <Items>
                                                <dx:ListEditItem Text="withdraw" Value="withdraw" />
                                                <dx:ListEditItem Text="deposit" Value="deposit" />
                                            </Items>
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataTextColumn FieldName="amount" ShowInCustomizationForm="True" VisibleIndex="1">
                                        <PropertiesTextEdit DisplayFormatString="n0" DisplayFormatInEditMode="true" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataDateColumn FieldName="_date" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Date">
                                    </dx:GridViewDataDateColumn>
                                    <dx:GridViewDataTextColumn FieldName="bank_notes" ShowInCustomizationForm="True" VisibleIndex="5">
                                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Cashier" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="4">
                                        <PropertiesComboBox ValueType="System.Int32" DataSourceID="odsStaff" ValueField="staff_id">
                                            <Columns>
                                                <dx:ListBoxColumn FieldName="full_name">
                                                </dx:ListBoxColumn>
                                            </Columns>
                                        </PropertiesComboBox>
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                                <GroupSummary>
                                    <dx:ASPxSummaryItem FieldName="amount" ShowInGroupFooterColumn="amount" SummaryType="Sum" ValueDisplayFormat="n0" />
                                </GroupSummary>
                                <Styles>
                                    <Header Font-Bold="True">
                                    </Header>
                                    <Cell>
                                        <Paddings Padding="5px" />
                                    </Cell>
                                </Styles>
                            </dx:ASPxGridView>
                        </div>
                        <div>
                            <asp:ObjectDataSource ID="odsBanking" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.bankingTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_banking_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="staff_id" Type="Int32" />
                                    <asp:Parameter Name="tran_type" Type="String" />
                                    <asp:Parameter Name="amount" Type="Int32" />
                                    <asp:Parameter Name="bank_notes" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="staff_id" Type="Int32" />
                                    <asp:Parameter Name="tran_type" Type="String" />
                                    <asp:Parameter Name="amount" Type="Int32" />
                                    <asp:Parameter Name="bank_notes" Type="String" />
                                    <asp:Parameter Name="original_banking_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div>
                            <asp:ObjectDataSource ID="odsStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
                        </div>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>



