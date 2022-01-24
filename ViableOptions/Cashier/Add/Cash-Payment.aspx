<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cash-Payment.aspx.cs" Inherits="Cashier_Add_Cash_Payment" %>

<%@ Register Src="~/WebControls/Cashier/Add/Cash-Payment.ascx" TagPrefix="uc1" TagName="CashPayment" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../../js/forms.js"></script>
    <link href="../../css/forms.css" rel="stylesheet" />
    <link href="../../css/w3.css" rel="stylesheet" />
    <link href="../../css/mobile.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:CashPayment runat="server" ID="CashPayment" />
    </div>
    </form>
</body>
</html>
