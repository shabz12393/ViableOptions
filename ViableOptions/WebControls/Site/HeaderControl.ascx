<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderControl.ascx.cs" Inherits="WebControls_Site_HeaderControl" %>
<!-- Output page caching -->
<%@ OutputCache Duration="3600" Shared="True" VaryByParam="none" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%--<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"><span>
                <img alt="logo" src="../../Images/ic_logo.png" height="30" width="50" /></span></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul id="menu" class="nav navbar-nav navbar-right" runat="server">
            </ul>
        </div>
    </div>
</div>--%>

<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
 <a class="navbar-brand" href="#">
    <img src="../../Images/ic_logo.png" width="120" height="50" class="d-inline-block align-top" alt="Tunda">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto" id="menu" runat="server">
      
    </ul>
  </div>
</nav>