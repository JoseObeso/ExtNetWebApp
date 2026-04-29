<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridExtNet.aspx.cs" Inherits="ExtNetWebApp.GridExtNet" %>

<script runat="server">

    public class CompanyData
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public double Change { get; set; }
        public double PercentChange { get; set; }
        public DateTime LastChange { get { return DateTime.Now; } }


        public CompanyData(int id, string name, double price,
        double change, double percentChange)
        {
            // code omitted for brevity; each argument is assigned
            // to corresponding property.
        }
    }

    public static List<CompanyData> GetData()
    {
        return new List<CompanyData> {
                new CompanyData(1, "3m Co", 71.72, 0.02, 0.03),
                new CompanyData(2, "Alcoa Inc", 29.01, 0.42, 1.47)


                // The rest of the data omitted for brevity */
        };


    }



    protected void Page_Load(object sender, EventArgs e)
    {
        List<CompanyData> Companiadatos = new List<CompanyData>();


        if (!X.IsAjaxRequest)
        {
            this.Store1.DataSource = Companiadatos.ToList();
            this.Store1.DataBind();
        }
    }

</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Grid Panel</title>

    <style type="text/css">
        .positive {
            color: green;
        }

        .negative {
            color: red;
        }
    </style>
    <script>
        var template = '<span class="{0}">{1}</span>';
        var change = function (value) {
            return Ext.String.format(template,
                (value > 0) ? "positive" : "negative", value);
        };
        var pctChange = function (value) {
            return Ext.String.format(template,
                (value > 0) ? "positive" : "negative", value + "%");
        };
    </script>



</head>
<body>

    <ext:ResourceManager runat="server" Theme="Triton" />

    <ext:GridPanel runat="server" Title="Simple Grid">
        <ext:Store ID="Store1" runat="server">
             
            <ext:Model runat="server" IDProperty="Id">
                <Fields>
                    <ext:ModelField Name="Company" Mapping="Name" />
                    <ext:ModelField Name="Price" Type="Float" />
                    <ext:ModelField Name="Change" Type="Float" />
                    <ext:ModelField Name="PctChange"
                        Mapping="PercentChange" Type="Float" />
                    <ext:ModelField Name="LastChange" Type="Date" />
                </Fields>
            </ext:Model>
       
        </ext:Store>
        <ColumnModel>
            <Columns>
                <ext:Column Text="Company" DataIndex="Company" Flex="1" />
                <ext:Column Text="Price" DataIndex="Price" Width="50">
                    <Renderer Format="UsMoney" />
                </ext:Column>
                <ext:Column Text="Change" DataIndex="Change" Width="50">
                    <Renderer Fn="change" />
                </ext:Column>
                <ext:Column Text="Change" DataIndex="PctChange" Width="50">
                    <Renderer Fn="pctChange" />
                </ext:Column>
                <ext:DateColumn Text="Last Updated" DataIndex="LastChange"
                    Format="yyyy-MM-dd hh:mmtt" Width="130" />
            </Columns>
        </ColumnModel>
    </ext:GridPanel>


</body>
</html>
