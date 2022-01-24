<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Staff.ascx.cs" Inherits="WebControls_Control_Add_Staff" %>


<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
    <ClientSideEvents EndCallback="onFormCallback" />
    <SettingsLoadingPanel Enabled="false" />
    <Paddings Padding="5px" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="row">
                <div class="col">
                    <dx:ASPxTextBox ID="tbStaffCode" runat="server" Height="40px" HelpText="Staff Code" NullText="Staff Code" Width="100%">
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
                <div class="col">
                    <dx:ASPxTextBox ID="tbSurName" runat="server" Height="40px" HelpText="Sur Name" NullText="Full Name"
                        Width="100%">
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
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxTextBox ID="tbTelephone" runat="server" Height="40px" HelpText="Telephone" NullText="Telephone" Width="100%">
                        <MaskSettings Mask="0000-000000" />
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
                <div class="col">
                    <dx:ASPxTextBox ID="tbEmail" runat="server" Height="40px" HelpText="Email" NullText="Email" Width="100%">
                        <HelpTextSettings Position="Top">
                        </HelpTextSettings>
                        <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                        </HelpTextStyle>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxTextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxRadioButtonList ID="rblGender" runat="server" Font-Bold="True" Height="40px" RepeatDirection="Horizontal" Width="100%">
                        <Items>
                            <dx:ListEditItem Text="Male" Value="Male" />
                            <dx:ListEditItem Text="Female" Value="Female" />
                        </Items>
                        <ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                            <RequiredField IsRequired="True" ErrorText="This is required" />
                        </ValidationSettings>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxRadioButtonList>
                </div>
                <div class="col">
                    <dx:ASPxUploadControl ID="ucProfile" runat="server" FileUploadMode="OnPageLoad" OnFileUploadComplete="ucProfile_FileUploadComplete" ShowProgressPanel="True" ShowUploadButton="True" UploadMode="Advanced" Width="280px">
                        <UploadButton Text=" Upload Picture">
                        </UploadButton>
                        <AdvancedModeSettings PacketSize="300000000">
                        </AdvancedModeSettings>
                    </dx:ASPxUploadControl>
                </div>

            </div>
            <div class="row mt-2">
                <div class="col"></div>
                <div class="col">
                    <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Height="40px" Font-Bold="true"
                        Text="Save" Width="50%">
                        <ClientSideEvents Click="onSubmit" />
                    </dx:ASPxButton>
                </div>
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>

