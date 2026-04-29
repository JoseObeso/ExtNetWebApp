<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenusBotonesAnidados.aspx.cs" Inherits="ExtNetWebApp.MenusBotonesAnidados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Triton" />

    <ext:Toolbar runat="server">
        <Items>
            <ext:Button Icon="PastePlain" />
            <ext:Button Icon="Cut" />
            <ext:Button Icon="PageCopy" />
            <ext:ToolbarSeparator />
            <ext:TextField FieldLabel="Search" LabelAlign="Right"
                LabelWidth="50" />
            <ext:Button runat="server" Icon="Find" />
        </Items>
    </ext:Toolbar>



    <ext:Button runat="server" Text="More options">
        <Menu>
            <ext:Menu runat="server">
                <Items>
                    <ext:MenuItem runat="server" Text="Theme">
                        <Menu>
                            <ext:Menu runat="server">
                                <Items>
                                    <ext:CheckMenuItem
                                        Text="Black"
                                        Group="theme"
                                        CheckHandler="check1" />
                                    <ext:CheckMenuItem
                                        Text="Gray"
                                        Group="theme"
                                        Checked="true"
                                        CheckHandler="check2" />
                                    <ext:CheckMenuItem
                                        Text="Blue"
                                        Group="theme"
                                        CheckHandler="check3" />
                                </Items>
                            </ext:Menu>
                        </Menu>
                    </ext:MenuItem>
                </Items>
            </ext:Menu>
        </Menu>
    </ext:Button>



    <ext:MenuItem runat="server" Text="Escoger una Fecha" Icon="Calendar">
        <Menu>
            <ext:DateMenu>
                <Picker />
                <Listeners>
                    <Select Handler="alert(Ext.String.format('Usted escogio {0}.', Ext.util.Format.date(date, 'M j, Y')));" />
                </Listeners>
            </ext:DateMenu>
        </Menu>
    </ext:MenuItem>
    <ext:MenuItem Text="Escoja color" Icon="ColorSwatch">
        <Menu>
            <ext:ColorMenu>
                <Listeners>
                    <Select Handler="alert(Ext.String.format('Usted escogio {0}.', color));" />
                </Listeners>
            </ext:ColorMenu>
        </Menu>
    </ext:MenuItem>



    <script>


        function check1() {
            alert(" desde check1");
        }


        function check2() {
            alert(" desde check2");
        }

        function check3() {
            alert(" desde check3");
        }

    </script>


</body>
</html>
