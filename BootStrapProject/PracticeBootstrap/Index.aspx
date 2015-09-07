<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PracticeBootstrap.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Layout.css" type="text/css" />
</head>
<body>
    <div class="container">
        <div class="row col-md-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                            <img style="position: relative; top: -15px" src="https://lh6.googleusercontent.com/-oxd9xWa3Etw/AAAAAAAAAAI/AAAAAAAAAIU/Jd34ThsyHz4/photo.jpg?sz=50" />
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a data-toggle="dropdown" href="#">Home<span class="sr-only">(current)</span></a></li>
                            <li><a data-toggle="dropdown" href="#">Cats!</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown Cats<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">I'm a Cat</a></li>
                                    <li><a href="#">You're a Cat</a></li>
                                    <li><a href="#">Here's a Cat</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">There's a Cat</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Where's the Cat?</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search" />
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </div>
        <div class="row col-md-12">
        </div>
        <div class="row col-md-12">
            <div class="jumbotron">
                <h1>Programming Cats!</h1>
                <p>For those looking for inspiration on their path to becomming the next flappy bird creator, look no further.</p>
            </div>
        </div>
        <div class="row col-md-12">
            <div class="col-xs-6 col-md-5">
                <a href="#" class="thumbnail">
                    <img class="img-responsive" src="http://cdn.playbuzz.com/cdn/0079c830-3406-4c05-a5c1-bc43e8f01479/7dd84d70-768b-492b-88f7-a6c70f2db2e9.jpg" alt="..." />
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img class="img-responsive" src="http://www.londonscreenwritersfestival.com/assets/800px-Cat_using_computer-300x199.jpg" alt="..." />
                </a>
            </div>
            <div class="col-xs-6 col-md-4">
                <a href="#" class="thumbnail">
                    <img class="img-responsive" src="http://ethancbanks.com/wp-content/uploads/2014/12/im-in-ur-stackz-overflowing-ur-bufferz.jpg" alt="..." />
                </a>
            </div>
        </div>
        <div class="row col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    Abandon all hope ye who scroll past here...
                </div>
            </div>
        </div>
        <div class="row col-mid-12">
            <h1>Cat optical illusion</h1>
            <div id="illusion">
                <img style="width: 360px;" src="http://static.neatorama.com/misscellania/400stripes.jpg" />
                <div class="stripes active"></div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script>
        $('body').mousemove(function (event) {
            if (!$('.stripes').hasClass('active')) {
                $('.stripes').css('left', event.pageX - 425 + 'px');
            }
        });

        $('.animate').click(function () {
            $('.stripes').removeClass('active');
        });

        $('.stop').click(function () {
            $('.stripes').addClass('active');
        });

        $('.stripes').addClass('active');
    </script>
</body>
</html>
