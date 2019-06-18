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
<!-- CSS Files -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link
	href='https://demos.creative-tim.com/bs3/paper-dashboard/assets/css/themify-icons.css'
	rel='stylesheet' type='text/css'>
<link
	href='https://demos.creative-tim.com/bs3/paper-dashboard/assets/css/animate.min.css'
	rel='stylesheet' type='text/css'>
<link href="/demo/demo.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">


<title>Blood Life</title>
<style type="text/css">
.login {
	margin-top: 5%;
	background: #130101a1;
	border-radius: 40px;
	color: white;
	text-align: center;
}

.carousel-inner img {
	width: 100%;
	height: 100%;
}

.nav-item, .nav-link {
	color: black !important;
}
</style>
</head>

<body style="background: #f4f3ef">
	<div style="margin-bottom: 2.5%">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">BLOOD-LIFE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/index">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Events</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">Gallery</a>
      </li>
      
    </ul>
  </div>
</nav>

		<div class="container">
			<div class="row" style="margin: 1.5%">

				<select class="select2 col-sm-8" id="organizationList"
					name="organization" multiple="multiple">
					<option value="Canadian Blood Services">Canadian Blood
						Services</option>
					<option value="Nova Scotia Blood Services">Nova Scotia
						Blood Services</option>
				</select>

			</div>
			<div class="row" style="margin: 1.5%">

				<button class="btn btn-md btn-default" id="searchDonorBtn"
					style="float: right; margin-top: 0px">Search By Blood
					Availability</button>

			</div>
				<div class="modal" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Requirement Details</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<form action="javascript:void(0);">
								<!-- Modal body -->
								<div class="modal-body">
									<div class="form-group">
										<span class="form-label"> Blood Quantity: </span> <select
											class="col-sm-12" id="bloodList" style="width: 100%">
											<option value="A+">A+</option>
											<option value="A-">A-</option>
											<option value="B+">B+</option>
											<option value="O+">O+</option>
											<option value="O-">O-</option>
											<option value="AB+">AB+</option>
											<option value="AB-">AB-</option>
										</select>
									</div>
									<div class="form-group">
										<span class="form-label"> Blood Quantity (ml): </span> <input
											type="number" class="form-control" id="quantity" min=10 required/>
									</div>

								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit" id="submitBtn" class="btn btn-success"
										>Submit</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</form>
						</div>
					</div>
				</div>

			<div class="row">
				<div class="col-lg-6 col-sm-6">
					<div class="card" style="background: #a94d4d; color: white">
						<div class="content">
							<div class="container">
								<div class="row">
									<div class="col-xs-3" style="margin: 5%">
										<div class="text-center">
											<i class="fas fa-ambulance" style="font-size: 72px"></i>
										</div>
									</div>
									<div class="col-xs-6" style="margin: 5%">
										<div class="numbers">
											<p>Registered Organizations</p>
											83
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6">
					<div class="card" style="background: #517351; color: white">
						<div class="content">
							<div class="container">
								<div class="row">
									<div class="col-xs-3" style="margin: 5%">
										<div class="text-center">
											<i class="fas fa-band-aid" style="font-size: 72px"></i>
										</div>
									</div>
									<div class="col-xs-5" style="margin: 5%">
										<div class="numbers">
											<p>Registered Donors</p>
											12,305
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="container">
					<h3 id="organizationTitle">Organizations</h3>
					<div class="card" id="organizationDiv"
						style="margin-bottom: 5%; display: none;">
						<div class="container-fluid">
							<div class="header">
								<h3 class="title" style="padding-top: 1%; font-family: cursive">Organization
									Name</h3>
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
											<span class="form-label" id="email"> Email: </span>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<img
										src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/IWK_Health_Centre_%28logo%29.svg/320px-IWK_Health_Centre_%28logo%29.svg.png"
										title="will be replaced by organization logo">
								</div>
								<div class="container-fluid">
									<div id="googleMap" style="width: 100%; height: 300px;"></div>
								</div>
							</div>
							<div class="footer">
								<hr>
								<div class="stats">
									<i class="ti-timer"></i> Campaign sent 2 days ago
								</div>
							</div>
						</div>
					</div>
				
			
			</div>
		</div>
		</div>
	</div>
	<!-- Footer -->
	<footer class="page-footer font-small blue"
		style="background: #f8f9fa !important; position: fixed; width: 100%; bottom: 0; height: 5%">
		<div class="footer-copyright text-center py-3">© 2018 Copyright
		</div>
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
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCAgr94q-qXSYGSO-NdpvvrImA_ln0uVcs"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>
<script type="text/javascript">
	var markersList = [];
	$(document).ready(function() {
		$('#organizationList').select2({
			placeholder : "Select Organization"
		});
		$('#bloodList').select2({
			placeholder : "Select blood group"
		});
		$("#organizationTitle").hide();
	});

	$("#organizationList")
			.change(
					function() {
						console.log($("#organizationList").val().length);
						$("#organizationDiv").siblings().not("h3").remove();
						$("#organizationTitle").hide();
						if ($("#organizationList").val().length == 0) {
							$.notify({
								// options
								message : 'Select the organization'
							}, {
								// settings
								type : 'danger',
								allow_dismiss : true,
								placement : {
									from : "top",
									align : "center"
								},
								timer : 200
							});
							/* $("#googleMap").hide(); */
						} else {
							for (var i = 0; i < $("#organizationList").val().length; i++) {
								$("#organizationTitle").show();
								$("#organizationDiv").clone().insertAfter(
										"#organizationDiv").attr("id",
										"organization" + i);
								$("#organization" + i).css("display", "block");
								$("#organization" + i).find(".title").html(
										$("#organizationList").val()[i]);
								$("#organization" + i).find("#contact").html(
										"organization " + i
												+ " : contact Number");
								$("#organization" + i).find("#address").html(
										"address " + i + " : address Number");
								$("#organization" + i).find("#email").html(
										"email " + i + " : email Number");
								$("#organization" + i).find("#googleMap").attr(
										"id", "googleMap" + i);
								loadMap($("#organizationList").val()[i], i);
							}
						}
					});

	$("#searchDonorBtn").click(function() {
		$("#myModal").find('form').trigger('reset');
		$('#myModal').modal({
			show : true
		});
	})

	function loadMap(organization, index) {
		markersList = [];
		console.log(organizationList);
		var pre_infoWindow = false;
		var latLongList = [ [ 44.637269, -63.584232 ], [ 44.6517, -63.5495 ] ];

		console.log(latLongList);

		var latlng = new google.maps.LatLng(latLongList[index][0],
				latLongList[index][1]);

		var mapProp = {
			center : latlng,
			zoom : 15,
		};

		var map = new google.maps.Map(document.getElementById("googleMap"
				+ index), mapProp);

		/* for (var i = 0; i < organizationList.length; i++)  */
		var latlong = new google.maps.LatLng(latLongList[index][0],
				latLongList[index][1]);
		let infowindow = new google.maps.InfoWindow(
				{
					content : "<table><tr><th>Contact :</th><td>Contact Number of Organization"
							+ index
							+ "</td></tr>"
							+ "<tr><th>Address :</th><td>Address of Organization  "
							+ index
							+ "</td></tr>"
							+ "<tr><th>Email :</th><td>Email of Organization "
							+ index + "</td></tr>" + "</table>",

					maxWidth : 300
				});
		let marker = new google.maps.Marker({
			position : latlong,
			map : map
		});
		marker.addListener('click', function() {
			if (pre_infoWindow) {
				pre_infoWindow.close();
			}
			pre_infoWindow = infowindow;
			infowindow.open(map, marker);
		});
		marker.setMap(map);
		$("#googleMap" + index).show();
	}
	
	$("#submitBtn").click(function(){
		if($("#quantity").val() >= 10){
			$('#myModal').modal('hide')
			$.notify({
				// options
				message : 'Request Sent Successfully'
			}, {
				// settings
				type : 'success',
				allow_dismiss : true,
				placement : {
					from : "top",
					align : "center"
				},
				timer : 200
			});
		}
	})
</script>
</html>