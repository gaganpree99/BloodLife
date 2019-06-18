<!doctype html>
<html lang="en">
<head>
<title>Donor Details</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- Material Kit CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"
	rel="stylesheet" />
<style>
.rowSelected {
	
}
</style>

</head>
<body>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp" />
		<div class="main-panel">
			<jsp:include page="navbar.jsp" />
			<div class="content">
				<div class="row">
					<div class="col-sm-1">
						<button type="button" class="btn btn-default btn-md"
							id="addDonor">
							<i class="fas fa-user-plus"></i> Add Donor
						</button>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="container table-responsive">
						<table class="table table-striped" id="donorTable"
							style="text-align: center">
							<thead class="thead-dark">
								<tr>
									<th scope="col" width="5%">#</th>
									<th scope="col" width="10%">First Name</th>
									<th scope="col" width="10%">Last Name</th>
									<th scope="col" width="10%">Blood Group</th>
									<th scope="col" width="10%">Bag Number</th>
									<th scope="col" width="10%">Quantity</th>
									<th scope="col" width="10%">Contact Number</th>
									<th scope="col" width="10%">Donated Date</th>
									<th scope="col" width="10%">Expiry Date</th>
									<th scope="col" width="10%"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Varun</td>
									<td>Mahagaokar</td>
									<td>O+</td>
									<td>O0234</td>
									<td>100</td>
									<td>+919990002323</td>
									<td>05/31/2019</td>
									<td>06/10/2019</td>
									<td><i class="fas fa-edit"
										style="margin-right: 10%; font-size: 18px; color: #22733d"
										onclick="editDonor()"></i><i class="fas fa-trash-alt"
										style="margin-left: 10%; font-size: 18px; color: #bb3b3b"
										onclick="deleteData()"></i></td>
								</tr>
								<tr>
									<td>2</td>
									<td>Smit</td>
									<td>Saraiya</td>
									<td>O+</td>
									<td>O0432</td>
									<td>200</td>
									<td>+919990002323</td>
									<td>05/31/2019</td>
									<td>06/10/2019</td>
									<td><i class="fas fa-edit"
										style="margin-right: 10%; font-size: 18px; color: #22733d"
										onclick="editDonor()"></i><i class="fas fa-trash-alt"
										style="margin-left: 10%; font-size: 18px; color: #bb3b3b"
										onclick="deleteData()"></i></td>

								</tr>
								<tr>
									<td>3</td>
									<td>Nishant</td>
									<td>Bhambani</td>
									<td>A+</td>
									<td>A0234</td>
									<td>150</td>
									<td>+919990002323</td>
									<td>05/31/2019</td>
									<td>06/10/2019</td>
									<td><i class="fas fa-edit"
										style="margin-right: 10%; font-size: 18px; color: #22733d"
										onclick="editDonor()"></i><i class="fas fa-trash-alt"
										style="margin-left: 10%; font-size: 18px; color: #bb3b3b"
										onclick="deleteData()"></i></td>

								</tr>
								<tr>
									<td>4</td>
									<td>Anant</td>
									<td>Pillai</td>
									<td>AB+</td>
									<td>AB0234</td>
									<td>300</td>
									<td>+919990002323</td>
									<td>05/31/2019</td>
									<td>06/10/2019</td>
									<td><i class="fas fa-edit"
										style="margin-right: 10%; font-size: 18px; color: #22733d"
										onclick="editDonor()"></i><i class="fas fa-trash-alt"
										style="margin-left: 10%; font-size: 18px; color: #bb3b3b"
										onclick="deleteData()"></i></td>

								</tr>
								<tr>
									<td>5</td>
									<td>Dhruv</td>
									<td>Purohit</td>
									<td>B-</td>
									<td>B1234</td>
									<td>250</td>
									<td>+919990002323</td>
									<td>05/31/2019</td>
									<td>06/10/2019</td>
									<td><i class="fas fa-edit"
										style="margin-right: 10%; font-size: 18px; color: #22733d"
										onclick="editDonor()"></i><i class="fas fa-trash-alt"
										style="margin-left: 10%; font-size: 18px; color: #bb3b3b"
										onclick="deleteData()"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!--Add Begin Modal -->

				<div id="addDonorModal" class="modal " tabindex="-1"
					role="dialog">
					<div class="modal-dialog modal-md" role="document">
						<div class="modal-content">
							<form onsubmit="return addDonor()" action="javascript:void(0)"
								id="addDonorDetails">
								<div class="modal-header">
									<h5 class="modal-title">Donor Details</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label class="control-label"> First Name:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="firstName"
											id="firstName" placeholder="firstname" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Last Name:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="lastName"
											id="lastName" placeholder="lastName" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Blood Group:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="bloodGroup"
											id="bloodGroup" placeholder="bloodGroup" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Quantity (ml):<span
											style="color: red"> *</span>
										</label> <input type="number" class="form-control" name="quantity"
											id="quantity" min=10 placeholder="quantity" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Contact:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="contact"
											id="contact" placeholder="contact" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Date: <span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="date"
											id="datepicker" placeholder="date" required>
									</div>

								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-success" id="btnSave">Save</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- End Add Modal -->
				<!--Edit Begin Modal -->
				<div id="editDonorModal" class="modal " tabindex="-1"
					role="dialog">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<form onsubmit="return updateDonor()"
								action="javascript:void(0)">
								<div class="modal-header">
									<h5 class="modal-title">Update Donor Details</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label class="control-label"> First Name:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" id="editFirstName"
											placeholder="firstname" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Last Name:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" id="editLastName"
											placeholder="lastName" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Blood Group:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" id="editBloodGroup"
											placeholder="bloodGroup" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Quantity:<span
											style="color: red"> *</span>
										</label> <input type="number" class="form-control" id="editQuantity"
											placeholder="quantity" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Contact:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" id="editContact"
											placeholder="contact" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Date: <span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" id="editDatepicker"
											placeholder="date" required>
									</div>

								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-success" id="updateBtn">Update</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- End Edit Modal -->
			</div>
			<jsp:include page="footer.jsp" />
		</div>
	</div>

	<!--   Core JS Files   -->
	<script src="/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="/js/core/popper.min.js" type="text/javascript"></script>
	<script src="/js/core/bootstrap.min.js" type="text/javascript"></script>
	<script src="/js/plugins/perfect-scrollbar.jquery.min.js"
		type="text/javascript"></script>
	<script src="/js/plugins/bootstrap-notify.js"></script>
	<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/js/paper-dashboard.js?v=2.0.0" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$("#header").html("Donor Details");
			$("li").removeClass("active");
			$("#donorJsp").addClass("active")
			table = $('#donorTable').DataTable({
				"ordering" : false
			});

			$(function() {
				$("#datepicker").datepicker({
					maxDate : "+1w",
					minDate : "-1d"
				});
			});

			$(function() {
				$("#editDatepicker").datepicker({
					maxDate : "+1w",
					minDate : "-1d"
				});
			});
		});

		function selectRow(operation) {
			$('#donorTable tbody').on('click', 'tr', function() {

				if ($(this).hasClass('rowSelected')) {
					$(this).removeClass('rowSelected');
				} else {
					table.$('tr.rowSelected').removeClass('rowSelected');
					$(this).addClass('rowSelected');
					if (operation == "edit") {
						edit();
					} else {
						deleteDonor();
					}

				}
			});

		}

		function addDonor() {
			$("#addDonorModal").modal('hide');
			$.notify({
				// options
				message : 'Donor added successfully'
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

		function updateDonor() {
			$("#editDonorModal").modal('hide');
			$.notify({
				// options
				message : 'Donor updated successfully'
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

		function editDonor() {
			selectRow("edit");
		}

		function deleteData() {
			selectRow("deleteDonor");
		}

		function edit() {
			var rowData = $('#donorTable').DataTable().row(
					$('#donorTable tbody').find(".rowSelected")).data();
			$("#editFirstName").val(rowData[1]);
			$("#editLastName").val(rowData[2]);
			$("#editBloodGroup").val(rowData[3]);
			$("#editQuantity").val(rowData[4]);
			$("#editContact").val(rowData[5]);
			$('#editDatepicker').datepicker("setDate", new Date(rowData[6]));
			$("#editDonorModal").modal('show');
		}

		function deleteDonor() {
			var rowData = $('#donorTable').DataTable().row(
					$('#donorTable tbody').find(".rowSelected")).data();
			console.log(rowData);
		}

		$("#addDonor").click(function() {
			$("#addDonorModal").modal('show');
		})
	</script>
</body>
</html>