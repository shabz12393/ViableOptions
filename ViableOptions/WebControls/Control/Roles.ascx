<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Roles.ascx.cs" Inherits="Controls_Control_Roles" %>

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
            <dx:TabPage Text="Role Management">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <table class="style">
                            <tr>
                                <td>
                                    <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Add" Width="150px" Font-Names="">
                                        <ClientSideEvents Click="gridCallback" />
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <dx:ASPxGridView ID="gvRoles" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsRoles" EnableTheming="True" KeyFieldName="role_id" OnCustomCallback="gvRoles_CustomCallback" Width="100%" Font-Names="">
                                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
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
                                        <SettingsPager PageSize="40" NumericButtonCount="6" />
                                        <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterBlankItems="True" ShowHeaderFilterButton="True" ShowFilterRowMenu="True" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn FieldName="role_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="role" ShowInCustomizationForm="True" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="1" ShowDeleteButton="True" ShowEditButton="True">
                                            </dx:GridViewCommandColumn>
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
                                    <asp:ObjectDataSource ID="odsRoles" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.rolesTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_role_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="role" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="role" Type="String" />
                                            <asp:Parameter Name="Original_role_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                </td>
                            </tr>
                        </table>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</div>



