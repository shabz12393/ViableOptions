<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Event-Items.ascx.cs" Inherits="WebControls_Cashier_Booking_Details_Event_Items" %>

<div class="w3-row">
    <dx:ASPxCallbackPanel ID="cpItems" runat="server" ClientInstanceName="cpItems" OnCallback="cpItems_Callback" Width="100%">
        <ClientSideEvents EndCallback="onEndCallback" />
        <PanelCollection>
            <dx:PanelContent runat="server">
                <div class="w3-row">
                    <div class="w3-half">
                        <dx:ASPxButton ID="bItems" runat="server" AutoPostBack="False"
                            Height="40px" Text="Add +" Width="100%">
                            <ClientSideEvents Click="function(s, e) {
	cpItems.PerformCallback();
}" />
                        </dx:ASPxButton>
                    </div>
                    <div class="w3-half">
                        <dx:ASPxPopupControl ID="pcItems" runat="server"
                            CloseAction="CloseButton"
                            ContentUrl="~/Cashier/Add/event-items.aspx"
                            EnableTheming="True" HeaderText="Record Items"
                            Modal="True" PopupHorizontalAlign="WindowCenter"
                            PopupVerticalAlign="WindowCenter">
                            <ClientSideEvents CloseUp="function(s,e){
                                                                                 gvItems.Refresh();
                                cpPayment.PerformCallback('Update');
                                                                                 }"
                                Init="OnPopupInit" />
                            <HeaderStyle Font-Bold="True" />
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
<div class="w3-row mt-2">
    <dx:ASPxGridView ID="gvItems" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvItems" 
        EnableRowsCache="False" EnableTheming="True" KeyFieldName="serial_no" 
        OnHtmlDataCellPrepared="gvItems_HtmlDataCellPrepared" OnRowUpdating="gvItems_RowUpdating" Width="100%">
        <ClientSideEvents EndCallback="onEndCallback" />
        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" AllowOnlyOneAdaptiveDetailExpanded="True" HideDataCellsAtWindowInnerWidth="800">
        </SettingsAdaptivity>
        <SettingsEditing Mode="EditForm">
        </SettingsEditing>
        <Settings VerticalScrollableHeight="250" VerticalScrollBarMode="Visible" />
        <SettingsBehavior AllowEllipsisInText="True" />
        <SettingsCommandButton>
            <UpdateButton ButtonType="Button" RenderMode="Button">
            </UpdateButton>
            <CancelButton ButtonType="Button" RenderMode="Button">
            </CancelButton>
        </SettingsCommandButton>
        <Settings ShowFooter="True" ShowGroupFooter="VisibleAlways" VerticalScrollableHeight="250" VerticalScrollBarMode="Visible" />
        <EditFormLayoutProperties>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="50">
            </SettingsAdaptivity>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="serial_no" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="8">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Unit Cost" FieldName="price" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="n0">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="quantity" ShowInCustomizationForm="True" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Total Amount" FieldName="amount" ShowInCustomizationForm="True" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="n0">
                </PropertiesTextEdit>
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataComboBoxColumn FieldName="item_status" ShowInCustomizationForm="True" VisibleIndex="6">
                <PropertiesComboBox ConvertEmptyStringToNull="False">
                    <Items>
                        <dx:ListEditItem Text="tentative" Value="tentative" />
                        <dx:ListEditItem Text="booked" Value="booked" />
                        <dx:ListEditItem Text="returned" Value="returned" />
                        <dx:ListEditItem Text="cancelled" Value="cancelled" />
                        <dx:ListEditItem Text="collected" Value="collected" />
                    </Items>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Items" FieldName="item_id" ShowInCustomizationForm="True" VisibleIndex="1">
                <PropertiesComboBox DataSourceID="odsItems" ValueField="item_id" ValueType="System.Int32">
                    <Columns>
                        <dx:ListBoxColumn FieldName="item">
                        </dx:ListBoxColumn>
                    </Columns>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="amount" ShowInColumn="amount" SummaryType="Sum" ValueDisplayFormat="n0" />
        </TotalSummary>
        <Styles>
            <Header Font-Bold="True">
            </Header>
            <Cell Paddings-Padding="7px" />
        </Styles>
    </dx:ASPxGridView>
</div>
<%--<div>
    <asp:ObjectDataSource ID="odsEventItems" runat="server" SelectMethod="GetItemsBooked" 
        TypeName="CatalogAccess">
        <SelectParameters>
            <asp:QueryStringParameter Name="booking_id" QueryStringField="booking_id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</div>--%>
<div>
    <asp:ObjectDataSource ID="odsItems" runat="server" SelectMethod="GetItems" TypeName="CatalogAccess"/>
</div>
