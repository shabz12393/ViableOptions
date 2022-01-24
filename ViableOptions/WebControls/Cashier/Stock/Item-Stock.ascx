<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Item-Stock.ascx.cs" Inherits="WebControls_Cashier_Stock_Item_Stock" %>
<%@ Register Src="~/WebControls/Cashier/Add/Stock.ascx" TagPrefix="uc1" TagName="Stock" %>


<div class="w3-container">
    <div class="form">
        <uc1:Stock runat="server" ID="Stock" />
    </div>
    <div class="row">
        <dx:ASPxGridView ID="gvStock" runat="server" EnableRowsCache="false" AutoGenerateColumns="False" ClientInstanceName="gvStock" DataSourceID="odsStocks" EnableTheming="True" KeyFieldName="stock_id" Width="100%">
            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
            </SettingsAdaptivity>

            <SettingsPopup>
                <HeaderFilter MinHeight="140px"></HeaderFilter>
            </SettingsPopup>

            <EditFormLayoutProperties>
                <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
            </EditFormLayoutProperties>
            <SettingsEditing Mode="EditForm"></SettingsEditing>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="stock_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="avail_stock" ShowInCustomizationForm="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="category" ShowInCustomizationForm="True" VisibleIndex="0">
                    <PropertiesComboBox DataSourceID="odsCategories" TextField="category" ValueField="category">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="item" FieldName="item" ShowInCustomizationForm="True"
                    VisibleIndex="1">
                    <PropertiesComboBox DataSourceID="odsItems" TextField="item" ValueField="item">
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
        <asp:ObjectDataSource ID="odsStocks" runat="server"
            SelectMethod="GetStocks" TypeName="CatalogAccess" />
    </div>
    <div>
        <asp:ObjectDataSource ID="odsItems" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
    </div>
    <div>
        <asp:ObjectDataSource ID="odsCategories" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetCategories" TypeName="CatalogAccess"></asp:ObjectDataSource>
    </div>
</div>

