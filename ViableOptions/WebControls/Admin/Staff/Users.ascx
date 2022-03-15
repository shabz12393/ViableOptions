<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users.ascx.cs" Inherits="WebControls_Admin_Staff_Users_Users" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Src="~/WebControls/Admin/Add/Users.ascx" TagPrefix="uc1" TagName="Users" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Users</h5>
    </div>
    <div class="card-body container">
        <div class="row mb-2">
            <uc1:Users runat="server" ID="Users" />
        </div>
        <div class="row">
            <dx:ASPxGridView ID="gvUsers" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsUsers" 
                EnableRowsCache="False" KeyFieldName="account_id" OnRowDeleting="gvUsers_RowDeleting" OnRowUpdating="gvUsers_RowUpdating" 
                Width="100%" EnableTheming="True">
                <ClientSideEvents EndCallback="onEndCallback" />
                <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                </SettingsAdaptivity>
                <SettingsPager NumericButtonCount="6" PageSize="20">
                </SettingsPager>
                <SettingsEditing Mode="EditForm">
                </SettingsEditing>
                <Settings ShowFilterRow="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRowMenu="True" ShowHeaderFilterButton="True" />
                <SettingsBehavior EnableRowHotTrack="True" ConfirmDelete="true" />
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
                    <dx:GridViewDataTextColumn FieldName="account_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="7">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="user_name" ShowInCustomizationForm="True" VisibleIndex="1" Caption="user name">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="user_password" ShowInCustomizationForm="True" VisibleIndex="2" Caption="password">
                        <PropertiesTextEdit Password="True">
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowDeleteButton="True" ShowEditButton="True">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="role_id" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Role">
                        <PropertiesComboBox DataSourceID="odsRoles" ValueField="role_id" ValueType="System.Int32">
                            <Columns>
                                <dx:ListBoxColumn FieldName="col_role">
                                </dx:ListBoxColumn>
                            </Columns>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn Caption="user" FieldName="user_id" ShowInCustomizationForm="True" VisibleIndex="5">
                        <PropertiesComboBox DataSourceID="odsStaff" ValueField="staff_id">
                            <Columns>
                                <dx:ListBoxColumn FieldName="full_name">
                                </dx:ListBoxColumn>
                            </Columns>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
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
            <asp:ObjectDataSource ID="odsUsers" runat="server" SelectMethod="GetUsers" TypeName="CatalogAccess"/>
        </div>
        <div>
            <asp:ObjectDataSource ID="odsRoles" runat="server" SelectMethod="GetOtherRoles" TypeName="CatalogAccess"/>
        </div>
        <div>
            <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess"/>
        </div>
    </div>
</div>


