﻿<%@ Page Title="" Language="C#" EnableEventValidation="false"  MasterPageFile="~/Site.master" AutoEventWireup="true" 
    CodeFile="Bookings.aspx.cs" Inherits="Cashier_Bookings" %>

<%@ Register Src="~/WebControls/Cashier/Bookings.ascx" TagPrefix="uc1" TagName="Credit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Credit runat="server" ID="Credit" />
</asp:Content>

