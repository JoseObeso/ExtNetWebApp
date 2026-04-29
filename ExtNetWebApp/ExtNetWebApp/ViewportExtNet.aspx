<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewportExtNet.aspx.cs" Inherits="ExtNetWebApp.ViewportExtNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ejemplo de diseño</title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Viewport runat="server" Layout="border">
        <Items>
            <ext:Panel Region="West" Split="true" Title="Lateral Izquierda" Width="200"  Collapsible="true" />
            <ext:Panel Region="Center"    Title="Contenido Central"   Collapsible="true"/>
        </Items>
    </ext:Viewport>


</body>
</html>
