<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Bookings.ascx.cs" Inherits="WebControls_Cashier_Bookings" %>

<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Booking">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <div class="w3-row mb-2">
                        <div class="w3-half w3-mobile">
                            <dx:ASPxCallbackPanel ID="cpBooking" runat="server" ClientInstanceName="cpBooking" OnCallback="cpBooking_Callback" Width="100%">
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        <div class="w3-row">
                                            <div class="w3-half w3-mobile">
                                                <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False" Font-Bold="True" 
                                                    Height="40px" Text="New +" Width="150px">
                                                    <ClientSideEvents Click="function(s, e) {
	cpBooking.PerformCallback();
}" />
                                                </dx:ASPxButton>
                                            </div>
                                            <div class="w3-half">
                                                <dx:ASPxPopupControl ID="pcBooking" runat="server" ClientInstanceName="popup" ContentUrl="~/Cashier/Add/Booking.aspx" EnableTheming="True" HeaderText="Booking Registration" Modal="True" CloseAction="CloseButton" PopupVerticalOffset="30" ScrollBars="Horizontal">
                                                    <HeaderStyle Font-Bold="True" />
                                                    <ClientSideEvents CloseUp="function(s,e){
                                                                    gvBookings.Refresh();
                                                                    }"
                                                        Init="OnPopupInit" />
                                                    <ContentCollection>
                                                        <dx:PopupControlContentControl runat="server">
                                                        </dx:PopupControlContentControl>
                                                    </ContentCollection>
                                                </dx:ASPxPopupControl>
                                            </div>

                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxCallbackPanel>
                        </div>
                        <div class="w3-half w3-mobile">
                            <dx:ASPxCallbackPanel ID="cpItems" runat="server" ClientInstanceName="cpItems" Width="100%" OnCallback="cpItems_Callback">
                                <SettingsLoadingPanel Enabled="false" />
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        <div class="w3-row">
                                            <dx:ASPxPopupControl ID="pcItems" runat="server" ClientInstanceName="pcItems" ContentUrl="~/Cashier/Add/book-items.aspx" EnableTheming="True" HeaderText="Record Items" Modal="True" CloseAction="CloseButton">
                                                <ClientSideEvents Init="OnPopupInit" />
                                                <HeaderStyle Font-Bold="True" />
                                                <ContentCollection>
                                                    <dx:PopupControlContentControl runat="server">
                                                    </dx:PopupControlContentControl>
                                                </ContentCollection>
                                            </dx:ASPxPopupControl>
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxCallbackPanel>
                        </div>
                    </div>
                    <div class="w3-row">
                        <dx:ASPxGridView ID="gvBookings" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvBookings" 
                            DataSourceID="odsBookings" EnableRowsCache="False" EnableTheming="True" KeyFieldName="booking_id" 
                            OnCustomCallback="gvBookings_CustomCallback" Width="100%" OnRowUpdating="gvBookings_RowUpdating" 
                            OnHtmlDataCellPrepared="gvBookings_HtmlDataCellPrepared" OnRowDeleting="gvBookings_RowDeleting">
                            <ClientSideEvents EndCallback="onEndCallback"
                                RowClick="OnRedirect" />
                            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600" 
                                AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                            </SettingsAdaptivity>
                            <SettingsPager PageSize="50">
                            </SettingsPager>
                            <SettingsEditing Mode="EditForm">
                            </SettingsEditing>
                            <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                            <SettingsCommandButton>
                                <UpdateButton RenderMode="Button">
                                </UpdateButton>
                                <CancelButton RenderMode="Button">
                                </CancelButton>
                            </SettingsCommandButton>

<SettingsPopup>
<HeaderFilter MinHeight="140px"></HeaderFilter>
</SettingsPopup>

                            <SettingsLoadingPanel Mode="Disabled" />
                            <EditFormLayoutProperties>
                                <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                            </EditFormLayoutProperties>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="13">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="booking_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="12">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="delivery_dt" ShowInCustomizationForm="True" VisibleIndex="4">
                                    <PropertiesDateEdit ConvertEmptyStringToNull="False" DisplayFormatString="dd-MMM-yy" EditFormat="Custom" EditFormatString="dd-MMM-yy">
                                    </PropertiesDateEdit>
                                    <CellStyle Font-Bold="True">
                                    </CellStyle>
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataComboBoxColumn Caption="customer" FieldName="customer_code" ShowInCustomizationForm="True" VisibleIndex="2">
                                    <PropertiesComboBox DataSourceID="odsCustomer" TextField="full_name" ValueField="customer_code">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="staff" FieldName="staff_id" ShowInCustomizationForm="True" VisibleIndex="11" ReadOnly="True">
                                    <PropertiesComboBox DataSourceID="odsStaff" TextField="full_name" ValueField="staff_id" ValueType="System.Int32">
                                    </PropertiesComboBox>
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn FieldName="venue" ShowInCustomizationForm="True" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn FieldName="event_status" ShowInCustomizationForm="True" VisibleIndex="6" Caption="Status">
                                    <PropertiesComboBox>
                                        <Items>
                                            <dx:ListEditItem Text="confirmed" Value="confirmed" />
                                            <dx:ListEditItem Text="collected" Value="collected" />
                                            <dx:ListEditItem Text="tentative" Value="tentative" />
                                            <dx:ListEditItem Text="cancelled" Value="cancelled" />
                                        </Items>
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0" ShowDeleteButton="True">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataComboBoxColumn FieldName="booking_code" ShowInCustomizationForm="True" VisibleIndex="1">
                                    <PropertiesComboBox DataSourceID="odsBookingType" TextField="booking_type" ValueField="booking_code">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn FieldName="paid" ShowInCustomizationForm="True" VisibleIndex="7">
                                    <PropertiesTextEdit DisplayFormatString="n0">
                                    </PropertiesTextEdit>
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="balance" ShowInCustomizationForm="True" VisibleIndex="8">
                                    <EditFormSettings Visible="False" />
                                    <PropertiesTextEdit DisplayFormatString="n0">
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="discount" ShowInCustomizationForm="True" VisibleIndex="9">
                                    <EditFormSettings Visible="False" />
                                    <PropertiesTextEdit DisplayFormatString="n0">
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="total bill" FieldName="total_bill" ShowInCustomizationForm="True" VisibleIndex="10">
                                    <EditFormSettings Visible="False" />
                                    <PropertiesTextEdit DisplayFormatString="n0">
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <Styles>
                                <Header Font-Bold="True">
                                </Header>
                                <Cell Paddings-Padding="6px" >
<Paddings Padding="6px"></Paddings>
                                </Cell>
                            </Styles>
                        </dx:ASPxGridView>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsBookingType" runat="server" SelectMethod="GetBookingTypes" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsBookings" runat="server" SelectMethod="GetBookings" TypeName="CatalogAccess">
                              </asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsEvent" runat="server" SelectMethod="GetEvents" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                    <div>
                        <asp:ObjectDataSource ID="odsCustomer" runat="server" SelectMethod="GetCustomers" TypeName="CatalogAccess"></asp:ObjectDataSource>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
