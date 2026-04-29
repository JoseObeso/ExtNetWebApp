<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WindowsPanelesxtnet.aspx.cs" Inherits="ExtNetWebApp.WindowsPanelesxtnet" %>


<% 
    string vVerHora = DateTime.Now.ToString(), vNombre = " Jose ";
    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>hoy es </title>
</head>
<body>
     <ext:ResourceManager runat="server" Theme="Neptune" />

    

    <ext:Window runat="server" Title="Observacion " Icon="UserHome"
        BodyPadding="20" Width="400" Height="250" AutoScroll="true">
        <Items>
            <ext:Label Html="<p>Algun texto debe ir aqui --- </p>" />
            <ext:Label Html="<p>Algun texto debe ir aqui --- </p>" />
            <ext:Label Html="<p>Algun texto debe ir aqui --- </p>" />
            <ext:Label Html="<p>Algun texto debe ir aqui --- </p>" />
            <ext:Label Html="<p>Algun texto debe ir aqui --- </p>" />
            <ext:Label Html="<p>Algun texto debe ir aqui --- </p>" />
        </Items>
        <Tools>
            <ext:Tool Type="Gear" Fn="MyApp.showOptions" Qtip="Options" />
            <ext:Tool Type="Help" Fn="MyApp.showHelp" />
        </Tools>
        <DockedItems>
            <ext:Toolbar Dock="Top">
                <Items>
                    <ext:Button Icon="Add" Text="Hacer algo..." />
                </Items>
            </ext:Toolbar>
        </DockedItems>
        <Buttons>
            <ext:Button Icon="Disk" Text="Guardar" />
            <ext:Button Icon="Cancel" Text="Cancel" />
        </Buttons>
    </ext:Window>


     <script>

        var MyApp = {
            showHelp: function () {
                alert('Muestra Ayuda');
            },
            showOptions: function () {
                alert('Muestra diversas opciones');
            },

            DoAdd: function () {
                alert('Hacer algo');
            }

        };


    </script>



</body>
</html>
