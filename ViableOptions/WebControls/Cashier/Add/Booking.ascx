<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Booking.ascx.cs" Inherits="WebControls_Cashier_Add_Booking" %>


<dx:ASPxCallbackPanel ID="cpForm" runat="server" ClientInstanceName="cpForm" OnCallback="cpForm_Callback" Width="100%">
    <SettingsLoadingPanel Enabled="False" />
    <ClientSideEvents EndCallback="onBookingCallback" />
    <PanelCollection>
        <dx:PanelContent runat="server">
            <div class="container">
            <div class="row">
                <div class="col">
                    <dx:ASPxComboBox ID="cbCustomer" runat="server" ClientInstanceName="cbCustomer"
                        EnableTheming="True" Height="40px" HelpText="Customer"
                        NullText="Select Customer" ValueField="customer_code" Width="50%">
                        <Columns>
                            <dx:ListBoxColumn FieldName="full_name">
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

            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxComboBox ID="cbBookingType" runat="server" ClientInstanceName="cbBookingType"
                        EnableTheming="True" Height="40px" HelpText="Booking Type"
                        NullText="Select Booking Type" TextField="booking_type" ValueField="booking_code" Width="100%">
                        <Columns>
                            <dx:ListBoxColumn FieldName="booking_type">
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
                    <dx:ASPxComboBox ID="cbEvent" runat="server" ClientInstanceName="cbEvent"
                        EnableTheming="True" Height="40px" HelpText="Event" NullText="Select Event"
                        TextField="event_type" ValueField="event_id" ValueType="System.Int32" Width="100%">
                        <Columns>
                            <dx:ListBoxColumn FieldName="event_type">
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
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxMemo ID="mVenue" runat="server" ClientInstanceName="mVenue" Height="71px" HelpText="Venue"
                        NullText="Venue" Width="100%">
                        <HelpTextSettings Position="Top">
                        </HelpTextSettings>
                        <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                        </HelpTextStyle>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxMemo>
                </div>
                <div class="col">
                    <dx:ASPxMemo ID="mDescription" runat="server" ClientInstanceName="mNotes" Height="71px" HelpText="Description" NullText="Event Description" Width="100%">
                        <HelpTextSettings Position="Top">
                        </HelpTextSettings>
                        <HelpTextStyle Border-BorderStyle="None" Font-Bold="True">
                        </HelpTextStyle>
                        <FocusedStyle Border-BorderColor="Orange">
                        </FocusedStyle>
                    </dx:ASPxMemo>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxDateEdit ID="deStart" runat="server" ClientInstanceName="deStart" Height="40px" HelpText="Delivery Date" NullText="Delivery Date" Width="100%" EditFormat="Custom" EditFormatString="dd/MM/yyyy HH:mm " UseMaskBehavior="True">
                        <TimeSectionProperties Visible="True">
                            <TimeEditProperties AllowNull="False" EditFormat="Custom" EditFormatString="HH:mm ">
                            </TimeEditProperties>
                        </TimeSectionProperties>
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
                    </dx:ASPxDateEdit>
                </div>
                <div class="col">
                    <dx:ASPxDateEdit ID="deEnd" runat="server" ClientInstanceName="deEnd" EditFormat="Custom" EditFormatString="dd/MM/yyyy HH:mm" Height="40px" HelpText="Return Date" NullText="Return Date" UseMaskBehavior="True" Width="100%">
                        <TimeSectionProperties Visible="True">
                            <TimeEditProperties AllowNull="False" EditFormat="Custom" EditFormatString="HH:mm">
                            </TimeEditProperties>
                        </TimeSectionProperties>
                        <DateRangeSettings StartDateEditID="deStart" />
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
                    </dx:ASPxDateEdit>
                </div>
            </div>
            <div class="row">
                <div class="col mt-2">
                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Guests">
                    </dx:ASPxLabel>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <dx:ASPxCheckBoxList ID="cblGuests" runat="server" TextField="full_name"
                        ValueField="email" Width="100%">
                    </dx:ASPxCheckBoxList>
                </div>
                <div class="col">
                    <dx:ASPxTextBox ID="tbCustomerEmail" runat="server" Height="40px" HelpText="Customer Email"
                        NullText="Enter Email" Width="100%">
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
                <div class="col">&nbsp;</div>
                <div class="col">
                    <dx:ASPxButton ID="bSubmit" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                        Text="Next &gt;&gt;" Width="50%">
                        <ClientSideEvents Click="onSubmit" />
                    </dx:ASPxButton>
                </div>
            </div>
            </div>
        </dx:PanelContent>
    </PanelCollection>
</dx:ASPxCallbackPanel>




