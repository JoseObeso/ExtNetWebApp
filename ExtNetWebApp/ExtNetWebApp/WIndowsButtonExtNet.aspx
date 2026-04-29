<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WIndowsButtonExtNet.aspx.cs" Inherits="ExtNetWebApp.WIndowsButtonExtNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Windows & Button</title>
    <style>
        .my-custom-class p {
            line-height: 1.6;
        }

        .my-custom-class a {
            color: #00f;
        }
    </style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Triton" />
    <ext:Button ID="Button1" runat="server" Text="Show Window" ToolTip="Pulse aqui para procesar...">
        <Listeners>
            <Click Handler="#{Window1}.show();" />
        </Listeners>
    </ext:Button>

    <ext:Window
        ID="Window1"
        runat="server"
        AnimateTarget="Button1"
        CloseAction="Destroy"
        Height="300"
        Hidden="true"
        Icon="ApplicationCascade"
        Maximizable="true"
        Minimizable="true"
        Modal="true"
        Title="Mi ventana Jose Obeso"
        Width="400">

        <Listeners>
            <Minimize Handler="this.hide();" />
        </Listeners>
    </ext:Window>

    <ext:Button runat="server" Text="Hover over me" ToolTip="Tooltip text" />



    <ext:Button runat="server" Text="Hover over me">

        <ToolTips>
            <ext:ToolTip
                Anchor="right"
                Width="318"
                Title="Titulo"
                ConstrainPosition="true"
                Cls="my-custom-class"
                AutoHide="false"
                MinWidth="318"
                Closable="true">
                <Content>
                    <p>Incluye HTML <a href="http://localhost">links</a> and images:</p>
                    <p>

                        <img src="resources/FB_IMG_1699382150095.jpg" />

                    </p>
                </Content>
            </ext:ToolTip>
        </ToolTips>
    </ext:Button>



</body>
</html>
