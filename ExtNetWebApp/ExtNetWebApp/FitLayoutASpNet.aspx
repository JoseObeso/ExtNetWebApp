<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FitLayoutASpNet.aspx.cs" Inherits="ExtNetWebApp.FitLayoutASpNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />

    <ext:Window runat="server" Layout="Fit" Width="200" Height="200">
        <Items>
            <ext:Panel Title="Panel Ajustado" AutoScroll="true" Border="false">
                <BottomBar>
                    <ext:StatusBar>
                        <Items>
                            <ext:Button Text="Click aqui!" />
                        </Items>
                    </ext:StatusBar>
                </BottomBar>
            </ext:Panel>
        </Items>
    </ext:Window>




</body>
</html>
