<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CarService.DAL.UserProfile>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>UserProfile</legend>

        <ul>
            <li>
                    <strong>User Name:</strong> <%: Html.DisplayFor(model => model.UserName) %>
            </li>
            <li>
                    <strong>First Name:</strong> <%: Html.DisplayFor(model => model.FirstName) %>
            </li>
            <li>
                    <strong>Last Name:</strong> <%: Html.DisplayFor(model => model.LastName) %>
            </li>
            <li>
                    <strong>E-Mail:</strong> <%: Html.DisplayFor(model => model.Email) %>
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
