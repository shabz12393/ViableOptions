<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Events.ascx.cs" Inherits="WebControls_Cashier_Events" %>


    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Events">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <div class="w3-container">
                                <div class="row mb-2">
                                    <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" 
                                        Text="New +" Width="150px">
                                        <ClientSideEvents Click="gridCallback" />
                                    </dx:ASPxButton>
                                </div>
                                <div class="row">
                                    <dx:ASPxGridView ID="gvEvents" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" 
                                        DataSourceID="odsEvents" EnableTheming="True" KeyFieldName="event_id" Width="100%" 
                                        OnCustomCallback="gvEvents_CustomCallback" OnRowInserting="gvEvents_RowInserting">
                                        <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true">

                                        </SettingsAdaptivity>
                                        <Settings ShowFilterRow="True" ShowHeaderFilterBlankItems="True" ShowHeaderFilterButton="True" 
                                            ShowFilterRowMenu="True" />
                                        <SettingsBehavior AllowEllipsisInText="true" EnableRowHotTrack="True" />
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
                                            <dx:GridViewDataTextColumn FieldName="event_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="event_type" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <Styles>
                                            <Header Font-Bold="True">
                                            </Header>
                                            <Cell Paddings-Padding="8px" />
                                        </Styles>
                                    </dx:ASPxGridView>
                                </div>
                                <div>
                                    <asp:ObjectDataSource ID="odsEvents" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetEvents" TypeName="CatalogAccess">
                                         </asp:ObjectDataSource>
                                </div>
                        </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</div>



