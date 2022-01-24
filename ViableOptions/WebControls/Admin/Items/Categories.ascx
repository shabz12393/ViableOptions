<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Categories.ascx.cs" Inherits="WebControls_Admin_Items_Categories" %>



<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Categories</h5>
    </div>
    <div class="card-body">
        <div class="w3-container">
            <div class="row">
                <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                    Text="New +" Width="30%">
                    <ClientSideEvents Click="gridCallback" />
                </dx:ASPxButton>
            </div>
            <div class="row mt-2">
                <dx:ASPxGridView ID="gvCategory" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid"
                    DataSourceID="odsCategory" EnableTheming="True" KeyFieldName="category_id" Width="100%"
                    OnCustomCallback="gvCategory_CustomCallback" OnRowUpdating="gvCategory_RowUpdating" OnRowInserting="gvCategory_RowInserting">
                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600"
                        AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                    </SettingsAdaptivity>
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterBlankItems="True"
                        ShowHeaderFilterButton="True" ShowFilterRowMenu="True" />
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
                        <dx:GridViewDataTextColumn FieldName="category_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="category" ShowInCustomizationForm="True" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                    </Columns>
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
                <asp:ObjectDataSource ID="odsCategory" runat="server"
                    SelectMethod="GetCategories" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</div>


