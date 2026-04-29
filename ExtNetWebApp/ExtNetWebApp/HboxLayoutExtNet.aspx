<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HboxLayoutExtNet.aspx.cs" Inherits="ExtNetWebApp.HboxLayoutExtNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />

    <ext:Panel runat="server" Layout="HBox" BodyPadding="5"
        DefaultMargins="0 5 0 0">
        <Items>
            <ext:Button Text="Button 1" />
            <ext:Panel BaseCls="x-plain" Flex="1" />
            <ext:Button Text="Button 2" />
            <ext:Button Text="Button 3" />
            <ext:Button Text="Button 4" Margins="0" />
        </Items>
    </ext:Panel>

</body>
</html>
