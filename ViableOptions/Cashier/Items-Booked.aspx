<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Items-Booked.aspx.cs" Inherits="Cashier_Items_Booked" %>

<%@ Register Src="~/WebControls/Cashier/Bookings/Items-Booked.ascx" TagPrefix="uc1" TagName="ItemsBooked" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ItemsBooked runat="server" ID="ItemsBooked" />
</asp:Content>

