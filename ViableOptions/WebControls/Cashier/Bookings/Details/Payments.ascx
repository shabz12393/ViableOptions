<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Payments.ascx.cs" Inherits="WebControls_Cashier_Bookings_Details_Payments" %>
<%@ Register Src="~/WebControls/Cashier/Add/Record-Payment.ascx" TagPrefix="uc1" TagName="RecordPayment" %>


<div class="form row">
    <uc1:RecordPayment runat="server" ID="RecordPayment" />
</div>
<div class="row mt-2">
    <dx:ASPxGridView ID="gvPayments" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvPayments" 
        EnableRowsCache="False" EnableTheming="True" OnRowUpdating="gvPayments_RowUpdating" Width="100%" 
         KeyFieldName="payment_id">
        <ClientSideEvents EndCallback="onEndCallback" />
        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
        </SettingsAdaptivity>
        <EditFormLayoutProperties>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
        </EditFormLayoutProperties>
        <SettingsEditing Mode="EditForm">
        </SettingsEditing>
        <Settings ShowFooter="True" ShowGroupFooter="VisibleAlways" VerticalScrollableHeight="250" VerticalScrollBarMode="Visible" />
        <SettingsCommandButton>
            <UpdateButton RenderMode="Button">
            </UpdateButton>
            <CancelButton RenderMode="Button">
            </CancelButton>
        </SettingsCommandButton>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="payment_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="9" Caption="payment id">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="created_dt" ShowInCustomizationForm="True" VisibleIndex="4">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="receipt_no" ShowInCustomizationForm="True" VisibleIndex="5" Caption="receipt no">
                <PropertiesTextEdit ConvertEmptyStringToNull="false" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataSpinEditColumn FieldName="discount" ShowInCustomizationForm="True" VisibleIndex="6">
                <PropertiesSpinEdit DisplayFormatString="n0" DisplayFormatInEditMode="True">
                    <SpinButtons ShowIncrementButtons="False" />
                </PropertiesSpinEdit>
            </dx:GridViewDataSpinEditColumn>
            <dx:GridViewDataMemoColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="8">
                <PropertiesMemoEdit ConvertEmptyStringToNull="false" />
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataComboBoxColumn Caption="pay't Mode" FieldName="pm_id" ShowInCustomizationForm="True" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="odsPaymentModes" TextField="payt_mode" ValueField="pm_id" ValueType="System.Int32">
                    <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataSpinEditColumn FieldName="amount_refunded" ShowInCustomizationForm="True" VisibleIndex="2">
                <PropertiesSpinEdit DisplayFormatString="n0" DisplayFormatInEditMode="True">
                    <SpinButtons ShowIncrementButtons="False">
                    </SpinButtons>
                </PropertiesSpinEdit>
            </dx:GridViewDataSpinEditColumn>
            <dx:GridViewDataSpinEditColumn FieldName="deposit" ShowInCustomizationForm="True" VisibleIndex="1">
                <PropertiesSpinEdit DisplayFormatString="n0" DisplayFormatInEditMode="True">
                    <SpinButtons ShowIncrementButtons="False">
                    </SpinButtons>
                </PropertiesSpinEdit>
            </dx:GridViewDataSpinEditColumn>
            <dx:GridViewDataComboBoxColumn Caption="cashier" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="7">
                <PropertiesComboBox DataSourceID="odsStaff" TextField="full_name" ValueField="staff_id" ValueType="System.Int32">
                    <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                </PropertiesComboBox>
                <EditFormSettings Visible="False" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="deposit" ShowInColumn="deposit" SummaryType="Sum" ValueDisplayFormat="n0" />
        </TotalSummary>
        <Styles>
            <Header Font-Bold="True">
            </Header>
        </Styles>
    </dx:ASPxGridView>
</div>
<%--<div>
    <asp:ObjectDataSource ID="odsPayments" runat="server" SelectMethod="GetPaymentsForBooking" 
        TypeName="CatalogAccess">
        <SelectParameters>
            <asp:QueryStringParameter Name="booking_id" QueryStringField="booking_id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</div>--%>
<div>
    <asp:ObjectDataSource ID="odsItems" runat="server" SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
<div>
    <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>

<div>
    <asp:ObjectDataSource ID="odsPaymentModes" runat="server" SelectMethod="GetPaymentModes" 
        TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
