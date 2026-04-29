<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Layout3RegionesASPNet.aspx.cs" Inherits="ExtNetWebApp.Layout3RegionesASPNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>

    <ext:ResourceManager runat="server" Theme="Gray" />

    <ext:Window runat="server" Layout="Border" Height="200" Width="400"
        Border="false">
        <Items>
            <ext:Panel Region="East" Split="true" Title="West" Width="100"
                Collapsible="true" />
            <ext:Panel Region="Center" Layout="Border" Border="false">
                <Items>
                    <ext:Panel Region="Center" Title="Center" />
                    <ext:Panel Region="South" Split="true" Title="South"
                        Height="100" Collapsible="true" />
                </Items>
            </ext:Panel>
        </Items>
    </ext:Window>


     





</body>
</html>
