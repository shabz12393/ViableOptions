<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Items.ascx.cs" Inherits="WebControls_Admin_Items_Items" %>
<%@ Register Src="~/WebControls/Cashier/Add/Items.ascx" TagPrefix="uc1" TagName="Items" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Items</h5>
    </div>
    <div class="card-body">
        <div class="w3-container">
            <div class="row mb-2">
                <uc1:Items runat="server" id="Items" />
            </div>
            <div class="row">
                <dx:ASPxGridView ID="gvItems" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsItems"
                    EnableTheming="True" KeyFieldName="item_id" Width="100%" OnRowUpdating="gvItems_RowUpdating">
                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600"
                        AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                    </SettingsAdaptivity>
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterBlankItems="True" ShowHeaderFilterButton="True"
                        ShowFilterRowMenu="True" />
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
                    <SettingsEditing Mode="EditForm"></SettingsEditing>
                    <SettingsPager PageSize="40" NumericButtonCount="6" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="item_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="5">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="item" ShowInCustomizationForm="True" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="price" ShowInCustomizationForm="True" VisibleIndex="3">
                            <PropertiesTextEdit DisplayFormatString="n0" DisplayFormatInEditMode="true" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="re_order_level" ShowInCustomizationForm="True" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Category" FieldName="category_id" ShowInCustomizationForm="True" VisibleIndex="2">
                            <PropertiesComboBox DataSourceID="odsCategory" TextField="category" ValueField="category_id" ValueType="System.Int32">
                                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
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
                <asp:ObjectDataSource ID="odsItems" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
            <div>
                <asp:ObjectDataSource ID="odsCategory" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCategories" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</div>



