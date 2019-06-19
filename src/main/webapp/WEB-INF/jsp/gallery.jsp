<!DOCTYPE html>
<html lang="en">
<head>
<title>Gallery</title>
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0 , shrink-to-fit=no"
	name="viewport" />
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css"
	rel="stylesheet" />
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<style>
.nav-item {
	padding-right: 10%
}
</style>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
		<a class="navbar-brand" href="#">BLOOD LIFE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link " href="/">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="/index">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/events">Events</a>
				</li>
				<li class="nav-item"><a class="nav-link active" href="/gallery">Gallery</a>
				</li>

			</ul>
		</div>
	</nav>
	<div class="row">
		<div class="container" style="margin-top: 2%">
			<div class="col-md-12">
				<div class="form-group">
					<select id="organizationList" class="form-control">
						<option value="Nova Scotia">Nova Scotia Blood
							Organization</option>
						<option value="IWK">IWK</option>
					</select>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="container wrap">
			<div class="container">
				<div id="slides" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slides" data-slide-to="0" class="active"></li>
						<li data-target="#slides" data-slide-to="1"></li>
						<li data-target="#slides" data-slide-to="2"></li>
						<li data-target="#slides" data-slide-to="3"></li>
						<li data-target="#slides" data-slide-to="4"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<!--
		Image taken from https://dummyimage.com
          -->
							<img src="https://dummyimage.com/1280x720/823082/00010f.jpg"
								style="width: 100%; height: 100%;" alt="Image1">
							<div class="carousel-caption">
								<h5 class="display-4">Organisation ABC</h5>
								<p>Some details of this Image</p>
								<!-- <button type="button" class="btn btn-outline-light">Read
									More</button> -->
							</div>
						</div>
						<div class="carousel-item" style="width: 100%">
							<!--
		Image taken from https://dummyimage.com
          -->
							<img src="https://dummyimage.com/1280x720/856778/00010f.jpg"
								style="width: 100%; height: 100%;" alt="Image2">
							<div class="carousel-caption">
								<h5 class="display-4">Organisation XYZ</h5>
								<p>Some details of this Image</p>
								<!-- <button type="button" class="btn btn-outline-light">Read
									More</button> -->
							</div>
						</div>
						<div class="carousel-item" style="width: 100%">
							<!--
		Image taken from https://dummyimage.com
          -->
							<img src="https://dummyimage.com/1280x720/223082/00010f.jpg"
								style="width: 100%; height: 100%;" alt="Image3">
							<div class="carousel-caption">
								<h5 class="display-4">Organisation KLM</h5>
								<p>Some details of this Image</p>
								<!-- <button type="button" class="btn btn-outline-light">Read
									More</button> -->
							</div>
						</div>
						<div class="carousel-item" style="width: 100%">
							<!--
		Image taken from https://dummyimage.com
          -->
							<img src="https://dummyimage.com/1280x720/687652/00010f.jpg"
								style="width: 100%; height: 100%;" alt="Image4">
							<div class="carousel-caption">
								<h5 class="display-4">Organisation PQR</h5>
								<p>Some details of this Image</p>
								<!-- <button type="button" class="btn btn-outline-light">Read
									More</button> -->
							</div>
						</div>
						<div class="carousel-item" style="width: 100%">
							<!--
		Image taken from https://dummyimage.com
          -->
							<img src="https://dummyimage.com/1280x720/398789/00010f.jpg"
								style="width: 100%; height: 100%;" alt="Image5">
							<div class="carousel-caption">
								<h5 class="display-4">Organisation UVW</h5>
								<p>Some details of this Image</p>
								<!-- <button type="button" class="btn btn-outline-light">Read
									More</button> -->
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#slides" role="button"
						data-slide="prev"> <span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#slides" role="button"
						data-slide="next"> <span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>

		</div>


	</div>
	<footer class="page-footer font-small blue"
		style="background: #f8f9fa !important; position: fixed; width: 100%; bottom: 0; height: 5%">

		<div class="footer-copyright  py-3" style="padding-left:5%;padding-right:5%">
			About Us &nbsp;&nbsp; Contact  Us &nbsp;&nbsp; <span class="fab fa-twitter-square"> &nbsp;&nbsp;&nbsp;&nbsp;</span>
							<span class="fab fa-facebook-square"></span>
			<span style="float:right"> © 2018 Copyright</span></div>
	</footer>

	<script src="/js/core/jquery.min.js" ></script>
	<script src="/js/core/popper.min.js" ></script>
	<script src="/js/core/bootstrap.min.js" ></script>
	<script src="/js/plugins/perfect-scrollbar.jquery.min.js"
		></script>
	<script src="/js/plugins/bootstrap-notify.js"></script>
	<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/js/paper-dashboard.js?v=2.0.0" ></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#organizationList').select2({
				placeholder : "Select Organization"
			});
		})
	</Script>
</body>
</html>
