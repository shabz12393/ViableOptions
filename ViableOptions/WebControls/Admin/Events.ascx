<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Events.ascx.cs" Inherits="WebControls_Admin_Events" %>

<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Events</h5>
    </div>
    <div class="card-body">
        <div class="w3-container">
            <div class="row mb-2">
                <dx:ASPxButton ID="btnNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px" Text="New +"
                    Width="150px">
                    <ClientSideEvents Click="function(s, e) {
	gvEvents.PerformCallback();
}" />
                </dx:ASPxButton>
            </div>
            <div class="row">
                <dx:ASPxGridView ID="gvEvents" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvEvents"
                    DataSourceID="odsEvents" EnableTheming="True" KeyFieldName="event_id" Width="100%"
                    OnCustomCallback="gvEvents_CustomCallback" OnRowUpdating="gvEvents_RowUpdating" OnRowInserting="gvEvents_RowInserting">
                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="600"
                        AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                    </SettingsAdaptivity>
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterBlankItems="True"
                        ShowHeaderFilterButton="True" ShowFilterRowMenu="True" />
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
                        <dx:GridViewDataTextColumn FieldName="event_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="event_type" ShowInCustomizationForm="True" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                    </Columns>
                    <Styles>
                        <Header Font-Bold="True">
                        </Header>
                        <Cell>
                            <Paddings Padding="5px" />
                        </Cell>
                    </Styles>
                </dx:ASPxGridView>
            </div>
            <div>
                <asp:ObjectDataSource ID="odsEvents" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetEvents" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</div>



