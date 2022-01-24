<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users.ascx.cs" Inherits="WebControls_Control_Users" %>
<%@ Register Src="~/WebControls/Admin/Add/Users.ascx" TagPrefix="uc1" TagName="Users" %>
<%@ Register Src="~/WebControls/Control/Users/Users.ascx" TagPrefix="uc3" TagName="Users" %>


<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" TabSpacing="10" ActiveTabIndex="0" Width="100%">
    <TabPages>
        <dx:TabPage Text="Users">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc3:Users runat="server" ID="Users3" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="New">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <uc1:Users runat="server" ID="Users" />
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
