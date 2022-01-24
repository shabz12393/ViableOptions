<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Item-Stock.ascx.cs" Inherits="WebControls_Admin_Stock_Data_Item_Stock" %>


<div class="row">
    <dx:ASPxGridView ID="gvStock" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsStocks" EnableTheming="True" KeyFieldName="stock_id" Width="100%" OnRowUpdating="gvStock_RowUpdating" CssClass="grid">
        <ClientSideEvents EndCallback="function(s,e){
                                            onEndCallback(s,e);
                                            gvLowStock.Refresh();}" />
        <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="500" ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <EditFormLayoutProperties>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
        </EditFormLayoutProperties>
        <SettingsEditing Mode="EditForm"></SettingsEditing>
        <SettingsCommandButton>
            <UpdateButton RenderMode="Button">
            </UpdateButton>
            <CancelButton RenderMode="Button">
            </CancelButton>
        </SettingsCommandButton>
        <SettingsPager PageSize="50" NumericButtonCount="6" />
        <Columns>
            <dx:GridViewDataTextColumn FieldName="stock_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="avail_stock" ShowInCustomizationForm="True" VisibleIndex="2" AdaptivePriority="1">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataComboBoxColumn FieldName="category" ShowInCustomizationForm="True" VisibleIndex="1">
                <PropertiesComboBox DataSourceID="odsCategories" ValueField="category">
                    <Columns>
                        <dx:ListBoxColumn FieldName="category">
                        </dx:ListBoxColumn>
                    </Columns>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="item" ShowInCustomizationForm="True" VisibleIndex="1">
                <PropertiesComboBox DataSourceID="odsItems" ValueField="item">
                    <Columns>
                        <dx:ListBoxColumn FieldName="item">
                        </dx:ListBoxColumn>
                    </Columns>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True"
                VisibleIndex="0">
            </dx:GridViewCommandColumn>
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
    <asp:ObjectDataSource ID="odsStocks" runat="server" SelectMethod="GetStocks" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
<div>
    <asp:ObjectDataSource ID="odsItems" runat="server" SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>
<div>
    <asp:ObjectDataSource ID="odsCategories" runat="server" SelectMethod="GetCategories" TypeName="CatalogAccess"></asp:ObjectDataSource>
</div>


