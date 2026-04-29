<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccordionSubClasesExtNet.aspx.cs" Inherits="ExtNetWebApp.AccordionSubClasesExtNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />

    <ext:Window runat="server" Title="PIM" Layout="Accordion" Width="400"
        Height="650" Icon="ApplicationTileVertical">
        <Items>
            <ext:TreePanel Title="Folders" Icon="Email" AutoScroll="true"
                RootVisible="false">
                <Root>
                    <ext:Node>
                        <Children>
                            <ext:Node Text="Inbox (100)" Expanded="true">
                                <Children>
                                    <ext:Node Text="Important (5)" Icon="Exclamation"
                                        Leaf="true" />
                                    <ext:Node Text="Saved searches (6)" Icon="Magnifier"
                                        Leaf="true" />
                                </Children>
                            </ext:Node>
                            <ext:Node Icon="EmailStop" Text="Outbox" Expanded="false"
                                Leaf="true" />
                            <ext:Node Icon="EmailGo" Text="Sent items (300)"
                                Expanded="false" Leaf="true" />
                            <ext:Node Text="Private" Expanded="False" Leaf="true" />
                        </Children>
                    </ext:Node>
                </Root>
            </ext:TreePanel>
            <ext:Panel Title="Calendar" Icon="Date" />
            <ext:Panel Title="Contacts" Icon="Group" />
        </Items>
    </ext:Window>


</body>
</html>
