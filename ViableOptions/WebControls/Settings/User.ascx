<%@ Control Language="C#" AutoEventWireup="true" CodeFile="User.ascx.cs" Inherits="WebControls_Settings_User_WUC" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<style type="text/css">
    .style {
        width: 100%;
    }

    .setting {
        padding-right: 10px;
    }
</style>
<div>

    <table class="style">
        <tr>
            <td colspan="2">
                <dx:ASPxImage ID="imgProfile" runat="server" CssClass="img-circle" Height="100px" ShowLoadingImage="True" Width="100px">
                </dx:ASPxImage>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStaffName" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblRole" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="setting">
                <dx:ASPxButton ID="bPassword" runat="server" Text="Change Password" AutoPostBack="False">
                    <ClientSideEvents Click="onChangePassword" />
                </dx:ASPxButton>
            </td>
            <td>
                <dx:ASPxButton ID="bSignOut" runat="server" Text="Sign Out" AutoPostBack="False">
                    <ClientSideEvents Click="function(s, e) {
 cpMain.PerformCallback();	
}" />
                </dx:ASPxButton>
            </td>
        </tr>
    </table>

</div>





