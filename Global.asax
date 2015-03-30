<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">
    void Application_Start(object sender, EventArgs e)
    {
        AKD.RouteConfig.RegisterRoutes(RouteTable.Routes);
    }
</script>
