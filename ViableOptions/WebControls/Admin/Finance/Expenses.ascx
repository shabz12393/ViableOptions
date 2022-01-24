<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Expenses.ascx.cs" Inherits="WebControls_Admin_Finance_Expenses" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Expense Management">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-container">
                        <div class="row">
                            <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True"
                                Height="40px" Text="New +" Width="150px">
                                <ClientSideEvents Click="gridCallback" />
                            </dx:ASPxButton>
                        </div>
                        <div class="row mt-2">
                            <dx:ASPxGridView ID="gvExpenses" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsExpenses" EnableRowsCache="False" EnableTheming="True" KeyFieldName="expense_id" Width="100%" OnCustomCallback="gvExpenses_CustomCallback" OnRowInserting="gvExpenses_RowInserting" OnInitNewRow="gvExpenses_InitNewRow" OnRowDeleting="gvExpenses_RowDeleting" OnRowUpdating="gvExpenses_RowUpdating">
                                <ClientSideEvents EndCallback="onEndCallback" />
                                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                </SettingsAdaptivity>
                                <SettingsPager NumericButtonCount="6" PageSize="40">
                                </SettingsPager>
                                <SettingsCommandButton>
                                    <UpdateButton RenderMode="Button">
                                    </UpdateButton>
                                    <CancelButton RenderMode="Button">
                                    </CancelButton>
                                </SettingsCommandButton>
                                <SettingsEditing Mode="EditForm">
                                </SettingsEditing>
                                <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                                <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="expense_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="7">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="expense" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="amount" ShowInCustomizationForm="True" VisibleIndex="2">
                                        <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="n0">
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataDateColumn Caption="Date" FieldName="_date" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                        <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy hh:mm:ss tt">
                                        </PropertiesDateEdit>
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataDateColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Cashier" FieldName="staff_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                        <PropertiesComboBox DataSourceID="odsCashier" ValueField="staff_id" ValueType="System.Int32">
                                            <Columns>
                                                <dx:ListBoxColumn FieldName="full_name">
                                                </dx:ListBoxColumn>
                                            </Columns>
                                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                        </PropertiesComboBox>
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Payment Mode" FieldName="payment_mode_id" ShowInCustomizationForm="True" VisibleIndex="3">
                                        <PropertiesComboBox DataSourceID="odsPaymentMode" ValueField="mode_id" ValueType="System.Int32" TextField="mode">
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataMemoColumn FieldName="reason" ShowInCustomizationForm="True" VisibleIndex="5">
                                        <PropertiesMemoEdit ConvertEmptyStringToNull="False">
                                        </PropertiesMemoEdit>
                                    </dx:GridViewDataMemoColumn>
                                    <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                </Columns>
                                <GroupSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="Total: {0}" FieldName="deposit" ShowInGroupFooterColumn="deposit" SummaryType="Sum" ValueDisplayFormat="{0}" />
                                </GroupSummary>
                                <Styles>
                                    <Header Font-Bold="True">
                                    </Header>
                                    <Cell>
                                        <Paddings Padding="6px" />
                                    </Cell>
                                </Styles>
                            </dx:ASPxGridView>
                        </div>
                        <div>
                            <asp:ObjectDataSource ID="odsExpenses" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.expensesTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_expense_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="staff_id" Type="Int32" />
                                    <asp:Parameter Name="payment_mode_id" Type="Int32" />
                                    <asp:Parameter Name="expense" Type="String" />
                                    <asp:Parameter Name="amount" Type="Int32" />
                                    <asp:Parameter Name="reason" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="staff_id" Type="Int32" />
                                    <asp:Parameter Name="payment_mode_id" Type="Int32" />
                                    <asp:Parameter Name="expense" Type="String" />
                                    <asp:Parameter Name="amount" Type="Int32" />
                                    <asp:Parameter Name="reason" Type="String" />
                                    <asp:Parameter Name="original_expense_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                        </div>
                       <div>
                            <asp:ObjectDataSource ID="odsCashier" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
                        </div>
                        <div>
                            <asp:ObjectDataSource ID="odsPaymentMode" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetPaymentModes" TypeName="CatalogAccess"></asp:ObjectDataSource>
                        </div>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>



