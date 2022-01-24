<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Items.ascx.cs" Inherits="WebControls__Details_Items" %>

<div class="w3-row">
    <dx:ASPxGridView ID="gvItems" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvItems" 
        EnableRowsCache="False" EnableTheming="True" KeyFieldName="serial_no"
         OnHtmlDataCellPrepared="gvItems_HtmlDataCellPrepared" Width="100%">
        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" AllowOnlyOneAdaptiveDetailExpanded="True" HideDataCellsAtWindowInnerWidth="800">
        </SettingsAdaptivity>
        <Settings VerticalScrollableHeight="250" VerticalScrollBarMode="Visible" />
        <SettingsBehavior AllowEllipsisInText="True" />
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
