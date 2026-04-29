<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Layout4RegionesExtnet.aspx.cs" Inherits="ExtNetWebApp.Layout4RegionesExtnet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Diseño de 4 Regiones</title>
</head>
<body>

    <ext:ResourceManager runat="server" Theme="Gray" />



    <ext:Viewport runat="server" Layout="border">
        <Items>
            <ext:Panel Region="North" Split="true" Title="Norte" Height="75"
                Collapsible="true" />
           

            <ext:Panel Region="West" Split="true" Title="Oeste" Width="150"
                Collapsible="true" />

            <ext:Panel runat="server" Region="Center" Title="Contenido Central" />

            <ext:Panel Region="East" Split="true" Title="Este" Width="150"
                Collapsible="true" />
            

            <ext:Panel Region="South" Split="true" Title="Sur" Height="75"
                Collapsible="true" />

        </Items>


    </ext:Viewport>


</body>
</html>
