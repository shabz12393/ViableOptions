<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Control_Add_Staff" %>

<%@ Register Src="~/WebControls/Control/Add/Staff.ascx" TagPrefix="uc1" TagName="Staff" %>


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
        <uc1:Staff runat="server" ID="Staff" />
    </div>
    </form>
</body>
</html>
