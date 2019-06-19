<!DOCTYPE html>
<html lang="en">
<head>
<title>Events</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css"
	rel="stylesheet" />
</head>
<style>
.nav-item {
	padding-right: 10%
}
</style>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
		<a class="navbar-brand" href="#">BLOOD-LIFE</a>
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
				<li class="nav-item "><a class="nav-link active" href="/events">Events</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="/gallery">Gallery</a>
				</li>

			</ul>
		</div>
	</nav>
	<div class="row" style="margin-top: 5%;">
		<div class="container">
			<div class="card" id="organizationDiv"
						style="margin-bottom: 5%;">
						<div class="container-fluid" style="margin-bottom:1%;margin-top:1%">
							<div class="header">
								<h3 class="title" style="padding-top: 1%; font-family: cursive">Event Name
									</h3>
							</div>
							<div class="content row">
								<div class="col-sm-8">
									<div class="form-group">
										<div class="form-control">
											<span class="form-label" id="contact"> Contact: </span>
										</div>
									</div>
									<div class="form-group">
										<div class="form-control">
											<span class="form-label" id="address"> Address: </span>
										</div>
									</div>
									<div class="form-group">
										<div class="form-control">
											<span class="form-label" id="email"> Description: </span>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<img
										src="https://static.meraevents.com/content/gallery/109010/14445991_1079817365472520_5637130704403341559_n1475680184.jpg"
										title="will be replaced by organization logo" style="width:320px;height:150px">
								</div>
							</div>
							<div class="footer">
								<hr>
								<div class="stats">
									<i class="ti-timer"></i> Added 2 days ago
								</div>
							</div>
						</div>
					</div>
		</div>
	</div>
	
	<div class="row">
	
	</div>
<footer class="page-footer font-small blue"
		style="background: #f8f9fa !important; width: 100%; bottom: 0; height: 5%">
		<div class="footer-copyright text-center py-3">© 2018 Copyright
		</div>
	</footer>

	<script src="/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="/js/core/popper.min.js" type="text/javascript"></script>
	<script src="/js/core/bootstrap.min.js" type="text/javascript"></script>
	<script src="/js/plugins/perfect-scrollbar.jquery.min.js"
		type="text/javascript"></script>
	<script src="/js/plugins/bootstrap-notify.js"></script>
	<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/js/paper-dashboard.js?v=2.0.0" type="text/javascript"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>
	
	<script>
		$(document).ready(function(){
			for (var i = 0; i < 3; i++) {
				$("#organizationTitle").show();
				$("#organizationDiv").clone().insertAfter(
						"#organizationDiv").attr("id",
						"organization" + i);
				$("#organization" + i).css("display", "block");
				
				$("#organization" + i).find("#contact").html(
						"organization " + i
								+ " : contact Number");
				$("#organization" + i).find("#address").html(
						"address " + i + " : address Number");
				$("#organization" + i).find("#email").html(
						"email " + i + " : email Number");
				$("#organization" + i).find("#googleMap").attr(
						"id", "googleMap" + i);
				
			}
			
			
		})
	
	</Script>
</body>
</html>
