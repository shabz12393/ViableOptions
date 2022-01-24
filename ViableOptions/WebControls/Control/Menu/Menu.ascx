<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="WebControls_Control_Menu_Menu" %>
<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<style type="text/css">
    .style {
        width: 100%;
    }
</style>
<div>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Menu Management">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <table class="style">
                            <tr>
                                <td colspan="2">
                                    <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Add" Width="150px">
                                        <ClientSideEvents Click="gridCallback" />
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <dx:ASPxGridView ID="gvMenu" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsMenu" EnableTheming="True" KeyFieldName="menu_id" Width="100%" Font-Names="" OnCustomCallback="gvMenu_CustomCallback">
                                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                                        </SettingsAdaptivity>
                                        <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterBlankItems="True" ShowHeaderFilterButton="True" ShowFilterRowMenu="True" />
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
                                            <dx:GridViewDataTextColumn FieldName="menu_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="title" ShowInCustomizationForm="True" VisibleIndex="2">
                                                <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="navigate_url" ShowInCustomizationForm="True" VisibleIndex="3">
                                                <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="1" ShowDeleteButton="True" ShowEditButton="True" ShowClearFilterButton="True">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataComboBoxColumn FieldName="role_id" ShowInCustomizationForm="True" VisibleIndex="5" Caption="Role">
                                                <PropertiesComboBox DataSourceID="odsRoles" TextField="role" ValueField="role_id" ValueType="System.Int32">
                                                    <Columns>
                                                        <dx:ListBoxColumn FieldName="role">
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
                                                <Paddings Padding="10px" />
                                            </Cell>
                                        </Styles>
                                    </dx:ASPxGridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ObjectDataSource ID="odsMenu" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.menuTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_menu_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="title" Type="String" />
                                            <asp:Parameter Name="navigate_url" Type="String" />
                                            <asp:Parameter Name="role_id" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="title" Type="String" />
                                            <asp:Parameter Name="navigate_url" Type="String" />
                                            <asp:Parameter Name="role_id" Type="Int32" />
                                            <asp:Parameter Name="Original_menu_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                </td>
                                <td>
                                    <asp:ObjectDataSource ID="odsRoles" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.rolesTableAdapter"></asp:ObjectDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</div>



