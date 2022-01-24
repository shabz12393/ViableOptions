<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sub-Menu.ascx.cs" Inherits="WebControls_Control_Menu_Sub_Menu" %>

<%@ Register Src="../Add/Sub-Menu.ascx" TagName="Sub" TagPrefix="uc1" %>

<style type="text/css">
    .style {
        width: 100%;
    }
</style>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Sub-Menu Management">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <table class="style">
                            <tr>
                                <td colspan="2">
                                    <uc1:Sub ID="Sub1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <dx:ASPxGridView ID="gvSubMenu" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsSubMenu" EnableTheming="True" KeyFieldName="_id" Width="100%" Font-Names="" OnRowDeleting="subMenuGv_RowDeleting" OnRowUpdating="subMenuGv_RowUpdating">
                                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                        </SettingsAdaptivity>
                                        <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
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
                                            <dx:GridViewDataTextColumn FieldName="_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="title" ShowInCustomizationForm="True" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="1" ShowDeleteButton="True" ShowEditButton="True">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Menu" FieldName="menu_id" ShowInCustomizationForm="True" VisibleIndex="2">
                                                <PropertiesComboBox DataSourceID="odsMenu" ValueField="menu_id" ValueType="System.Int32" TextField="title" TextFormatString="{0}">
                                                    <Columns>
                                                        <dx:ListBoxColumn FieldName="title">
                                                        </dx:ListBoxColumn>
                                                        <dx:ListBoxColumn FieldName="role">
                                                        </dx:ListBoxColumn>
                                                    </Columns>
                                                    <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataTextColumn FieldName="navigate_url" ShowInCustomizationForm="True" VisibleIndex="4">
                                                <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Role" FieldName="role_id" ShowInCustomizationForm="True" VisibleIndex="5">
                                                <PropertiesComboBox DataSourceID="odsRole" ValueField="role_id" ValueType="System.Int32">
                                                    <Columns>
                                                        <dx:ListBoxColumn FieldName="role">
                                                        </dx:ListBoxColumn>
                                                    </Columns>
                                                    <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                                </PropertiesComboBox>
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                        <Styles>
                                            <Header Font-Bold="True">
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
                                    <asp:ObjectDataSource ID="odsMenu" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsProceduresTableAdapters.getMenusWithRoleTableAdapter"></asp:ObjectDataSource>
                                </td>
                                <td>
                                    <asp:ObjectDataSource ID="odsSubMenu" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsProceduresTableAdapters.getSubMenusWithRoleTableAdapter"></asp:ObjectDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ObjectDataSource ID="odsRole" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.rolesTableAdapter"></asp:ObjectDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>



