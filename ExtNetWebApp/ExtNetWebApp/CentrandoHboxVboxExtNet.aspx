<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CentrandoHboxVboxExtNet.aspx.cs" Inherits="ExtNetWebApp.CentrandoHboxVboxExtNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:Window runat="server" Width="450" Height="500">


        <ext:Viewport runat="server" Layout="HBoxLayout">
            <layoutconfig>
<ext:HBoxLayoutConfig Pack="Center" Align="Stretch" />
</layoutconfig>
            <items>
<ext:Container Layout="VBoxLayout">
<LayoutConfig>
<ext:VBoxLayoutConfig Pack="Center" />
</LayoutConfig>
<Items>
<ext:Panel Title="Centered Panel" Height="200" Width="200" />
</Items>
</ext:Container>
</items>
        </ext:Viewport>
</body>
</html>
