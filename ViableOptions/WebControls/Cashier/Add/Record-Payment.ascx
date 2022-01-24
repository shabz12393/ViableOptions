<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Record-Payment.ascx.cs" Inherits="WebControls_Cashier_Add_Record_Payment" %>

<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpPayment" OnCallback="cpForm_Callback" Width="100%">
    <SettingsLoadingPanel Enabled="false" />
    <ClientSideEvents EndCallback="function(s,e){
        lpForm.Hide();
        gvPayments.Refresh();
        }" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="container">

                <div class="row">
                    <div class="col">
                        <dx:ASPxLabel ID="lblTotal" runat="server" Font-Bold="true" Font-Size="Medium">
                        </dx:ASPxLabel>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <dx:ASPxSpinEdit ID="seCash" runat="server" ClientInstanceName="seCash"
                            DisplayFormatString="n0" Height="40px"
                            HelpText="Cash" NullText="Cash" Number="0" Width="100%">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="true">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField ErrorText="This is required" IsRequired="true" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxSpinEdit>
                    </div>
                    <div class="col">
                        <dx:ASPxSpinEdit ID="seDiscount" runat="server" ClientInstanceName="seDiscount" DisplayFormatString="n0"
                            Height="40px" HelpText="Discount" NullText="Discount" Number="0" Width="100%">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="true">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField ErrorText="This is required" IsRequired="true" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxSpinEdit>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <dx:ASPxComboBox ID="cbPaymentMode" runat="server" ClientInstanceName="cbPaymentMode"
                            DataSourceID="odsPaymentMode" EnableTheming="true" Height="40px" HelpText="Payment Mode"
                            NullText="Payment Mode" SelectedIndex="4" ValueField="pm_id" ValueType="System.Int32" Width="100%">
                            <Columns>
                                <dx:ListBoxColumn FieldName="payt_mode">
                                </dx:ListBoxColumn>
                            </Columns>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="true">
                            </HelpTextStyle>
                            <ValidationSettings ErrorDisplayMode="Text">
                                <RequiredField ErrorText="This is required" IsRequired="true" />
                            </ValidationSettings>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxComboBox>
                    </div>
                    <div class="col">
                        <dx:ASPxMemo ID="mNotes" runat="server" Height="71px" HelpText="Transaction Notes"
                            NullText="Tansaction Notes" Width="100%" ClientInstanceName="mNotes">
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="true">
                            </HelpTextStyle>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxMemo>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <dx:ASPxTextBox ID="tbReceipt" runat="server" ClientInstanceName="tbReceipt" Height="40px" HelpText="Receipt No" NullText="Receipt No"
                            Width="100%">
                            <HelpTextSettings Position="Top">
                            </HelpTextSettings>
                            <HelpTextStyle Font-Bold="true">
                            </HelpTextStyle>
                            <FocusedStyle Border-BorderColor="Orange">
                            </FocusedStyle>
                        </dx:ASPxTextBox>
                    </div>
                    <div class="col mt-4">
                        <dx:ASPxButton ID="bPayment" runat="server" AutoPostBack="False" Font-Bold="true" Height="40px" Text="Submit"
                            Width="50%">
                            <ClientSideEvents Click="Record_Payment" />
                        </dx:ASPxButton>
                    </div>
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsPaymentMode" runat="server"
                        SelectMethod="GetPaymentModes" TypeName="CatalogAccess" />
                </div>
                <div>
                    <asp:ObjectDataSource ID="odsCustomers" runat="server"
                        SelectMethod="GetCustomers" TypeName="CatalogAccess" />
                </div>
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>
