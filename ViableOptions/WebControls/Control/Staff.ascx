<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Staff.ascx.cs" Inherits="WebControls_Control_Staff" %>

<style type="text/css">
    .style {
        width: 100%;
    }
</style>
<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%" Theme="Metropolis">
    <TabPages>
        <dx:TabPage Text="Staff Management">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <table class="style">
                        <tr>
                            <td colspan="3">
                                <dx:ASPxCallbackPanel ID="cpNew" runat="server" ClientInstanceName="cpNew" OnCallback="cpNew_Callback" Width="100%">
                                    <PanelCollection>
                                        <dx:PanelContent runat="server">
                                            <table class="style">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Add " Width="150px">
                                                            <ClientSideEvents Click="callback" />
                                                        </dx:ASPxButton>
                                                    </td>
                                                    <td>
                                                        <dx:ASPxPopupControl ID="pcNew" runat="server" ContentUrl="~/Control/Add/Staff.aspx" EnableTheming="True" HeaderText="Staff Registration" Modal="True" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" Theme="Metropolis">
                                                            <ClientSideEvents CloseUp="refresh" Init="OnPopupInit" />
                                                            <HeaderStyle Font-Bold="True" />
                                                            <ContentCollection>
                                                                <dx:PopupControlContentControl runat="server">
                                                                </dx:PopupControlContentControl>
                                                            </ContentCollection>
                                                        </dx:ASPxPopupControl>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxCallbackPanel>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <dx:ASPxGridView runat="server" Width="100%" ID="gvStaff" ClientInstanceName="gvStaff"
                                    AutoGenerateColumns="False" DataSourceID="odsStaff" KeyFieldName="staff_id" EnableRowsCache="false" OnRowUpdating="gvStaff_RowUpdating" EnableTheming="True" Theme="Metropolis">
                                    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" ShowFilterRow="True" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                                    <ClientSideEvents EndCallback="onEndCallback" />
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
                                    <Columns>
                                        <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                        </dx:GridViewCommandColumn>
                                        <dx:GridViewDataTextColumn FieldName="staff_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="8">
                                            <EditFormSettings Visible="False" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="sur_name" ShowInCustomizationForm="True" VisibleIndex="1">
                                            <PropertiesTextEdit>
                                                <ValidationSettings>
                                                    <RequiredField IsRequired="True" />
                                                </ValidationSettings>
                                            </PropertiesTextEdit>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="other_name" ShowInCustomizationForm="True" VisibleIndex="3">
                                            <PropertiesTextEdit ConvertEmptyStringToNull="False">
                                            </PropertiesTextEdit>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="telephone" ShowInCustomizationForm="True" VisibleIndex="4">
                                            <PropertiesTextEdit>
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
                                                </Items>
                                                <ValidationSettings>
                                                    <RequiredField IsRequired="True" />
                                                </ValidationSettings>
                                                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                                            </PropertiesComboBox>
                                        </dx:GridViewDataComboBoxColumn>
                                        <dx:GridViewDataImageColumn Caption="Image" FieldName="pic_url" ShowInCustomizationForm="True" VisibleIndex="2">
                                            <PropertiesImage ImageUrlFormatString="~/Images/Profile/{0}" ImageHeight="40px" ImageWidth="40px">
                                            </PropertiesImage>
                                            <EditFormSettings Visible="False" />
                                        </dx:GridViewDataImageColumn>
                                        <dx:GridViewDataComboBoxColumn FieldName="staff_status" ShowInCustomizationForm="True" VisibleIndex="7">
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
                                <asp:ObjectDataSource ID="odsStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.StaffsTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                    <DeleteParameters>
                                        <asp:Parameter Name="p1" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="surName" Type="String" />
                                        <asp:Parameter Name="otherName" Type="String" />
                                        <asp:Parameter Name="telephone" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="gender" Type="String" />
                                        <asp:Parameter Name="picUrl" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="sur_name" Type="String" />
                                        <asp:Parameter Name="otherName" Type="String" />
                                        <asp:Parameter Name="telephone" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="gender" Type="String" />
                                        <asp:Parameter Name="staffStatus" Type="String" />
                                        <asp:Parameter Name="Original_staff_id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:ObjectDataSource>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>


