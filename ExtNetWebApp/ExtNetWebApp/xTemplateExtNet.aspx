<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xTemplateExtNet.aspx.cs" Inherits="ExtNetWebApp.xTemplateExtNet" %>


<script runat="server">

    public class TemplateData
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Info1 { get; set; }
        public string Info2 { get; set; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Data = new TemplateData
        {
            FirstName = "Jose",
            LastName = "Obeso",
            Info1 = DateTime.Now.ToLongDateString(),
            Info2 = DateTime.Now.ToLongDateString()
        };
    }

     

</script>







<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/css/bootstrap-theme.min.css" rel="stylesheet" />
    <style>
        .info {
            margin: 10px 1% 0 2%;
            padding: 4px;
            display: inline-block;
            width: 70%;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 2px 2px 2px #999;
        }

            .info:nth-child(odd) {
                background-color: #808080
            }

            .info p {
                line-height: 1.6;
            }
    </style>
    <title>Bienvenidos </title>
</head>
<body>

    <ext:ResourceManager runat="server" Theme="Gray" />

    <ext:Panel ID="Panel1" runat="server" Width="500" Height="200">
        <Tpl runat="server">
            <Html>
                <div class="info">
                    <p>Nombres: {FirstName}</p>
                    <p>Apellidos: {LastName}</p>
                    <p>Info1: {Info1}</p>
                    <p>Info2: {Info2}</p>
                 </div>
            </Html>
        </Tpl>
        <BottomBar>
            <ext:Toolbar>
                <Items>
                    <ext:Button Icon="Reload" Text="Recarga">
                        <Listeners>
                            <Click Handler="updatePanel(#{Panel1});" />
                        </Listeners>
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </BottomBar>
    </ext:Panel>




    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <script src="resources/js/bootstrap.min.js"></script>

</body>
</html>
