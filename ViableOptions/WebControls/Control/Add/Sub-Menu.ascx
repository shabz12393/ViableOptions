<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sub-Menu.ascx.cs" Inherits="WebControls_Control_Add_Sub_Menu" %>

<style type="text/css">
    .style {
        width: 100%;
    }
</style>
<div class="form">
    <dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
        <ClientSideEvents EndCallback="onCallback" />
        <SettingsLoadingPanel Enabled="false" />
        <Paddings Padding="10px" />
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table class="style">
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxComboBox ID="cbRole" runat="server" Height="40px" Width="100%" DataSourceID="odsRole" HelpText="Role" NullText="Role" ValueField="role_id" ValueType="System.Int32">
                                <ClientSideEvents ValueChanged="function(s, e) {
	cbMenu.PerformCallback();
}" />
                                <Columns>
                                    <dx:ListBoxColumn FieldName="role">
                                    </dx:ListBoxColumn>
                                </Columns>
                                <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Font-Bold="True">
                                </HelpTextStyle>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxComboBox>
                        </td>
                        <td class="w3-mobile extend">
                            <dx:ASPxComboBox ID="cbMenu" runat="server" Height="40px" Width="100%" ClientInstanceName="cbMenu" DataSourceID="odsMenu" HelpText="Menu" NullText="Menu" ValueField="menu_id" ValueType="System.Int32">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="title">
                                    </dx:ListBoxColumn>
                                </Columns>
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Font-Bold="True">
                                </HelpTextStyle>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxTextBox ID="tbTitle" runat="server" Height="40px" HelpText="Title" NullText="Title" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Font-Bold="True">
                                </HelpTextStyle>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxTextBox>
                        </td>
                        <td class="w3-mobile extend">
                            <dx:ASPxTextBox ID="tbUrl" runat="server" Height="40px" HelpText="Url" NullText="Url" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Font-Bold="True">
                                </HelpTextStyle>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Add" Width="150px">
                                <ClientSideEvents Click="onSubmit" />
                            </dx:ASPxButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ObjectDataSource ID="odsRole" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.rolesTableAdapter"></asp:ObjectDataSource>
                        </td>
                        <td>
                            <asp:ObjectDataSource ID="odsMenu" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsProceduresTableAdapters.getMenuByRoleTableAdapter">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="cbRole" Name="_roleId" PropertyName="Value" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
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

    <div>
        <dx:ASPxLoadingPanel ID="lpForm" runat="server" ClientInstanceName="lpForm" Font-Bold="True" ForeColor="Orange" ImagePosition="Bottom" Modal="True" Text="Please Wait...">
            <Border BorderStyle="None" />
        </dx:ASPxLoadingPanel>
    </div>
</div>


