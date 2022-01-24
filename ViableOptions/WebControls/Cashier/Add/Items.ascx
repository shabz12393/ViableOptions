<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Items.ascx.cs" Inherits="WebControls_Cashier_Add_Item" %>


<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
    <SettingsLoadingPanel Enabled="False" />
    <ClientSideEvents EndCallback="onCallback" />
    <Paddings Padding="5px" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="row">
                <div class="col">
                    <dx:ASPxTextBox ID="tbItem" runat="server" ClientInstanceName="tbItem" Height="40px" HelpText="Item"
                        NullText="Enter Item" Width="100%">
                        <HelpTextSettings Position="Top">
                        </HelpTextSettings>
                        <HelpTextStyle Font-Bold="True">
                        </HelpTextStyle>
                        <ValidationSettings ErrorDisplayMode="Text">
                            <RequiredField ErrorText="This is required" IsRequired="True" />
                        </ValidationSettings>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxTextBox>
                </div>
                <div class="col">
                    <dx:ASPxSpinEdit ID="sePrice" runat="server" ClientInstanceName="sePrice" Height="40px" HelpText="Price"
                        MaxValue="1000000000" NullText="Price" Number="0" ToolTip="Price" Width="100%">
                        <SpinButtons ShowIncrementButtons="False">
                        </SpinButtons>
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
                    <dx:ASPxSpinEdit ID="seStock" runat="server" ClientInstanceName="seStock" Height="40px" HelpText="Stock"
                        MaxValue="1000000000" NullText="Stock" Number="0" ToolTip="Stock" Width="100%">
                        <SpinButtons ShowIncrementButtons="False">
                        </SpinButtons>
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
                <div class="col">
                    <dx:ASPxComboBox ID="cbCategory" runat="server" ClientInstanceName="cbCategory" DataSourceID="odsCategory" Height="40px" HelpText="Item Category" NullText="Select Category" TextField="category" ValueField="category_id" ValueType="System.Int32" Width="100%">
                        <SettingsAdaptivity ModalDropDownCaption="Select" Mode="OnWindowInnerWidth" />
                        <HelpTextSettings Position="Top">
                        </HelpTextSettings>
                        <HelpTextStyle Font-Bold="True">
                        </HelpTextStyle>
                        <ValidationSettings ErrorDisplayMode="Text">
                            <RequiredField ErrorText="This is required" IsRequired="True" />
                        </ValidationSettings>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxComboBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxSpinEdit ID="seOrderLevel" runat="server" ClientInstanceName="seOrderLevel" Height="40px"
                        HelpText="Re-Order-Level" MaxValue="1000000000" NullText="Re-Order-Level" Number="0"
                        ToolTip="Re-Order-Level" Width="100%">
                        <SpinButtons ShowIncrementButtons="False">
                        </SpinButtons>
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
                <div class="col mt-2">
                    <dx:ASPxButton ID="bAdd" runat="server" AutoPostBack="False" Font-Bold="True" 
                        Height="40px" Text="Submit" Width="50%">
                        <ClientSideEvents Click="addItem" />
                    </dx:ASPxButton>
                </div>
            </div>
            <div>
                <asp:ObjectDataSource ID="odsCategory" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetCategories" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>
