<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalorieTracker.aspx.cs" Inherits="Fitness_Tracker_App_2._0.CalorieTracker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Calorie Traker Dashboard</h1>
        <p>Your calorie intake for <%: DateTime.Now.ToLongDateString() %> </p>
        <p id="TotalCaloriesLabel" runat="server"></p>
    </div>

    <div class="row">
        <asp:LinkButton ID="AddFoodItemButton" class="btn btn-default" OnClick="AddFoodItemButton_OnClick" runat="server">Add Food Item <i class="glyphicon glyphicon-plus"></i></asp:LinkButton>
    </div>
    <div class="row">
        <div class="table-responsive">
            <asp:Table ID="CalorieTable" class="table table-hover" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>#</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Time Entry</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Calories</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
