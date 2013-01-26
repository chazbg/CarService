<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Home Page.</h1>
                <h2><%: ViewBag.Message %></h2>
            </hgroup>
            <p>
                To learn more about ASP.NET MVC visit
                <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET MVC.
                If you have any questions about ASP.NET MVC visit
                <a href="http://forums.asp.net/1146.aspx/1?MVC" title="ASP.NET MVC Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Logged in as an Administrator. You can now do the following actions:</h3>
    <ul class="round">
        <li>
            <%: Html.ActionLink("Manage users", "Index", "UserProfile", routeValues: null, htmlAttributes: new { id = "registerLink" })%>
        </li>

        <li>
            <%: Html.ActionLink("Manage employees", "Index", "Employee", routeValues:  null, htmlAttributes: new { id = "employeeLink" })%>
        </li>

        <li>
            <%: Html.ActionLink("Manage spare parts", "Index", "SparePart", routeValues: null, htmlAttributes: new { id = "sparePartLink" })%>
        </li>

        <li>
            <a href="../RepairCard">Manage repair cards</a>
        </li>

         <li>
             <a href="../RepairCard">Manage cars</a>
        </li>
         
    </ul>
</asp:Content>
