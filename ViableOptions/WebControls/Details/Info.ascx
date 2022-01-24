<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Info.ascx.cs" Inherits="WebControls_Details_Info" %>

<div class="row">
    <dx:ASPxGridView ID="gvBookings" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvBookings" 
       EnableRowsCache="False" EnableTheming="True" KeyFieldName="booking_id" Width="100%">
        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="300" 
            AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
        </SettingsAdaptivity>
        <SettingsPager PageSize="50">
        </SettingsPager>
        <SettingsEditing Mode="EditForm">
        </SettingsEditing>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="300" VerticalScrollBarMode="Visible" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
          <SettingsLoadingPanel Mode="Disabled" />
        <EditFormLayoutProperties>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="booking_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="delivery_dt" ShowInCustomizationForm="True" VisibleIndex="6">
                <PropertiesDateEdit ConvertEmptyStringToNull="False" DisplayFormatString="dd-MMM-yy" EditFormat="Custom" EditFormatString="dd-MMM-yy">
                </PropertiesDateEdit>
                <CellStyle Font-Bold="True">
                </CellStyle>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="return_dt" ShowInCustomizationForm="True" VisibleIndex="7">
                <PropertiesDateEdit ConvertEmptyStringToNull="False" DisplayFormatString="dd-MMM-yy" EditFormat="Custom" EditFormatString="dd-MMM-yy">
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn Caption="event" FieldName="event_id" ShowInCustomizationForm="True" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="odsEvent" TextField="event_type" ValueField="event_id" ValueType="System.Int32">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="start_time" ShowInCustomizationForm="True" UnboundType="String" VisibleIndex="8">
                <PropertiesTextEdit ConvertEmptyStringToNull="False">
                    <MaskSettings Mask="HH:mm" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="end_time" ShowInCustomizationForm="True" UnboundType="String" VisibleIndex="9">
                <PropertiesTextEdit ConvertEmptyStringToNull="False">
                    <MaskSettings Mask="HH:mm" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="10">
                <PropertiesMemoEdit ConvertEmptyStringToNull="False">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Styles>
            <Header Font-Bold="True">
            </Header>
        </Styles>
    </dx:ASPxGridView>
</div>
<div>
    <asp:ObjectDataSource ID="odsBookingType" runat="server" SelectMethod="GetBookingTypes" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
<%--<div>
    <asp:ObjectDataSource ID="odsBookings" runat="server" SelectMethod="GetBookingDetails" TypeName="CatalogAccess">
       <SelectParameters>
            <asp:QueryStringParameter Name="booking_id" QueryStringField="booking_id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</div>--%>
<div>
    <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
<div>
    <asp:ObjectDataSource ID="odsEvent" runat="server" SelectMethod="GetEvents" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
<div>
    <asp:ObjectDataSource ID="odsCustomer" runat="server" SelectMethod="GetCustomers" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
