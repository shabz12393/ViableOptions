<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Booking-Types.ascx.cs" Inherits="Admin_Bookings_Booking_Types" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Booking Types</h5>
    </div>
    <div class="card-body">
        <div class="w3-container">
            <div class="row mb-2">
                <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="New +" Width="150px">
                    <ClientSideEvents Click="gridCallback" />
                </dx:ASPxButton>
            </div>
            <div class="row">
                <dx:ASPxGridView ID="gvTypes" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="odsBookingTypes" EnableTheming="True" KeyFieldName="typeId" OnCustomCallback="gvTypes_CustomCallback" Width="100%">
                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="800" AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                    </SettingsAdaptivity>
                    <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
                    <SettingsCommandButton>
                        <UpdateButton RenderMode="Button">
                        </UpdateButton>
                        <CancelButton RenderMode="Button">
                        </CancelButton>
                    </SettingsCommandButton>
                    <EditFormLayoutProperties>
                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                    </EditFormLayoutProperties>
                    <SettingsEditing Mode="EditForm"></SettingsEditing>
                    <SettingsPager PageSize="40" NumericButtonCount="6" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="typeId" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="booking_code" ShowInCustomizationForm="True" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="booking_type" ShowInCustomizationForm="True" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True">
                        </dx:GridViewCommandColumn>
                    </Columns>
                    <Styles>
                        <Header Font-Bold="True">
                        </Header>
                        <Cell>
                            <Paddings Padding="7px" />
                        </Cell>
                    </Styles>
                </dx:ASPxGridView>
            </div>
            <div>
                <asp:ObjectDataSource ID="odsBookingTypes" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetBookingTypes" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</div>



