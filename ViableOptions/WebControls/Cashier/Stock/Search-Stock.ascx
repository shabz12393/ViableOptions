<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Search-Stock.ascx.cs" Inherits="WebControls_Cashier_Stock_Search_Stock" %>



<div class="px-2">

    <div class="row">
        <div class="col">
            <dx:ASPxDateEdit ID="deDate" runat="server" Height="40px" Width="100%" OnInit="deDate_Init">
                <ClientSideEvents ValueChanged="gridCallback" />
                <SettingsAdaptivity ModalDropDownCaption="Select" Mode="OnWindowInnerWidth" />
            </dx:ASPxDateEdit>
        </div>
        <div class="col">
            <dx:ASPxComboBox ID="cbItems" runat="server" DataSourceID="odsItems" Height="40px" ValueField="item_id" ValueType="System.Int32" Width="100%">
                <ClientSideEvents ValueChanged="gridCallback" />
                <SettingsAdaptivity ModalDropDownCaption="Select" Mode="OnWindowInnerWidth" />
                <Columns>
                    <dx:ListBoxColumn FieldName="item">
                    </dx:ListBoxColumn>
                </Columns>
            </dx:ASPxComboBox>
        </div>
    </div>
    <div class="row mt-2">
        <dx:ASPxGridView ID="gvStock" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsStock" EnableRowsCache="False" EnableTheming="True" KeyFieldName="stock_id" OnHtmlDataCellPrepared="gvStock_HtmlDataCellPrepared" Width="100%">
            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
            </SettingsAdaptivity>
            <SettingsPager PageSize="50">
            </SettingsPager>
            <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" />


            <SettingsPopup>
                <HeaderFilter MinHeight="140px"></HeaderFilter>
            </SettingsPopup>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="stock" ShowInCustomizationForm="True" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="item" FieldName="item_id" ShowInCustomizationForm="True" VisibleIndex="0">
                    <PropertiesComboBox DataSourceID="odsItems" TextField="item" ValueField="item_id" ValueType="System.Int32">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
            <GroupSummary>
                <dx:ASPxSummaryItem FieldName="discount" ShowInGroupFooterColumn="discount" SummaryType="Sum" ValueDisplayFormat="n0" />
            </GroupSummary>
            <Styles>
                <Header Font-Bold="True">
                </Header>
                <Cell>
                    <Paddings Padding="8px" />
                </Cell>
            </Styles>
        </dx:ASPxGridView>
    </div>
    <div>
        <asp:ObjectDataSource ID="odsStock" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStockForDate" TypeName="CatalogAccess">
            <SelectParameters>
                <asp:ControlParameter ControlID="deDate" Name="delivery_dt" PropertyName="Value" Type="DateTime" />
                <asp:ControlParameter ControlID="cbItems" Name="item_id" PropertyName="Value" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div>
        <asp:ObjectDataSource ID="odsItems" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
    </div>
</div>


