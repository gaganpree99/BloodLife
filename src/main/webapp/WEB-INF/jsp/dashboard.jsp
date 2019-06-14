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
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #ad4848; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-4" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: A+</p>
												500ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #883636; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: B+</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #b92300; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: AB+</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #ad4848; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: A-</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #883636; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: B-</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #b92300; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: AB-</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #b15f4b; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: O+</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="card" style="background: #b15f4b; color: white">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-3" style="margin: 4%">
											<div class="text-center">
												<i class="fas fa-prescription-bottle"
													style="font-size: 48px"></i>
											</div>
										</div>
										<div class="col-xs-5" style="margin: 4%">
											<div style="font-size: 18px">
												<p>Blood Group: O-</p>
												600ml
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
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


<script>
	$(document).ready(function() {
		$("#header").html("Dashboard");
		$("li").removeClass("active");
		$("#dashboard").addClass("active")
		//

	})
</script>
</html>