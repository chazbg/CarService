<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<CarService.DAL.SparePart>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>SparePart</legend>

    <ul>
        <li>
            <strong>Part No.:</strong> <%: Html.DisplayFor(model => model.Id) %>
        </li>
        <li>
            <strong>Part:</strong> <%: Html.DisplayFor(model => model.PartName) %>
        </li>
        <li>
            <strong>Price:</strong> <%: Html.DisplayFor(model => model.Price) %>
        </li>
    </ul>

</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
