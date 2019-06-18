<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <!-- Material Kit CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

 <link rel="stylesheet" href="demo/edit_profile.css">
	
<title>Profile</title>
</head>
<body>
	<div class="wrapper">
			<jsp:include page="sidebar.jsp" />
			<div class="main-panel">
				<jsp:include page="navbar.jsp" />
				<div class="content">
					    <div class="row">
      <div class="col-xs-10 col-sm-9 col-lg-10 center">
        <form class="form ">
          <div id="parent_layout" class="card center">
            <div class="card-details center">
              <!-- This image was taken from https://pixabay.com/ (look for reference number [1] under Edit profile page in ReadMe file)-->
              <img src="https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_1280.png" class="img-circle profile-avatar" alt="User avatar">
            </div>
            <div class="card-btn center">
              <button id="edit_btn" type="button" onclick="myFunction()" name="button">Edit Profile</button>
              <button id="save_btn" type="button" onclick="saveChanges()" name="button" disabled="disabled">Save Edits</button>

            </div>
          </div>
          <br>
          <div class="card ">
            <div class="card-details ">
              <div class="card-heading">
                <h4 class="card-title">User info</h4>
              </div>
              <div class="form-group">
                <div class="lable-class col-sm-2">
                  <label>First Name:</label>
                </div>
                <div class="field col-sm-10 col-lg-8">
                  <input id="first_name" type="text" class="form-control" readonly="readonly" value="Sohail">
                </div>
              </div>
              <div class="form-group">
                <div class="lable-class col-sm-2">
                  <label>Last Name:</label>
                </div>
                <div class="field col-sm-10 col-lg-8">
                  <input id="last_name" type="text" class="form-control" readonly="readonly" value="Mohammed" required>
                </div>
              </div>

              <div class="form-group">
                <div class="lable-class col-sm-2">
                  <label>Age:</label>
                </div>
                <div class="field col-sm-10 col-lg-8">
                  <input id="Age" type="text" class="form-control" readonly="readonly" value="22">
                </div>
              </div>

              <div class="form-group">
                <div class="lable-class col-sm-2">
                  <label>Gender:</label>
                </div>
                <div class="field col-sm-10 col-lg-8">
                  <select id="type" class="form-control" disabled=disabled>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                  </select>
                </div>
              </div>

            </div>
          </div>
          <br>
          <div class="card ">
            <div class="card-details ">
              <div class="card-heading">
                <h4 class="card-title">Contact info</h4>
              </div>
              <div class="form-group">
                <div class="lable-class col-sm-2">
                  <label>Email:</label>
                </div>
                <div class="field col-sm-10 col-lg-8">
                  <input id="email" type="email" class="form-control" readonly="readonly" value="sohail7788@gmail.com">
                </div>
              </div>
              <div class="form-group">
                <div class="lable-class col-sm-2">
                  <label>Phone Number:</label>
                </div>
                <div class="field col-sm-10 col-lg-8">
                  <input id="phone" type="tel" class="form-control" readonly="readonly" value="7818821200">
                </div>
              </div>
            </div>
          </div>
          <br>
        </form>
      </div>
    </div>
</div>
</div>
</div>
<script>
var first_name, last_name, Age, email, phone;

function myFunction() {
  document.getElementById('first_name').removeAttribute('readonly');
  document.getElementById('last_name').removeAttribute('readonly');
  document.getElementById('Age').removeAttribute('readonly');
  document.getElementById('email').removeAttribute('readonly');
  document.getElementById('phone').removeAttribute('readonly');
  document.getElementById('save_btn').removeAttribute('disabled');
  document.getElementById('type').removeAttribute('disabled');
  document.getElementById('edit_btn').setAttribute('disabled', 'disabled');

};

function saveChanges() {
  first_name = document.getElementById('first_name').value;
  last_name = document.getElementById('last_name').value;
  Age = document.getElementById('Age').value;
  email = document.getElementById('email').value;
  phone = document.getElementById('phone').value;


  //  the regular expression of identifying phone number was taken from https://stackoverflow.com/a/52391385
  var number = /^\d{10}$/;

  // the regular expression of identifying email address was taken from https://stackoverflow.com/a/9204568
  var emailValidation = /\S+@\S+\.\S+/;
  var stringCheck = /[a-zA-Z]/;
  var ageCheck = /^\d+$/;
  if (!phone.match(number)) {
    alert("Phone number should be a 10 digit Number");
    debugger;
  } else if (!email.match(emailValidation)) {
    alert("Invalid Email Address, it should be of format abc@abc.abc");
  } else if (!first_name.match(stringCheck) || !last_name.match(stringCheck)) {
    alert("First Name or Last Name should not be empty");
  } else if (!Age.match(ageCheck)) {
    alert("Age should be a Number");
  } else {

    document.getElementById('first_name').value = first_name;
    document.getElementById('last_name').value = last_name;
    document.getElementById('Age').value = Age;
    document.getElementById('email').value = email;
    document.getElementById('phone').value = phone;

    document.getElementById('first_name').setAttribute('readonly', 'readonly');
    document.getElementById('last_name').setAttribute('readonly', 'readonly');
    document.getElementById('Age').setAttribute('readonly', 'readonly');
    document.getElementById('email').setAttribute('readonly', 'readonly');
    document.getElementById('phone').setAttribute('readonly', 'readonly');
    document.getElementById('save_btn').setAttribute('disabled', 'disabled');
    document.getElementById('edit_btn').removeAttribute('disabled');
    document.getElementById('type').setAttribute('disabled', 'disabled');
    alert("Profile Successfully updated")

  }
}




</script>
			
</body>
</html>