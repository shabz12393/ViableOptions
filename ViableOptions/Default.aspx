<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/WebControls/Default.ascx" TagPrefix="uc1" TagName="Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Viable Options</title>
    <link rel="shortcut icon" type="image/x-icon" href="Images/ic_icon.png" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" />
    <script type="text/javascript" src="../js/scripts.js"></script>
    <link rel="stylesheet" href="css/Master.css" />
    <link href="css/w3.css" rel="stylesheet" />
    <link href="css/mobile.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Default runat="server" ID="Default" />
    </div>
    </form>
</body>
</html>
