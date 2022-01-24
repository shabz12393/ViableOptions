<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Staff.ascx.cs" Inherits="WebControls_Admin_Staff_Staff" %>
<%@ Register Src="~/WebControls/Control/Add/Staff.ascx" TagPrefix="uc1" TagName="Staff" %>



<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Staffs</h5>
    </div>
    <div class="card-body">
        <div class="row mb-2">
            <uc1:Staff runat="server" id="Staff" />
        </div>
        <div class="row">
            <dx:ASPxGridView runat="server" Width="100%" ID="gvStaff" ClientInstanceName="grid"
                AutoGenerateColumns="False" DataSourceID="odsStaff" KeyFieldName="staff_id" EnableRowsCache="False" 
                OnRowUpdating="gvStaff_RowUpdating" EnableTheming="True" Theme="Metropolis">
                <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" ShowFilterRow="True" 
                    ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                <ClientSideEvents EndCallback="onEndCallback" />
                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600" 
                    AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                </SettingsAdaptivity>
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
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="staff_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="9">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="full_name" ShowInCustomizationForm="True" VisibleIndex="1">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="telephone" ShowInCustomizationForm="True" VisibleIndex="5">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="email" ShowInCustomizationForm="True" VisibleIndex="6">
                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="gender" ShowInCustomizationForm="True" VisibleIndex="7">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="Male" Value="Male" />
                                <dx:ListEditItem Text="Female" Value="Female" />
                            </Items>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataImageColumn Caption="Image" FieldName="pic_url" ShowInCustomizationForm="True" VisibleIndex="4">
                        <PropertiesImage ImageUrlFormatString="~/Images/Profile/{0}" ImageHeight="40px" ImageWidth="40px">
                        </PropertiesImage>
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataImageColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="staff_status" ShowInCustomizationForm="True" VisibleIndex="8">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="Available" Value="Available" />
                                <dx:ListEditItem Text="Suspended" Value="Suspended" />
                            </Items>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn FieldName="staff_code" ShowInCustomizationForm="True" VisibleIndex="3">
                        <PropertiesTextEdit ConvertEmptyStringToNull="False">
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
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
    </div>
    <div>
        <asp:ObjectDataSource ID="odsStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStaffs" TypeName="CatalogAccess"></asp:ObjectDataSource>
    </div>
</div>


