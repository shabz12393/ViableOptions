<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Customers.ascx.cs" Inherits="WebControls_Admin_Customers" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Customers</h5>
    </div>
    <div class="card-body w3-container">
        <div class="w3-row mb-2">
            <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False" Font-Bold="True" 
                Height="40px" Text="New +" Width="30%">
                <ClientSideEvents Click="gridCallback" />
            </dx:ASPxButton>
        </div>
        <div class="w3-row">
            <dx:ASPxGridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsCustomers" EnableRowsCache="False" KeyFieldName="customer_id" OnCustomCallback="gvCustomers_CustomCallback" Width="100%" OnRowInserting="gvCustomers_RowInserting" EnableTheming="True" OnRowUpdating="gvCustomers_RowUpdating">
                <ClientSideEvents EndCallback="onEndCallback" />
                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                </SettingsAdaptivity>
                <SettingsPager PageSize="50">
                </SettingsPager>
                <SettingsEditing Mode="EditForm">
                </SettingsEditing>
                <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
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
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="customer_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="8">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="customer_code" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Customer Code" ReadOnly="True">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="full_name" ShowInCustomizationForm="True" VisibleIndex="1">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="telephone" ShowInCustomizationForm="True" VisibleIndex="4">
                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="email" ShowInCustomizationForm="True" VisibleIndex="5">
                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="gender" ShowInCustomizationForm="True" VisibleIndex="6">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="Male" Value="Male" />
                                <dx:ListEditItem Text="Female" Value="Female" />
                                <dx:ListEditItem Text="Other" Value="Other" />
                            </Items>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataMemoColumn FieldName="notes" ShowInCustomizationForm="True" VisibleIndex="7">
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
            <asp:ObjectDataSource ID="odsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomers" TypeName="CatalogAccess"></asp:ObjectDataSource>
        </div>
    </div>
</div>


