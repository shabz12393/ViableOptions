<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Password.ascx.cs" Inherits="WebControls_Settings_Password" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<style type="text/css">
    .style {
        width: 100%;
    }
</style>
<div>
    <dx:ASPxCallbackPanel ID="cpPassword" runat="server" ClientInstanceName="cpPassword" OnCallback="cpPassword_Callback">
        <ClientSideEvents EndCallback="onPasswordCallback" />
        <Paddings Padding="5px" />
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table class="style">
                    <tr>
                        <td>
                            <table class="style">
                                <tr>
                                    <td>
                                        <dx:ASPxTextBox ID="tbOldPassword" runat="server" Height="40px" HelpText="Old Password" Width="100%" Password="True">
                                            <HelpTextSettings Position="Top">
                                            </HelpTextSettings>
                                            <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                            </HelpTextStyle>
                                            <ValidationSettings ErrorDisplayMode="Text">
                                                <RequiredField IsRequired="True" ErrorText="This is required" />
                                            </ValidationSettings>
                                            <FocusedStyle Border-BorderColor="Orange">
                                            </FocusedStyle>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <dx:ASPxTextBox ID="tbNewPassword" runat="server" Height="40px" HelpText="New Password" Width="100%" Password="True">
                                            <HelpTextSettings Position="Top">
                                            </HelpTextSettings>
                                            <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                            </HelpTextStyle>
                                            <ValidationSettings ErrorDisplayMode="Text">
                                                <RequiredField IsRequired="True" ErrorText="This is required" />
                                            </ValidationSettings>
                                            <FocusedStyle Border-BorderColor="Orange">
                                            </FocusedStyle>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <dx:ASPxTextBox ID="tbConfirmPassword" runat="server" Height="40px" Width="100%" HelpText="Comfirm Password" Password="True">
                                            <HelpTextSettings Position="Top">
                                            </HelpTextSettings>
                                            <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                            </HelpTextStyle>
                                            <ValidationSettings ErrorDisplayMode="Text">
                                                <RequiredField IsRequired="True" ErrorText="This is required" />
                                            </ValidationSettings>
                                            <FocusedStyle Border-BorderColor="Orange">
                                            </FocusedStyle>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="tbNewPassword" ControlToValidate="tbConfirmPassword" ErrorMessage="*" Font-Names="" ForeColor="Red" ToolTip="Password don't match!!!"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <dx:ASPxButton ID="btnSubmit" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Submit" Width="150px">
                                            <ClientSideEvents Click="updatePassword" />
                                        </dx:ASPxButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxCallbackPanel>
</div>


