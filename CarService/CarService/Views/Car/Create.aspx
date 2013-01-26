<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CarService.DAL.Car>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Car</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.RegistryNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RegistryNumber) %>
            <%: Html.ValidationMessageFor(model => model.RegistryNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Brand) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Brand) %>
            <%: Html.ValidationMessageFor(model => model.Brand) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Model) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Model) %>
            <%: Html.ValidationMessageFor(model => model.Model) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Year) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Year) %>
            <%: Html.ValidationMessageFor(model => model.Year) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.FrameNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FrameNumber) %>
            <%: Html.ValidationMessageFor(model => model.FrameNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EngineNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EngineNumber) %>
            <%: Html.ValidationMessageFor(model => model.EngineNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Color) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Color) %>
            <%: Html.ValidationMessageFor(model => model.Color) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EngineWorkVolume) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EngineWorkVolume) %>
            <%: Html.ValidationMessageFor(model => model.EngineWorkVolume) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Owner) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Owner) %>
            <%: Html.ValidationMessageFor(model => model.Owner) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PhoneNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PhoneNumber) %>
            <%: Html.ValidationMessageFor(model => model.PhoneNumber) %>
        </div>

        <p>
            <input type="submit" value="Create" />
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
