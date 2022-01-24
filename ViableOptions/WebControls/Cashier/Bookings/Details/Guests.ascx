<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Guests.ascx.cs" Inherits="WebControls_Cashier_Bookings_Details_Guests" %>



<div class="row">
    <dx:ASPxGridView ID="gvGuests" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvGuests" EnableRowsCache="False" EnableTheming="True" KeyFieldName="guestId" Width="100%">
        <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
        </SettingsAdaptivity>
        <SettingsEditing Mode="EditForm">
        </SettingsEditing>
        <Settings VerticalScrollableHeight="200" VerticalScrollBarMode="Visible" />
        <SettingsBehavior EnableRowHotTrack="True" />
        <SettingsCommandButton>
            <UpdateButton RenderMode="Button">
            </UpdateButton>
            <CancelButton RenderMode="Button">
            </CancelButton>
        </SettingsCommandButton>
        <EditFormLayoutProperties>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="50" />
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn Caption="guests" FieldName="emails" ShowInCustomizationForm="True" VisibleIndex="0">
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Styles>
            <Header Font-Bold="True">
            </Header>
            <Cell Paddings-Padding="7px" />
        </Styles>
    </dx:ASPxGridView>
</div>
