<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateActivityItemForm.aspx.cs" Inherits="Fitness_Tracker_App_2._0.UpdateActivityItemForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Activity Update Form <small>Enter information to update the activty</small></h1>
    <div class="form-group">
        <label for="ActivityName">Name</label>
        <input type="text" class="form-control" id="ActivityName" placeholder="Activity Name" required="" runat="server">
    </div>
    <div class="form-group">
        <label for="StartTime">Start Time</label>
        <input type="time" class="form-control" id="StartTime" placeholder="Start time of activity" required="" runat="server">
    </div>
    <div class="form-group">
        <label for="endTime">Duration</label>
        <input type="time" class="form-control" id="EndTime" placeholder="End Time of activity" required="" runat="server">
    </div>
    <div class="form-group">
        <label for="ActivityTime">Time of Activity</label>
        <div class="input-group date">
            <input type="text" class="form-control" id="ActivityTime" placeholder="mm/dd/yyyy" required="" runat="server">
        </div>
    </div>
    <asp:Button ID="EnterButton" Text="Update" OnClick="SubmitButton_onclick" class="btn btn-default" required="" runat="server"></asp:Button>
</asp:Content>
