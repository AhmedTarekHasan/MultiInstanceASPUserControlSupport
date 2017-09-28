<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DevelopmentSimplyPut.MultiInstanceUserControl.Home" %>

<%@ Register Src="~/Controls/TextWithClear.ascx" TagPrefix="uc1" TagName="TextWithClear" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:TextWithClear runat="server" id="TextWithClear1" />
        <br />
        <uc1:TextWithClear runat="server" id="TextWithClear2" />
    </div>
    </form>
</body>
</html>
