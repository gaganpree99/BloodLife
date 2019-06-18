<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Dashboard</title>
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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"
	rel="stylesheet" />
<style>
.box:hover {
	box-shadow: 3px 3px 20px #000000;
}

.card_img {
	height: 180px;
}
.text{
	color:#bd2a2a
}
</style>
</head>
<body>
<body class="">
	<div class="wrapper ">
		<jsp:include page="sidebar.jsp" />
		<div class="main-panel">
			<!-- Navbar -->
			<jsp:include page="navbar.jsp" />
			<!-- End Navbar -->
			<div class="content">
				<div class="row">
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://cdn1.medicalnewstoday.com/content/images/articles/320/320717/red-blood-cells.jpg"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: A+</span>
								</h4>
								<p class="card-text" style="font-size: 24px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://cdn1.medicalnewstoday.com/content/images/articles/319/319544/3d-render-of-red-blood-cells.jpg"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: A-</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: B+</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: B-</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: O+</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: O-</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://dp9bxf2pat5uz.cloudfront.net/wp-content/uploads/red-blood-cells-1.jpg"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: AB+</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<a href="#"><img class="card-img-top card_img"
								src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title" style="margin: 0px; font-weight: 700;">
									<span class="text">Blood Group: AB-</span>
								</h4>
								<p class="card-text" style="font-size: 28px">5300 ml</p>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-sm-6 mb-3">
						<div id="card3" class="card h-100">
							<!-- The below image has been taken from https://unsplash.com/ (look for reference number [4] under Landing page in ReadMe file)-->
							<div class="header" style="padding: 1.5%; margin: 0px">
								<h5>
									Checked In Doctors
								</h5>
								<hr>
							</div>
							<div class="card-body">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="card box">
							<div class="header" style="padding: 1%; margin: 0px">
								<h4>
									Recent Donors <i class="fas fa-sync"
										style="float: right; padding: 2%; cursor: pointer"></i>
								</h4>
								<p class="categories">5 Recent donors</p>
								<hr>
							</div>
							<div class="content">
								<div class="container table-responsive">
									<table class="table table-striped" id="donorTable">
										<thead class="thead-dark">
											<tr>
												<th scope="col">#</th>
												<th scope="col">First Name</th>
												<th scope="col">Last Name</th>
												<th scope="col">Blood Group</th>
												<th scope="col">Quantity</th>
												<th scope="col">Contact Number</th>
												<th scope="col">Date</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Varun</td>
												<td>Mahagaokar</td>
												<td>O+</td>
												<td>100</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>Smit</td>
												<td>Saraiya</td>
												<td>O+</td>
												<td>200</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Nishant</td>
												<td>Bhambani</td>
												<td>A+</td>
												<td>150</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">4</th>
												<td>Anant</td>
												<td>Pillai</td>
												<td>AB+</td>
												<td>300</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">5</th>
												<td>Dhruv</td>
												<td>Purohit</td>
												<td>B-</td>
												<td>250</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="card box">
							<div class="header" style="padding: 1%; margin: 0px">
								<h4>
									Recent Receivers <i class="fas fa-sync"
										style="float: right; padding: 2%; cursor: pointer"></i>
								</h4>
								<p class="categories">5 Recent Receivers</p>
								<hr>
							</div>
							<div class="content">
								<div class="container table-responsive">
									<table class="table table-striped" id="receiverTable">
										<thead class="thead-dark">
											<tr>
												<th scope="col">#</th>
												<th scope="col">First Name</th>
												<th scope="col">Last Name</th>
												<th scope="col">Blood Group</th>
												<th scope="col">Quantity</th>
												<th scope="col">Contact Number</th>
												<th scope="col">Date</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Varun</td>
												<td>Mahagaokar</td>
												<td>O+</td>
												<td>100</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>Smit</td>
												<td>Saraiya</td>
												<td>O+</td>
												<td>200</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Nishant</td>
												<td>Bhambani</td>
												<td>A+</td>
												<td>150</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">4</th>
												<td>Anant</td>
												<td>Pillai</td>
												<td>AB+</td>
												<td>300</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
											<tr>
												<th scope="row">5</th>
												<td>Dhruv</td>
												<td>Purohit</td>
												<td>B-</td>
												<td>250</td>
												<td>+919990002323</td>
												<td>05/31/2019</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="row"></div>
			</div>
			<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>

<script src="/js/core/jquery.min.js"></script>
<script src="/js/core/popper.min.js"></script>
<script src="/js/core/bootstrap.min.js"></script>
<script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<script src="/js/plugins/bootstrap-notify.js"></script>
<script src="/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
<script src="/demo/demo.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


<script>
	$(document).ready(function() {
		$("#header").html("Dashboard");
		$("li").removeClass("active");
		$("#dashboard").addClass("active");
		var doctorTable = $('#doctorTable').DataTable({
			scrollY:        '50vh',
	        scrollCollapse: true,
			"paging" : false
		});
		var donorTable = $('#donorTable').DataTable({
			"paging" : false
		});
		var receiverTable = $('#receiverTable').DataTable({
			"paging" : false
		});
	})
</script>
</html>