<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/demo/demo.css" rel="stylesheet" />
<title>Blood Life</title>
<style type="text/css">
.login{
	margin-top: 5%; background: #130101d4; border-radius: 40px; color: white; text-align: center;
}
</style>
</head>

<body style="background-image: url('img/bloodDonation5.png'); background-size: cover">
	<div class="wrapper">
		<nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-item nav-link" style="font-size: 16px" href="#">Home</a>
					<a class="nav-item nav-link" style="font-size: 16px" href="#">Gallery</a>
					<a class="nav-item nav-link" style="font-size: 16px" href="#">Events</a>
				</div>
			</div>
		</nav>
		<div class="row">
			<div class="col"></div>
			<div class="jumbotron col login">
				<h2>Login</h2>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="username" />
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="password" />
				</div>

				<div class="form-group">
					<a href="#" style="margin-right: 10%">Forget Password?</a>
					<button type="button" class="btn btn-outline-info">Login</button>
					<button type="button" class="btn btn-outline-success">Signup</button>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
	<footer class="page-footer row font-small bg-dark">
				<p> Blood life</p>
	</footer>
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