<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActivityTracker.aspx.cs" Inherits="Fitness_Tracker_App_2._0.ActivityTracker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Activity Tracker Dashboard</h1>
        <p>Your activity duration for <%: DateTime.Now.ToLongDateString() %> </p>
        <p id="TotalActivityLabel" runat="server"></p>
    </div>

    <div class="row">
        <asp:LinkButton ID="AddActivityItemButton" class="btn btn-default" OnClick="AddActivityItemButton_OnClick" runat="server">Add Activity Item <i class="glyphicon glyphicon-plus"></i></asp:LinkButton>
    </div>
    <div class="row">
        <div class="table-responsive">
            <asp:Table ID="ActivityTable" class="table table-hover" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>#</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Time Entry</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Duration</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
