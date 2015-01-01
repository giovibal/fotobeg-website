<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="mainApp">
  <head>
    <title>FotoBEG - Ester Menniti Photography</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

    <link href='//fonts.googleapis.com/css?family=Great+Vibes|Josefin+Slab|Noto+Sans|Poiret+One|Muli' rel='stylesheet' type='text/css'>
    <link href="css/navbar-fixed-top.css" rel="stylesheet" type='text/css'>
    <link href='css/fotobeg.css' rel='stylesheet' type='text/css'>
  </head>

  <body ng-controller="mainCtrl">
    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand artfont" href="/">FotoBEG</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li ng-class="{'active' : navbar.active == 'home'}"><a href="/home">Home</a></li>
            <li ng-class="{'active' : navbar.active == 'foto'}"><a href="/foto">Galleria fotografica</a></li>
            <li ng-class="{'active' : navbar.active == 'info'}"><a href="/info">Informazioni</a></li>
            <li ng-class="{'active' : navbar.active == 'contatti'}"><a href="/contatti">Contatti</a></li>
            <%--<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>--%>
          </ul>
          <%--<ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
          </ul>--%>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container box">

      <!-- Main component for a primary marketing message or call to action -->
      <div ng-view></div>

    </div> <!-- /container -->

  </body>

  <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular-route.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular-animate.min.js"></script>
  <script src="js/app.js"></script>
</html>
