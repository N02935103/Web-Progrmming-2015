<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddFoodItemForm.aspx.cs" Inherits="Fitness_Tracker_App_2._0.AddFoodItemForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Food Item Form <small>Enter information to log the food item</small></h1>
    <div class="form-group">
        <label for="FoodName">Name</label>
        <input type="text" class="form-control" id="FoodName" placeholder="Food Name" required="" runat="server">
    </div>
    <div class="form-group">
        <label for="FoodCalories">Calories</label>
        <input type="number" class="form-control" id="FoodCalories" placeholder="Calories Per Serving" required="" runat="server">
    </div>
    <div class="form-group">
        <label for="Servings">Servings</label>
        <input type="number" min="0.00" step="0.1" class="form-control" id="Servings" placeholder="Number of Servings" required="" runat="server">
    </div>
    <div class="form-group">
        <label for="FoodTime">Time</label>
        <div class="input-group date">
            <input type="text" class="form-control" id="FoodTime" placeholder="mm/dd/yyyy" required="" runat="server">
        </div>
    </div>
    <asp:Button id="EnterButton" Text="Submit" onclick="SubmitButton_onclick" class="btn btn-default" required="" runat="server"></asp:Button>
</asp:Content>

