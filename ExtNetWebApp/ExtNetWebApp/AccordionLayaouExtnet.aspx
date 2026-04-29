<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccordionLayaouExtnet.aspx.cs" Inherits="ExtNetWebApp.AccordionLayaouExtnet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />

    <ext:Window runat="server" Layout="Accordion" Width="350" Height="500"     Border="true">
        <Items>
            <ext:Panel Title="Panel 1" />
            <ext:Panel Title="Panel 2" />
            <ext:Panel Title="Panel 3" />
        </Items>
    </ext:Window>
    

</body>
</html>
