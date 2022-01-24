<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users.ascx.cs" Inherits="WebControls_Control_Users_Users" %>


<style type="text/css">
    .style {
        width: 100%;
    }
</style>
<div>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="User Management">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <table class="style">
                            <tr>
                                <td colspan="2">
                                    <dx:ASPxGridView ID="gvUsers" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsUsers" Font-Names="" KeyFieldName="serial_no" Width="100%" OnRowDeleting="gvUsers_RowDeleting" OnRowUpdating="gvUsers_RowUpdating">
                                        <ClientSideEvents EndCallback="onUserCallback" />
                                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                        </SettingsAdaptivity>
                                        <SettingsPager PageSize="50">
                                        </SettingsPager>
                                        <SettingsEditing Mode="EditForm">
                                        </SettingsEditing>
                                        <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
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
                                            <dx:GridViewDataTextColumn FieldName="serial_no" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="user_name" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="user_password" ShowInCustomizationForm="True" VisibleIndex="2">
                                                <PropertiesTextEdit Password="True">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowDeleteButton="True" ShowEditButton="True">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataComboBoxColumn FieldName="role_id" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Role">
                                                <PropertiesComboBox DataSourceID="odsRoles" ValueField="role_id" ValueType="System.Int32">
                                                    <Columns>
                                                        <dx:ListBoxColumn FieldName="role">
                                                        </dx:ListBoxColumn>
                                                    </Columns>
                                                    <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="User" FieldName="user_id" ShowInCustomizationForm="True" VisibleIndex="5">
                                                <PropertiesComboBox DataSourceID="odsStaff" TextField="Full Name" ValueField="staff_id" ValueType="System.Int32">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                        <Styles>
                                            <Header Font-Bold="False">
                                            </Header>
                                            <Cell>
                                                <Paddings Padding="10" />
                                            </Cell>
                                        </Styles>
                                    </dx:ASPxGridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ObjectDataSource ID="odsUsers" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.AccountsTableAdapter" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_serial_no" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="user_id" Type="Int32" />
                                            <asp:Parameter Name="user_name" Type="String" />
                                            <asp:Parameter Name="user_password" Type="String" />
                                            <asp:Parameter Name="role_id" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="user_id" Type="Int32" />
                                            <asp:Parameter Name="user_name" Type="String" />
                                            <asp:Parameter Name="user_password" Type="String" />
                                            <asp:Parameter Name="role_id" Type="Int32" />
                                            <asp:Parameter Name="Original_serial_no" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                </td>
                                <td>
                                    <asp:ObjectDataSource ID="odsRoles" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.rolesTableAdapter" InsertMethod="Insert">
                                        <InsertParameters>
                                            <asp:Parameter Name="role" Type="String" />
                                        </InsertParameters>
                                    </asp:ObjectDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ObjectDataSource ID="odsStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsProceduresTableAdapters.getStaffNameAndIdTableAdapter"></asp:ObjectDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</div>



