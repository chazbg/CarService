<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CarService.DAL.Car>>" %>

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
            <%: Html.DisplayNameFor(model => model.RegistryNumber) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Brand) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Model) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Year) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.FrameNumber) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.EngineNumber) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Color) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.EngineWorkVolume) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Description) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Owner) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.PhoneNumber) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UserProfile.UserName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.RegistryNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Brand) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Model) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Year) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.FrameNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EngineNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Color) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EngineWorkVolume) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Owner) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PhoneNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UserProfile.UserName) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> 
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
