<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Company.ascx.cs" Inherits="WebControls_Control_Company" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<style type="text/css">
    .style {
        width: 100%;
    }
</style>
<div>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Company Management">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <table class="style">
                            <tr>
                                <td>
                                    <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Font-Names="" Height="40px" Text="Add" Width="150px">
                                        <ClientSideEvents Click="gridCallback" />
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <dx:ASPxGridView ID="gvCompany" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsCompany" EnableTheming="True" KeyFieldName="company_id" Width="100%" Font-Names="" OnCustomCallback="gvCompany_CustomCallback">
                                        <ClientSideEvents EndCallback="onEndCallback" />
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
                                            <dx:GridViewDataTextColumn FieldName="company_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="5">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="company" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="contact" ShowInCustomizationForm="True" VisibleIndex="3">
                                                <PropertiesTextEdit>
                                                    <MaskSettings Mask="(999) 000-000000" />
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="address" ShowInCustomizationForm="True" VisibleIndex="4">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn Caption="Tin Number" FieldName="tin_number" ShowInCustomizationForm="True" VisibleIndex="2">
                                                <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
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
                                    <asp:ObjectDataSource ID="odsCompany" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.companyTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_company_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="company" Type="String" />
                                            <asp:Parameter Name="tin_number" Type="String" />
                                            <asp:Parameter Name="contact" Type="String" />
                                            <asp:Parameter Name="address" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="company" Type="String" />
                                            <asp:Parameter Name="tin_number" Type="String" />
                                            <asp:Parameter Name="contact" Type="String" />
                                            <asp:Parameter Name="address" Type="String" />
                                            <asp:Parameter Name="Original_company_id" Type="Int32" />
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


