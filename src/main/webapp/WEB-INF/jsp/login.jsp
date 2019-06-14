<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <script src="/js/core/jquery.min.js"></script>
  <script src="/js/core/bootstrap.min.js"></script>
</head>
<style>
.nav-item{
padding-right:10%
}
</style>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">BLOOD-LIFE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/homepage">Home</a>
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
	<div class="row" >
	<div class="col-6"></div>
		<div class="col-6" style="margin-top:10%">
			<div class="jumbotron" style="background:#343a40; padding-bottom:1%;padding-top:5%;border-radius:2%" >
			<h2 style="color:white;text-align:center;margin-bottom:5%">Login</h2>
				<form onsubmit="return login()" action="javascript:void(0)">
					<div class="form-group" ><input type="text" class="form-control" placeholder="username"></div>
					<div  class="form-group"><input type="password" class="form-control" placeholder="password"></div>
					<div  class="form-group" style="text-align:center"><button type="submit" class="btn btn-lg btn-outline-success" style="margin:5%">Login</button><button type="submit" class="btn btn-lg btn-outline-warning" style="margin:5%">Signup</button></div>
					
				</form>
			</div>
		</div>
	</div>
  
</div>
<footer id="sticky-footer" class="py-4 bg-dark text-white-50" style="position:fixed;bottom:0;width:100%">
    <div class="container text-center">
      <small>Copyright &copy; Your Website</small>
    </div>
  </footer>
<Script>
function login(){

	document.location.href = '/dashboard'
}

</Script>
</body>
</html>
