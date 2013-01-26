<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CarService.DAL.Employee>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.FirstName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.LastName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UserProfile.UserName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <% if (item.FirstName != "N/A") %>
    <% {  %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.FirstName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.LastName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.UserProfile.UserName) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %>
            </td>
        </tr>
    <% } %>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
