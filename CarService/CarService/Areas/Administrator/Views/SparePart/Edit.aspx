<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<CarService.DAL.SparePart>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>SparePart</legend>

        <%: Html.HiddenFor(model => model.Id) %>
        <%: Html.HiddenFor(model => model.Activated) %>
        <%: Html.HiddenFor(model => model.UserId) %>

        <div class="editor-label">
            Part No.
        </div>
        <div>
            <%: Html.DisplayTextFor(model => model.Id) %>
        </div>

        <div class="editor-label">
            Part Name
        </div> 
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PartName) %>
            <%: Html.ValidationMessageFor(model => model.PartName) %>
        </div>

        <div class="editor-label">
            Price
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Price) %>
            <%: Html.ValidationMessageFor(model => model.Price) %>
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
