<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Stock.ascx.cs" Inherits="WebControls_Cashier_Add_Stock" %>


<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
    <SettingsLoadingPanel Enabled="False" />
    <ClientSideEvents EndCallback="function(s,e){
            onCallback(s,e);
            cbItems.PerformCallback();
            }" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="w3-container">
                <div class="row">
                    <div class="col">
                        <dx:ASPxComboBox ID="cbItems" runat="server" ClientInstanceName="cbItems" DataSourceID="odsItems" EnableTheming="True" Height="40px" HelpText="Items" NullText="Select Item" ValueField="item_id" Width="100%" ValueType="System.Int32">
                            <Columns>
                                <dx:ListBoxColumn FieldName="item">
                                </dx:ListBoxColumn>
                            </Columns>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxComboBox>
                    </div>
                    <div class="col">
                        <dx:ASPxSpinEdit ID="seStock" runat="server" Height="40px" HelpText="Stock" NullText="Stock"
                            Number="0" Width="100%">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxSpinEdit>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col">&nbsp;</div>
                    <div class="col">
                        <dx:ASPxButton ID="bSubmit0" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Submit"
                            Width="150px">
                            <ClientSideEvents Click="onSubmit" />
                        </dx:ASPxButton>
                    </div>
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsItems" runat="server" OldValuesParameterFormatString="original_{0}"
                        SelectMethod="GetItems" TypeName="CatalogAccess"></asp:ObjectDataSource>
                </div>
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>



