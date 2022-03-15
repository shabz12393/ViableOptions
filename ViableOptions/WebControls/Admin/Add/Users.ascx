<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users.ascx.cs" Inherits="WebControls_Admin_Add_Users" %>


<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
    <ClientSideEvents EndCallback="onCallback" />
    <SettingsLoadingPanel Enabled="false" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="row">
                <div class="col">
                    <dx:ASPxComboBox ID="cbStaff" runat="server" DataSourceID="odsStaff" Font-Bold="False" Height="40px"
                        HelpText="Staff Name" NullText="Select Staff" TextField="Staff Name" ValueField="staff_id"
                        ValueType="System.Int32" Width="100%">
                        <Columns>
                            <dx:ListBoxColumn FieldName="full_name">
                            </dx:ListBoxColumn>
                        </Columns>
                        <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
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
                </div>
                <div class="col">
                    <dx:ASPxTextBox ID="tbUserName" runat="server" Font-Bold="False" Height="40px" HelpText="User Name"
                        NullText="User Name" Width="100%">
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
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxTextBox ID="tbPassword" runat="server" Font-Bold="False" Height="40px" HelpText="Password"
                        NullText="Password" Password="True" Width="100%">
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
            <div>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="tbPassword"
                    ControlToValidate="tbConfirmPassword" ErrorMessage="Password don't match" ForeColor="Red">
                </asp:CompareValidator>
            </div>
                </div>
                <div class="col">
                    <dx:ASPxTextBox ID="tbConfirmPassword" runat="server" Font-Bold="False" Height="40px" HelpText="Confirm Password"
                        NullText="Confirm Password" Password="True" Width="100%">
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
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <dx:ASPxComboBox ID="cbRoles" runat="server" DataSourceID="odsRoles" Font-Bold="False" Height="40px"
                        HelpText="Role" NullText="Select Role" ValueField="role_id" ValueType="System.Int32" Width="100%">
                        <Columns>
                            <dx:ListBoxColumn FieldName="col_role">
                            </dx:ListBoxColumn>
                        </Columns>
                        <SettingsAdaptivity Mode="OnWindowInnerWidth" ModalDropDownCaption="Select" />
                        <HelpTextSettings Position="Top">
                        </HelpTextSettings>
                        <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                        </HelpTextStyle>
                        <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                            <RequiredField ErrorText="This is required" IsRequired="True" />
                        </ValidationSettings>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxComboBox>
                </div>
                <div class="col mt-4">
                    <dx:ASPxButton ID="btnSubmit" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                        Text="Save" Width="50%">
                        <ClientSideEvents Click="onSubmit" />
                    </dx:ASPxButton>
                </div>
            </div>
            <div>
                <asp:ObjectDataSource ID="odsStaff" runat="server" SelectMethod="GetStaffs" TypeName="CatalogAccess" />
            </div>
            <div>

                <asp:ObjectDataSource ID="odsRoles" runat="server" SelectMethod="GetOtherRoles" TypeName="CatalogAccess" />
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>

