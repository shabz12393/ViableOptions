<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FooterControl.ascx.cs" Inherits="WebControls_Site_FooterControl" %>
<%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<div id="footer">
    <table class="style">
        <tr>
            <td class="footer">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" ForeColor="Red"
                    Text="(c) Copyright Reserved - ">
                </dx:ASPxLabel>
                <dx:ASPxLabel ID="lblYear" runat="server" ForeColor="Red">
                </dx:ASPxLabel>
                &nbsp;<dx:ASPxLabel ID="ASPxLabel2" runat="server" ForeColor="Red"
                    Text="(JFloyd)">
                </dx:ASPxLabel>
                | Today:&nbsp;<dx:ASPxLabel ID="lblDate" runat="server"
                    ForeColor="Blue">
                </dx:ASPxLabel>
                &nbsp;&nbsp;
                            | Current User:
                            <dx:ASPxLabel ID="lblUser" runat="server" ForeColor="#009900">
                            </dx:ASPxLabel>
                &nbsp;
            </td>
        </tr>
    </table>
</div>
