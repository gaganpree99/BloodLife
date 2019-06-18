<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"> 
  <!-- CSS Files -->
  <link href="/css/bootstrap.min.css" rel="stylesheet" />
 <!-- CSS Just for demo purpose, don't include it in your project -->
   <link href="/demo/main.css" rel="stylesheet" />
<title>Blood Life</title>
</head>
<body>

  <!-- The code to create Nav bar is refered from the official bootstrap documentation from the following url https://getbootstrap.com/docs/4.0/components/navbar/ -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">BLOODLIFE</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Events</a>
          </li>
         <li class="nav-item">
            <a class="nav-link" href="#">Gallery</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <header class="head">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12 text-center">
          <!-- This line has been taken from the following website https://www.overallmotivation.com/quotes/best-blood-donation-quotes-slogans/ -->
          <h1 class="font-weight-dark">A life may depend on a gesture from you, a bottle of Blood.</h1>
          <p class="lead">Click below to get started</p>
          <button class="button" onclick="window.location='homepage'" >Find Blood</button>
        </div>
      </div>
    </div>
  </header>
  <p id="small_heading">How do we help you?</p>
  <hr>
  <div class="row justify-content-center">
    <!-- To learn how bootstrap's columns work, official bootstrap documentation was refered  https://getbootstrap.com/docs/4.1/layout/grid/-->
    <div class="col-lg-3 col-sm-5 mb-3">
      <div id="card1" class="card h-100">
        <!-- The below image has been taken from https://unsplash.com/ (look for reference number [2] under Landing page in ReadMe file)-->
        <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1555371363-27a37f8e8c46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a class="text" href="#">Find Nearby Organisations</a>
          </h4>
          <p class="card-text">Quickly find near by blood when you need</p>
        </div>
      </div>
    </div>
    <!-- To learn how bootstrap's columns work, official bootstrap documentation was refered  https://getbootstrap.com/docs/4.1/layout/grid/-->
    <div class="col-lg-3 col-sm-5 mb-3">
      <div id="card2" class="card h-100">
        <!-- The below image has been taken from https://unsplash.com/ (look for reference number [3] under Landing page in ReadMe file)-->
        <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1542868727-6ebd18386391?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a class="text" href="#">Donate Blood</a>
          </h4>
          <p class="card-text">Donate blood when you can</p>
        </div>
      </div>
    </div>
    <!-- To learn how bootstrap's columns work, official bootstrap documentation was refered  https://getbootstrap.com/docs/4.1/layout/grid/-->
    <div class="col-lg-3 col-sm-5 mb-3">
      <div id="card3" class="card h-100">
        <!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
        <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a class="text" href="#">Help Blood Orgainsations</a>
          </h4>
          <p class="card-text">Connecting the Blood donors and the receivers</p>
        </div>
      </div>
    </div>
  </div>
  	
</body>
  <script src="/js/core/jquery.min.js"></script>
  <script src="/js/core/popper.min.js"></script>
  <script src="/js/core/bootstrap.min.js"></script>
  <script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
   <script src="/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="./demo/demo.js"></script>
</html>