<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Depreciated.ascx.cs" Inherits="WebControls_Admin_Items_Stock_Depreciated" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Deprecated</h5>
    </div>
    <div class="card-body">

        <div class="w3-container">
            <div class="row mb-2">
                <div class="col mb-2">
                    <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                        Text="New +" Width="30%">
                        <ClientSideEvents Click="function(s, e) {
	gvStock.PerformCallback();
}" />
                    </dx:ASPxButton>
                </div>
                <div class="col">
                </div>
            </div>
            <div class="row">
                <dx:ASPxGridView ID="gvStock" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvStock"
                    DataSourceID="odsStock" EnableRowsCache="False" EnableTheming="True" KeyFieldName="serial_no"
                    Width="100%" OnCustomCallback="gvStock_CustomCallback" OnRowInserting="gvStock_RowInserting"
                    OnRowUpdating="gvStock_RowUpdating">
                    <ClientSideEvents EndCallback="onEndCallback" />
                    <SettingsDetail ShowDetailRow="True" />
                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600"
                        AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                    </SettingsAdaptivity>
                    <SettingsEditing Mode="EditForm">
                    </SettingsEditing>
                    <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True"
                        ShowHeaderFilterButton="True" ShowGroupPanel="True" />
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
                    <Templates>
                        <DetailRow>
                            <div class="card">
                                <div class="card-header font-weight-bold">
                                    <h5>Payments</h5>
                                </div>
                                <div class="card-body">

                                    <div class="w3-container">
                                        <div class="row mb-2">
                                            <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False"
                                                Font-Bold="True" Height="40px" Text="New +" Width="150px">
                                                <ClientSideEvents Click="function(s, e) {
	gvPayments.PerformCallback();
}" />
                                            </dx:ASPxButton>
                                        </div>
                                        <div class="row">
                                            <dx:ASPxGridView ID="gvPayments" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvPayments"
                                                DataSourceID="odsPayments" EnableRowsCache="False" EnableTheming="True" KeyFieldName="payment_id"
                                                OnBeforePerformDataSelect="gvPayments_BeforePerformDataSelect" OnCustomCallback="gvPayments_CustomCallback"
                                                OnInitNewRow="gvPayments_InitNewRow" OnRowInserting="gvPayments_RowInserting"
                                                Width="100%" OnRowUpdating="gvPayments_RowUpdating">
                                                <ClientSideEvents EndCallback="onDepositCallback" />
                                                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" AllowOnlyOneAdaptiveDetailExpanded="True"
                                                    HideDataCellsAtWindowInnerWidth="500">
                                                </SettingsAdaptivity>
                                                <SettingsEditing Mode="EditForm">
                                                </SettingsEditing>
                                                <Settings VerticalScrollBarMode="Visible" />
                                                <SettingsCommandButton>
                                                    <UpdateButton  RenderMode="Button">
                                                    </UpdateButton>
                                                    <CancelButton RenderMode="Button">
                                                    </CancelButton>
                                                </SettingsCommandButton>
                                                <EditFormLayoutProperties>
                                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="250">
                                                    </SettingsAdaptivity>
                                                </EditFormLayoutProperties>
                                                <Columns>
                                                    <dx:GridViewDataTextColumn FieldName="payment_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="7">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="deposit" ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <PropertiesTextEdit DisplayFormatString="n0">
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataDateColumn FieldName="payment_date" ShowInCustomizationForm="True" VisibleIndex="4" Caption="date">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataDateColumn>
                                                    <dx:GridViewDataTextColumn FieldName="receipt_no" ShowInCustomizationForm="True" VisibleIndex="5" Caption="receipt">
                                                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="6">
                                                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="cashier" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="1">
                                                        <PropertiesComboBox DataSourceID="odsStaff" ValueField="staff_id" ValueType="System.Int32">
                                                            <Columns>
                                                                <dx:ListBoxColumn FieldName="full_name">
                                                                </dx:ListBoxColumn>
                                                            </Columns>
                                                        </PropertiesComboBox>
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataComboBoxColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="pay't mode" FieldName="pm_id" 
                                                        ShowInCustomizationForm="True" VisibleIndex="3">
                                                        <PropertiesComboBox DataSourceID="odsPaymentModes" ValueField="pm_id" 
                                                            ValueType="System.Int32">
                                                            <Columns>
                                                                <dx:ListBoxColumn FieldName="payt_mode">
                                                                </dx:ListBoxColumn>
                                                            </Columns>
                                                        </PropertiesComboBox>
                                                    </dx:GridViewDataComboBoxColumn>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                </Columns>
                                                <TotalSummary>
                                                    <dx:ASPxSummaryItem FieldName="deposit" ShowInColumn="deposit" SummaryType="Sum" ValueDisplayFormat="n0" />
                                                    <dx:ASPxSummaryItem FieldName="discount" ShowInColumn="discount" SummaryType="Sum" ValueDisplayFormat="n0" />
                                                </TotalSummary>
                                                <Styles>
                                                    <Header Font-Bold="True">
                                                    </Header>
                                                </Styles>
                                            </dx:ASPxGridView>
                                        </div>
                                        <div>
                                            <asp:ObjectDataSource ID="odsPayments" runat="server" SelectMethod="GetPaymentsForStockDeprecated"
                                                TypeName="CatalogAccess">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="serial_no" SessionField="serial_no" Type="Int32" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                        </div>
                                        <div>
                                            <asp:ObjectDataSource ID="odsPaymentModes" runat="server"
                                                SelectMethod="GetPaymentModes" TypeName="CatalogAccess" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </DetailRow>
                    </Templates>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="serial_no" ShowInCustomizationForm="True" VisibleIndex="8" ReadOnly="True">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataSpinEditColumn FieldName="quantity" ShowInCustomizationForm="True" VisibleIndex="2">
                            <PropertiesSpinEdit DisplayFormatString="g">
                                <SpinButtons ShowIncrementButtons="False">
                                </SpinButtons>
                            </PropertiesSpinEdit>
                        </dx:GridViewDataSpinEditColumn>
                        <dx:GridViewDataMemoColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="6">
                            <PropertiesMemoEdit ConvertEmptyStringToNull="False">
                            </PropertiesMemoEdit>
                        </dx:GridViewDataMemoColumn>
                        <dx:GridViewDataDateColumn FieldName="created_dt" ShowInCustomizationForm="True" VisibleIndex="5">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataComboBoxColumn Caption="event" FieldName="booking_id" ShowInCustomizationForm="True" VisibleIndex="1">
                            <PropertiesComboBox DataSourceID="odsEvent" ValueField="booking_id" DisplayFormatInEditMode="true" TextFormatString="{0}; {2}; {3}">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="customer">
                                    </dx:ListBoxColumn>
                                    <dx:ListBoxColumn FieldName="date">
                                    </dx:ListBoxColumn>
                                    <dx:ListBoxColumn FieldName="event">
                                    </dx:ListBoxColumn>
                                    <dx:ListBoxColumn FieldName="venue">
                                    </dx:ListBoxColumn>
                                </Columns>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="staff" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="7">
                            <PropertiesComboBox DataSourceID="odsStaff" TextField="full_name" ValueField="staff_id" ValueType="System.Int32">
                            </PropertiesComboBox>
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="items" FieldName="item_id" ShowInCustomizationForm="True" VisibleIndex="3">
                            <PropertiesComboBox DataSourceID="odsItems" TextField="item" ValueField="item_id">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="stock_status" ShowInCustomizationForm="True" VisibleIndex="4">
                            <PropertiesComboBox>
                                <Items>
                                    <dx:ListEditItem Text="tentative" Value="tentative" />
                                    <dx:ListEditItem Text="confirmed" Value="confirmed" />
                                    <dx:ListEditItem Text="returned" Value="returned" />
                                </Items>
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
                <asp:ObjectDataSource ID="odsStock" runat="server" SelectMethod="GetDeprecatedStocks" TypeName="CatalogAccess" />
            </div>
            <div>
                <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess" />
            </div>
            <div>
                <asp:ObjectDataSource ID="odsItems" runat="server" SelectMethod="GetItems" TypeName="CatalogAccess"/>
            </div>
            <div>
                <asp:ObjectDataSource ID="odsEvent" runat="server" SelectMethod="GetCustomerWithEvent" TypeName="CatalogAccess"/>
            </div>
        </div>
    </div>
</div>


