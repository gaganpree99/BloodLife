
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0 , shrink-to-fit=no"
	name="viewport" />
<title>Gallery Management</title>
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

		<jsp:include page="sidebar.jsp"></jsp:include>

		<div class="main-panel">
			<!-- Navbar -->
			<jsp:include page="navbar.jsp">
			</jsp:include>
			<!-- End Navbar -->

			<div class="content">
				<div class="row">
					<p style="font-size: 64px">
						<i class="fas fa-laptop-code"></i> Under Development
					</p>
				</div>
				<div class="row"></div>
				<div class="row"></div>
			</div>
			<jsp:include page="footer.jsp">
			</jsp:include>
		</div>
	</div>

</body>

<script src="/js/core/jquery.min.js"></script>
<script src="/js/core/popper.min.js"></script>
<script src="/js/core/bootstrap.min.js"></script>
<script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<script src="/js/plugins/bootstrap-notify.js"></script>
<script src="/js/paper-dashboard.min.js?v=2.0.0" ></script>
<script src="/demo/demo.js"></script>


<script>
  $(document).ready(function(){
	  $("#header").html("Gallery Management");
	  $("li").removeClass("active");
	  $("#galleryJsp").addClass("active")
	 // 
	  
  })
  </script>
</html>