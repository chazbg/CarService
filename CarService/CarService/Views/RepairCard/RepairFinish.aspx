<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CarService.DAL.RepairCard>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Finish Repair
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Finish Repair</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>RepairCard</legend>

        <%: Html.HiddenFor(model => model.Id) %>
        <%: Html.HiddenFor(model => model.EntryDate) %>
        <%: Html.HiddenFor(model => model.UserId) %>
        <%: Html.HiddenFor(model => model.EmployeeId) %>
        <%: Html.HiddenFor(model => model.CarId) %>
        <%: Html.HiddenFor(model => model.Description) %>
        <%: Html.HiddenFor(model => model.PartsPrice) %>
        <%: Html.HiddenFor(model => model.RepairFinishDate) %>

        <div class="editor-label">
            <strong>Parts Price:</strong> <%: Html.DisplayFor(model => model.PartsPrice) %>
        </div>

        <div class="editor-label">
            Total Repair Cost
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TotalPrice) %>
            <%: Html.ValidationMessageFor(model => model.TotalPrice) %>
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
