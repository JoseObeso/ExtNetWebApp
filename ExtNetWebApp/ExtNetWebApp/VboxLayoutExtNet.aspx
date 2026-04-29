<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VboxLayoutExtNet.aspx.cs" Inherits="ExtNetWebApp.VboxLayoutExtNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />


    <%--<ext:Window runat="server" Width="250" Height="200">
        <LayoutConfig>
            <ext:HBoxLayoutConfig Align="Stretch" />
        </LayoutConfig>
        <Items>
            <ext:Panel Flex="1" Title="Panel 1" />
            <ext:Panel Flex="1" Title="Panel 2" />
            <ext:Panel Flex="1" Title="Panel 3" />
        </Items>
        <Plugins>
            <ext:BoxReorderer />
        </Plugins>
    </ext:Window>--%>


    <ext:Window runat="server" Width="450" Height="500">
        <%--<LayoutConfig>
            <ext:VBoxLayoutConfig Align="Stretch" />
        </LayoutConfig>--%>


        <LayoutConfig>
            <ext:VBoxLayoutConfig Align="Stretch" />
        </LayoutConfig>


        <Items>
            <ext:Panel Flex="1" Title="Panel 1" />
            
            <ext:Panel Flex="1" Title="Panel 2" />
            <ext:Panel Flex="1" Title="Panel 3" />
        </Items>
        <Plugins>
            <ext:BoxReorderer />
        </Plugins>
    </ext:Window>




</body>
</html>
