<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CarService.DAL.RepairCard>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    
    <fieldset>
        <legend>RepairCard</legend>

        <%: Html.HiddenFor(model => model.Id) %>
        <%: Html.HiddenFor(model => model.EntryDate) %>
        <%: Html.HiddenFor(model => model.RepairFinishDate) %>
        <%: Html.HiddenFor(model => model.PartsPrice) %>
        <%: Html.HiddenFor(model => model.TotalPrice) %>
        <%: Html.HiddenFor(model => model.UserId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EmployeeId, "Employee") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("EmployeeId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.EmployeeId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CarId, "Car") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CarId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CarId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-field">
            <table>
                <tr>
                <% {
                    int count = 0;
                    List<CarService.ViewModels.SelectedPartData> parts = ViewBag.SpareParts;
                    foreach (var part in parts) {
                    if (count++ % 3 == 0) { %>
                         </tr> <tr> 
                    <% } %>
                       <td> 
                        <input type="checkbox" 
                               name="selectedParts" 
                               value="<%: part.Id %>" 
                               <%: (Html.Raw(part.Selected ? "checked=\"checked\"" : "")) %>/>  
                        <%: part.PartName %> <%: part.Price %>
                       </td>
                <% } %>
                </tr>
             <% } %>
             </table>
        </div>
        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
