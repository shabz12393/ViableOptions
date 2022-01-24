<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users.ascx.cs" Inherits="WebControls_Control_Add_Users" %>

<style type="text/css">
    .style {
        width: 100%;
    }
</style>

<div class="form">
    <dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
        <ClientSideEvents EndCallback="onCallback" />
        <SettingsLoadingPanel Enabled="false" />
        <Paddings Padding="5px" />
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table class="style">
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxComboBox ID="cbStaff" runat="server" DataSourceID="odsStaff" Font-Bold="False" Height="40px" HelpText="Staff Name" NullText="Select Staff" TextField="Staff Name" Theme="MetropolisBlue" ValueField="staff_id" ValueType="System.Int32" Width="100%">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="Full Name">
                                    </dx:ListBoxColumn>
                                </Columns>
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                </HelpTextStyle>
                                <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField IsRequired="True" ErrorText="This is required" />
                                </ValidationSettings>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxComboBox>
                        </td>
                        <td class="w3-mobile">
                            <dx:ASPxTextBox ID="tbUserName" runat="server" Font-Bold="False" Height="40px" HelpText="User Name" NullText="User Name" Theme="MetropolisBlue" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                </HelpTextStyle>
                                <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField ErrorText="This is required" IsRequired="True" />
                                </ValidationSettings>
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
                            <dx:ASPxTextBox ID="tbPassword" runat="server" Font-Bold="False" Height="40px" HelpText="Password" NullText="Password" Password="True" Theme="MetropolisBlue" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                </HelpTextStyle>
                                <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField IsRequired="True" ErrorText="This is required" />
                                </ValidationSettings>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxTextBox>
                        </td>
                        <td class="w3-mobile">
                            <dx:ASPxTextBox ID="tbConfirmPassword" runat="server" Font-Bold="False" Height="40px" HelpText="Confirm Password" NullText="Confirm Password" Password="True" Theme="MetropolisBlue" Width="100%">
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                </HelpTextStyle>
                                <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField ErrorText="This is required" IsRequired="True" />
                                </ValidationSettings>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ErrorMessage="Password don't match" ForeColor="Red"></asp:CompareValidator>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="w3-mobile">
                            <dx:ASPxComboBox ID="cbRoles" runat="server" DataSourceID="odsRole" Font-Bold="False" Height="40px" HelpText="Role" NullText="Select Role" ValueField="roleId" ValueType="System.Int32" Width="100%">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="role">
                                    </dx:ListBoxColumn>
                                </Columns>
                                <HelpTextSettings Position="Top">
                                </HelpTextSettings>
                                <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                                </HelpTextStyle>
                                <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField IsRequired="True" ErrorText="This is required" />
                                </ValidationSettings>
                                <FocusedStyle Border-BorderColor="Orange">
                                </FocusedStyle>
                            </dx:ASPxComboBox>
                        </td>
                        <td class="w3-mobile">
                            <dx:ASPxButton ID="btnSubmit" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="Submit" Width="150px">
                                <ClientSideEvents Click="onSubmit" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ObjectDataSource ID="odsStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsProceduresTableAdapters.getStaffNameAndIdTableAdapter"></asp:ObjectDataSource>
                        </td>
                        <td>
                            <asp:ObjectDataSource ID="odsRole" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dsMainTableAdapters.rolesTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_role_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="role" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="role" Type="String" />
                                    <asp:Parameter Name="Original_role_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxCallbackPanel>

</div>
<div>
    <dx:ASPxLoadingPanel ID="lpForm" runat="server" ClientInstanceName="lpForm" Font-Bold="True" ForeColor="Orange" ImagePosition="Bottom" Modal="True" Text="Please Wait...">
        <Border BorderStyle="None" />
    </dx:ASPxLoadingPanel>
</div>

