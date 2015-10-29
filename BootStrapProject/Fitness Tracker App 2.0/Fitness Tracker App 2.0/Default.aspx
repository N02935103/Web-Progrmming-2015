<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fitness_Tracker_App_2._0._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Fitness Helper</h1>
        <p class="lead">Fitness made easy by keeping all your health and nutritional information in one place.</p>
        <p><a href="/About" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                Fitness Helper gets you on the path to becoming and staying healthy. With the Calorie Tracker and your own saved collection of workout excersises getting 
                in shap has never been easier.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Personalization</h2>
            <p>
                Fitness Helper keeps track of all your personal information to give you the most indepth look into your health.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Sync On The Go</h2>
            <p>
                Fitness helper automatically syncs to all your fitness devices, apple watch, fitbit, etc... to make sure you are always up to date with your fitness facts.
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img style="width: 773px; height: 434px;" class="img-responsive" alt="Responsive image" src="http://getfullyfunded.com/wp-content/uploads/2013/11/your-future-today.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img class="img-responsive" alt="Responsive image" src="http://dougleschan.com/the-recruitment-guru/wp-content/uploads/2014/04/bodybuilding-motivational-yourself-hd-892685.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img class="img-responsive" alt="Responsive image" src="http://quotesology.com/wp-content/uploads/2015/08/cool-fitness-motivational-quote2.jpg" alt="...">
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

</asp:Content>
