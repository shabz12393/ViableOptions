<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking-Details.aspx.cs" Inherits="Booking_Details" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

 <%@ Register Assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Src="~/WebControls/Booking-Details.ascx" TagPrefix="uc1" TagName="BookingDetails" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eventbook</title>
    <script src="js/scripts.js"></script>
    <link href="css/Master.css" rel="stylesheet" />
    <link href="css/mobile.css" rel="stylesheet" />
    <link href="css/w3.css" rel="stylesheet" />
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/bootstrap/js/jquery.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header"> 
            <a class="navbar-brand" href="Default.aspx"><span>
                <img alt="logo" src="../../Images/ic_logo.png" height="30" /></span></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul id="menu" class="nav navbar-nav navbar-right" runat="server">
            </ul>
        </div>
    </div>
</div>
    <form id="form1" runat="server">
    <div class="main w3-container">
        <uc1:BookingDetails runat="server" id="BookingDetails" />
    </div>
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
            </td>
        </tr>
    </table>
</div>
    </form>
</body>
</html>
