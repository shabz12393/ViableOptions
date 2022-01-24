<%@ Control Language="C#" AutoEventWireup="true" CodeFile="User-Profile.ascx.cs" Inherits="WebControls_User_Profile" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Text="Profile">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                                    <dx:ASPxDataView ID="dvProfile" runat="server" ClientInstanceName="profileDv" CssClass="wrapper" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" DataSourceID="odsProfile" Font-Names="Century Gothic" ItemSpacing="3px" PagerPanelSpacing="3px" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Theme="Metropolis" Width="100%" BackColor="White" EnableTheming="True">
                                        <SettingsFlowLayout ItemsPerPage="1" />
                                        <SettingsTableLayout ColumnCount="1" RowsPerPage="1" />
                                        <PagerSettings ShowNumericButtons="False">
                                        </PagerSettings>
                                        <ItemTemplate>
                                            <div class="mx-auto">
                                                        <div class="row">
                                                            <dx:ASPxImage ID="imgProfile" runat="server" CssClass="img-circle" Height="150px" ImageUrl='<%# Page.ResolveClientUrl("/Images/Profile/" +Convert.ToString(Eval("pic_url")))%>' ShowLoadingImage="True" Width="150px">
                                                            </dx:ASPxImage>
                                                        </div>
                                                <div class="row">
                                                      <div class="col">
                                                            <asp:Label ID="lblStaffId0" runat="server" Text='Staff Id' Font-Bold="True" />
                                                        </div>
                                                        <div class="col">
                                                            <asp:Label ID="lblStaffId" runat="server" ForeColor="Blue" Text='<%# Eval("staff_id") %>' />
                                                        </div>
                                                </div>
                                                      
                                                    <div class="row">
                                                        <div class="col">
                                                            <asp:Label ID="lblStaffName0" runat="server" Text='Staff Name' Font-Bold="True" />
                                                        </div>
                                                       <div class="col">
                                                            <asp:Label ID="lblStaffName" runat="server" ForeColor="Blue" Text='<%# Eval("[full_name]") %>' />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                       <div class="col">
                                                            <asp:Label ID="lblTelephone0" runat="server" Text='Telephone' Font-Bold="True" />
                                                        </div>
                                                        <div class="col">
                                                            <asp:Label ID="lblTelephone" runat="server" ForeColor="Blue" Text='<%# Eval("telephone") %>' />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                      <div class="col">
                                                            <asp:Label ID="lblEmail0" runat="server" Text='Email' Font-Bold="True" />
                                                        </div>
                                                       <div class="col">
                                                            <asp:Label ID="lblEmail" runat="server" ForeColor="Blue" Text='<%# Eval("email") %>' />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <asp:Label ID="lblGender0" runat="server" Text='Gender' Font-Bold="True" />
                                                        </div>
                                                        <div class="col">
                                                            <asp:Label ID="lblGender" runat="server" ForeColor="Blue" Text='<%# Eval("gender") %>' />
                                                        </div>
                                                    </div>
                                            </div>
                                        </ItemTemplate>
                                    </dx:ASPxDataView>
                                <div>
                                    <asp:ObjectDataSource ID="odsProfile" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStaffDetail" TypeName="CatalogAccess">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="staffId" Name="staff_id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>



