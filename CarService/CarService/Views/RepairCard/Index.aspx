<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CarService.DAL.RepairCard>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>


<%using (Html.BeginForm()){  %>   

        <div>
        <strong>Entry Date: </strong> <select name="entryDate">
                                        <% foreach (var date in ViewBag.EntryDates) {%>
                                            <option><%: date %></option>
                                        <% } %>
                                      </select>
        <p> <%: Html.TextBox("SearchString") %>  <input type="submit" value="Search" /> 
        </p> 
        </div>

<%}%>

<%using (Html.BeginForm()){  %>   

        <div>
        <strong>Start:</strong> <select name="startDate">
            <% foreach (var date in ViewBag.EntryDates) {%>
                      <option><%: date %></option>
            <% } %>
        </select>
        <strong>End:</strong> <select name="endDate">
                <% foreach (var date in ViewBag.EntryDates)
                   {%>
                <option><%: date %></option>
                <% } %>
        </select>
        <input type="submit" value="Search" /> 
        </div>

<%}%>

<table class="sortable">
    <tr>
        <th>
            Entry Date
        </th>
        <th>
            Repair Finish Date
        </th>
        <th>
            Employee
        </th>
        <th>
            Car Registry Number
        </th>

        <th>
            Total Cost
        </th>

        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.EntryDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.RepairFinishDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Employee.FirstName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Car.RegistryNumber) %>
        </td>

        <td>
            <%: Html.DisplayFor(modelItem => item.TotalPrice) %>
        </td>

        <td>
            <%: Html.ActionLink("Details", "Details", new { id=item.Id }) %> 
            <% if (!(!(item.RepairFinishDate == null) || !(item.UserId == ViewBag.CurrentUserId || ViewBag.IsAdmin))) { %>
               | <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
                <%: Html.ActionLink("Finish Repair", "RepairFinish", new { id=item.Id }) %>
            <% } %>
        </td>
    </tr>
<% } %>

</table>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
