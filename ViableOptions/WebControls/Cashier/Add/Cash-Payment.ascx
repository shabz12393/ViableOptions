<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Cash-Payment.ascx.cs" Inherits="WebControls_Cashier_Add_Cash_Payment" %>


<div class="form">
    <dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback">
        <SettingsLoadingPanel Enabled="false" />
        <ClientSideEvents EndCallback="onPaymentCallback" />
        <Paddings Padding="5px" />
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table class="style">
                    <tr>
                        <td colspan="2" class="w3-mobile">
                            <dx:ASPxLabel ID="lblTotal" runat="server" Font-Bold="True" Font-Size="Medium">
                            </dx:ASPxLabel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxSpinEdit ID="seDeposit" runat="server" ClientInstanceName="seDeposit" DisplayFormatString="n0" Height="40px" HelpText="Deposit" NullText="Deposit" Number="0" Width="100%">
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
                        </td>
                        <td class="w3-mobile extend">
                            <dx:ASPxSpinEdit ID="seDiscount" runat="server" ClientInstanceName="seDiscount" DisplayFormatString="n0" Height="40px" HelpText="Discount" NullText="Discount" Number="0" Width="100%">
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
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxComboBox ID="cbPaymentMode" runat="server" ClientInstanceName="cbPaymentMode" DataSourceID="odsPaymentMode" EnableTheming="True" Height="40px" HelpText="Payment Mode" NullText="Payment Mode" SelectedIndex="4" ValueField="mode_id" ValueType="System.Int32" Width="100%">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="mode">
                                    </dx:ListBoxColumn>
                                </Columns>
                                <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
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
                        </td>
                        <td class="w3-mobile extend">
                            <dx:ASPxMemo ID="mNotes" runat="server" Height="71px" HelpText="Transaction Notes" NullText="Transaction Notes" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Font-Bold="True">
                                </HelpTextStyle>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxMemo>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxTextBox ID="tbReceipt" runat="server" Height="40px" HelpText="Receipt No" NullText="Receipt No" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Font-Bold="True">
                                </HelpTextStyle>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxTextBox>
                        </td>
                        <td class="w3-mobile extend">
                            <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Submit" Width="150px">
                                <ClientSideEvents Click="onSubmit" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:ObjectDataSource ID="odsPaymentMode" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.payment_modeTableAdapter">
                            </asp:ObjectDataSource>
                        </td>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                </table>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxCallbackPanel>
</div>

