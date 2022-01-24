<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sub-Menu.aspx.cs" Inherits="Control_Add_Sub_Menu" %>

<%@ Register Src="~/WebControls/Control/Add/Sub-Menu.ascx" TagPrefix="uc1" TagName="SubMenu" %>


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
        <uc1:SubMenu runat="server" ID="SubMenu" />
    </div>
    </form>
</body>
</html>
