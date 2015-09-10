<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Bootstrap 101 Template</title>

  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>

<body>
  <div class="container">
    <h1>Hello, world!</h1>
    <div class="row">
      <div class="col-md-8 col-xs-11">

        <a herf="#" class="btn btn-success">
          <i class="glyphicon glyphicon-plus"></i> New Record
        </a>
        <a herf="#" class="btn btn-danger">
          <i class="glyphicon glyphicon-minus"></i> Delete All
          <span class="badge">4</span>
        </a>
        <div class="bs-example" data-example-id="simple-table">
          <table class="table table-condensed table-striped table-ordered table-hover">
            <!--<caption>Optional table caption.</caption>-->
            <thead>
              <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Larry</td>
                <td>the Bird</td>
                <td>@twitter</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="col-sm-4 col-xs-1">
        <div class="alert alert-success" role="alert">Well Done!</div>
        <div class="alert alert-danger" role="alert">Oh no!</div>
        <div class="progress">
          <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
            <span>45% Complete</span>
          </div>
        </div>
      </div>
    </div>





  </div>


  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    (function() {
      var shrink = function() {
        $(".progress-bar").animate({
          width: "0%"
        }, 2000);
      }

      $(".progress-bar").animate({
        width: "100%"
      }, 1000);
      
      var myObject = {
        hello: "world",
        intendedWidth: $(".progress-bar").animate({width: "0%"}, 2000)
      };
      
      setTimeout(shrink(), 5000);
    })()
    
  </script>
</body>

</html>