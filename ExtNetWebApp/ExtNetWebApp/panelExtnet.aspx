<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panelExtnet.aspx.cs" Inherits="ExtNetWebApp.panelExtnet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>-- Panel --- </title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Triton" />


    <ext:Panel runat="server" Title="My Panel" Icon="UserHome" BodyPadding="100" Width="300" Height="250" AutoScroll="true">
        <Items>
            <ext:Label Html="<p>Algo de Texto 1 </p>" />
            <ext:Label Html="<p>Algo de Texto 2 </p>" />
            <ext:Label Html="<p>Algo de Texto 3 </p>" />
            <ext:Label Html="<p>Algo de Texto 4 </p>" />
            <ext:Label Html="<p>Algo de Texto 5 </p>" />
            <ext:Label Html="<p>Algo de Texto 6 </p>" />
        </Items>
        <TopBar>
            <ext:Toolbar>
                <Items>
                    <ext:Button Icon="Add" Text="Ejecutar Algo">
                        <Menu>
                            <ext:Menu>
                                <Items>
                                    <ext:MenuItem Text="Algo Mas aqui" />
                                </Items>
                            </ext:Menu>

                        </Menu>
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </TopBar>
        <BottomBar>
            <ext:StatusBar DefaultText="Listo" BusyText="Espero por favor...">
                <Items>
                    <ext:ToolbarFill />
                    <ext:Button Text="SObre nosotros" />
                </Items>
            </ext:StatusBar>
        </BottomBar>
        <Tools>
            <ext:Tool Type="Gear" Fn="MyApp.showOptions" Qtip="View options" />
            <ext:Tool Type="Help" Fn="MyApp.showHelp" />
        </Tools>
    </ext:Panel>


    <script>

        var MyApp = {
            showHelp: function () {
                alert('showing help');
            },
            showOptions: function () {
                alert('showing options');
            }
        };


    </script>


</body>
</html>
