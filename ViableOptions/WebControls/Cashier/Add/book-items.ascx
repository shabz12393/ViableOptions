<%@ Control Language="C#" AutoEventWireup="true" CodeFile="book-items.ascx.cs" Inherits="WebControls_Cashier_Add_book_items" %>

<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback">
    <SettingsLoadingPanel Enabled="False" />
    <ClientSideEvents EndCallback="onBookItemCallback" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="container">

                <div class="row">
                    <div class="col">
                        <dx:ASPxComboBox ID="cbItem" runat="server" ClientInstanceName="cbItem"
                            Height="40px" HelpText="Items" NullText="Select Item" ValueField="item_id"
                            ValueType="System.Int32" Width="100%">
                            <ClientSideEvents SelectedIndexChanged="onItemChanged" />
                            <Columns>
                                <dx:ListBoxColumn FieldName="item">
                                </dx:ListBoxColumn>
                            </Columns>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="True">
                            </HelpTextStyle>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField IsRequired="True" ErrorText="This is required" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
                    </div>
                    <div class="col">
                        <dx:ASPxSpinEdit ID="seQty" runat="server" ClientInstanceName="seQty" Height="40px" HelpText="Quantity" MaxValue="1000000000" MinValue="0" NullText="Quantity" Number="1" ToolTip="Quantity" Width="100%">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <ClientSideEvents ValueChanged="calculateAmount" />
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="True">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField ErrorText="This is required" IsRequired="True" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxSpinEdit>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <dx:ASPxComboBox ID="cbStock" runat="server" ClientInstanceName="cbStock" EnableTheming="True"
                            Height="40px" HelpText="Available Stock" NullText="Available Stock" ValueField="stock" DataSourceID="odsStock"
                            ValueType="System.Int32" Width="100%" TextField="stock">
                            <ClientSideEvents EndCallback="onSelectedIndex" />
                            <Columns>
                                <dx:ListBoxColumn FieldName="stock">
                                </dx:ListBoxColumn>
                            </Columns>
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="True">
                            </HelpTextStyle>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxComboBox>
                    </div>
                    <div class="col">
                        <dx:ASPxComboBox ID="cbPrice" runat="server" ClientInstanceName="cbPrice" DisplayFormatString="n0" EnableTheming="True" Height="40px" HelpText="Unit Cost" NullText="Unit Cost" ValueField="price" ValueType="System.Int32" Width="100%" DataSourceID="odsPrice">
                            <ClientSideEvents EndCallback="function(s, e) {
onSelectedIndex(s,e);
calculateAmount(s,e);
}" />
                            <Columns>
                                <dx:ListBoxColumn FieldName="price">
                                </dx:ListBoxColumn>
                            </Columns>
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="True">
                            </HelpTextStyle>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxComboBox>
                        <dx:ASPxSpinEdit ID="sePrice" runat="server" ClientInstanceName="sePrice" ClientVisible="False" DisplayFormatString="n0" Height="40px" HelpText="Unit Cost" MaxValue="1000000000" NullText="Unit Cost" Number="1" ToolTip="Unit Cost" Width="100%">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <ClientSideEvents ValueChanged="calculateAmount" Init="calculateAmount" />
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="True">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField ErrorText="This is required" IsRequired="True" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxSpinEdit>
                    </div>
                </div>
                <div class="row">
                    <dx:ASPxCheckBox ID="cbOverride" runat="server" CheckState="Unchecked" ClientInstanceName="cbOverride" Text="Override Price">
                        <ClientSideEvents CheckedChanged="function (s,e){
                                    onOverridePrice(s,e);
                                    calculateAmount(s,e);
                                    }" />
                    </dx:ASPxCheckBox>
                </div>
                <div class="row">
                    <div class="col">
                        <dx:ASPxComboBox ID="cbAmount" runat="server" ClientInstanceName="cbAmount" DisplayFormatString="n0"
                            EnableTheming="True" Height="40px" HelpText="Total Amount" NullText="Total Amount"
                            ValueType="System.Int32" Width="50%">
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="True">
                            </HelpTextStyle>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxComboBox>
                    </div>
                </div>
                <div class="row mt-2 mb-2">
                    <div class="col">
                        <dx:ASPxButton ID="bAdd" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                            Text="Add to Cart"
                            Width="50%">
                            <ClientSideEvents Click="addEventItem" />
                        </dx:ASPxButton>
                    </div>
                    <div class="col">
                        <dx:ASPxButton ID="bSubmit" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                            Text="Submit" Width="50%" ValidationGroup="itemGrp">
                            <ClientSideEvents Click="submit" />
                        </dx:ASPxButton>
                    </div>
                </div>
                <div class="row">
                    <dx:ASPxGridView ID="gvItems" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvItems"
                        DataSourceID="odsItemsBooked" EnableTheming="True" KeyFieldName="serial_no"
                        Width="100%" OnRowUpdating="gvItems_RowUpdating" OnRowDeleting="gvItems_RowDeleting">
                        <ClientSideEvents EndCallback="onEndCallback" />
                        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                        </SettingsAdaptivity>
                        <SettingsPager PageSize="50">
                        </SettingsPager>
                        <SettingsEditing Mode="EditForm">
                        </SettingsEditing>
                        <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFooter="True" />
                        <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
                        <SettingsCommandButton>
                            <UpdateButton RenderMode="Button">
                            </UpdateButton>
                            <CancelButton RenderMode="Button">
                            </CancelButton>
                        </SettingsCommandButton>

                        <SettingsPopup>
                            <HeaderFilter MinHeight="140px"></HeaderFilter>
                        </SettingsPopup>

                        <SettingsLoadingPanel Mode="Disabled" />
                        <EditFormLayoutProperties>
                            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                        </EditFormLayoutProperties>
                        <TotalSummary>
                            <dx:ASPxSummaryItem FieldName="totalAmount" ShowInGroupFooterColumn="total Amount" SummaryType="Sum" />
                        </TotalSummary>
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="serial_no" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="5">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="price" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Unit Cost">
                                <PropertiesTextEdit DisplayFormatInEditMode="true" DisplayFormatString="n0" />
                                <EditFormSettings Visible="false" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="quantity" ShowInCustomizationForm="True" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="amount" ShowInCustomizationForm="True" VisibleIndex="4" ReadOnly="true" Caption="Total Amount">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="n0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="item_id" ShowInCustomizationForm="True" VisibleIndex="1" Caption="item" ReadOnly="True">
                                <PropertiesComboBox DataSourceID="odsItem" TextField="item" ValueField="item_id" ValueType="System.Int32">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                        </Columns>
                    </dx:ASPxGridView>
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsItem" runat="server"
                        SelectMethod="GetItems" TypeName="CatalogAccess" />
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsStock" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStockForDate" TypeName="CatalogAccess">
                        <SelectParameters>
                            <asp:SessionParameter Name="delivery_dt" SessionField="delivery_dt" Type="DateTime" />
                            <asp:ControlParameter ControlID="cbItem" Name="item_id" PropertyName="Value" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsItemsBooked" runat="server" SelectMethod="GetItemsBooked" TypeName="CatalogAccess">
                        <SelectParameters>
                            <asp:SessionParameter Name="booking_id" SessionField="booking_id" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsPrice" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetItemDetails" TypeName="CatalogAccess">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="cbItem" Name="item_id" PropertyName="Value" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>
