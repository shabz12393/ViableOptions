<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Payment-Modes.ascx.cs" Inherits="WebControls_Admin_Payments_Payment_Modes" %>


<div class="card">
    <div class="card-header font-weight-bold">
        <h5>Payment Modes</h5>
    </div>
    <div class="card-body">
        <div class="w3-container">
            <div class="row mb-2">
                <dx:ASPxButton ID="bNew" runat="server" AutoPostBack="False" Font-Bold="True" Height="40px"
                    Text="New +" Width="30%">
                    <ClientSideEvents Click="gridCallback" />
                </dx:ASPxButton>
            </div>
            <div class="row">
                <dx:ASPxGridView ID="gvPaymentMode" runat="server" ClientInstanceName="grid"
                    OnCustomCallback="gvPaymentMode_CustomCallback" Width="100%" AutoGenerateColumns="False"
                    DataSourceID="odsPaymentModes" EnableTheming="True" KeyFieldName="pm_id" OnRowInserting="gvPaymentMode_RowInserting"
                    OnRowUpdating="gvPaymentMode_RowUpdating">
                    <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="500"
                        AllowOnlyOneAdaptiveDetailExpanded="true" AdaptiveDetailColumnCount="1">
                    </SettingsAdaptivity>
                    <SettingsPager PageSize="50">
                    </SettingsPager>
                    <SettingsEditing Mode="EditForm">
                    </SettingsEditing>
                    <Settings ShowFilterRow="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" ShowFilterRowMenu="True" ShowFilterRowMenuLikeItem="True" ShowHeaderFilterButton="True" />
                    <SettingsBehavior AllowEllipsisInText="True" ConfirmDelete="True" EnableRowHotTrack="True" />
                    <SettingsCommandButton>
                        <UpdateButton RenderMode="Button">
                        </UpdateButton>
                        <CancelButton RenderMode="Button">
                        </CancelButton>
                    </SettingsCommandButton>
                    <EditFormLayoutProperties>
                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="600" />
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="pm_id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="payt_mode" ShowInCustomizationForm="True" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="1" ShowEditButton="True">
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
                <asp:ObjectDataSource ID="odsPaymentModes" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetPaymentModes" TypeName="CatalogAccess"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</div>

