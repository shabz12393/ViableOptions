<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking-Receipt.aspx.cs" Inherits="Cashier_Receipt_Booking_Receipt" %>

<%@ Register Src="~/WebControls/Cashier/Reports/Booking-Receipt.ascx" TagPrefix="uc1" TagName="BookingReceipt" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:BookingReceipt runat="server" id="BookingReceipt" />
    </div>
    </form>
</body>
</html>
