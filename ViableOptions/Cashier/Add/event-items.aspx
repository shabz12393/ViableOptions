
<%@ Page Title="" Language="C#" MasterPageFile="~/Form.master" AutoEventWireup="true" CodeFile="event-items.aspx.cs" 
    Inherits="Cashier_Add_event_items" %>

<%@ Register Src="~/WebControls/Cashier/Add/event-items.ascx" TagPrefix="uc1" TagName="eventitems" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <uc1:eventitems runat="server" ID="eventitems" />
</asp:Content>