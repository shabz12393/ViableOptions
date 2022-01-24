<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Record-Payment.aspx.cs" Inherits="Cashier_Add_Record_Payment" %>

<%@ Register Src="~/WebControls/Cashier/Add/Record-Payment.ascx" TagPrefix="uc1" TagName="RecordPayment" %>


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
        <uc1:RecordPayment runat="server" ID="RecordPayment" />
    </div>
    </form>
</body>
</html>
