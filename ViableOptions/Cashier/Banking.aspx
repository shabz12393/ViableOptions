﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Banking.aspx.cs" Inherits="Cashier_Banking" %>

<%@ Register Src="~/WebControls/Cashier/Finance/Banking.ascx" TagPrefix="uc1" TagName="Banking" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Banking runat="server" ID="Banking" />
</asp:Content>

