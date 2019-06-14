<!doctype html>
<html lang="en">
<head>
<title>Receiver Details</title>
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
							id="addReceiver">
							<i class="fas fa-user-plus"></i> Add
						</button>
					</div>
					<div class="col-sm-1" style="float: right">
						<button type="button" class="btn btn-success btn-md"
							id="editReceiver">
							<i class="fas fa-pencil-alt"></i> Edit
						</button>
					</div>
				</div>
				<div class="row">
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
				<!--Add Begin Modal -->

				<div id="addReceiverModal" class="modal " tabindex="-1"
					role="dialog">
					<div class="modal-dialog modal-md" role="document">
						<div class="modal-content">
							<form onsubmit="return addReceiver()" action="javascript:void(0)" id="addReceiverDetails" >
								<div class="modal-header">
									<h5 class="modal-title">Receiver Details</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label class="control-label"> First Name:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="firstName" id="firstName"
											placeholder="firstname" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Last Name:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="lastName" id="lastName"
											placeholder="lastName" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Blood Group:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="bloodGroup" id="bloodGroup"
											placeholder="bloodGroup" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Quantity (ml):<span
											style="color: red"> *</span>
										</label> <input type="number" class="form-control" name="quantity" id="quantity"
											min=10 placeholder="quantity" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Contact:<span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="contact" id="contact"
											placeholder="contact" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Date: <span
											style="color: red"> *</span>
										</label> <input type="text" class="form-control" name="date" id="datepicker"
											placeholder="date" required>
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
				<div id="editReceiverModal" class="modal " tabindex="-1"
					role="dialog">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<form onsubmit="return updateReceiver()" action="javascript:void(0)">
								<div class="modal-header">
									<h5 class="modal-title">Update Receiver Details</h5>
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
</body>
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
	var table;
	$(document).ready(function() {
		$("#header").html("Receiver Details");
		$("li").removeClass("active");
		$("#receiverJsp").addClass("active")
		var table = $('#receiverTable').DataTable();

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

		$('#receiverTable tbody').on('click', 'tr', function() {
			console.log(table.row(this).data());
			if ($(this).hasClass('selected')) {
				$(this).removeClass('selected');
			} else {
				table.$('tr.selected').removeClass('selected');
				$(this).addClass('selected');
			}
		});
	});
	
	function addReceiver(){
		$("#addReceiverModal").modal('hide');
	 $.notify({
			// options
			message : 'Receiver added successfully'
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
	
	function updateReceiver(){
		$("#editReceiverModal").modal('hide');
		 $.notify({
				// options
				message : 'Receiver updated successfully'
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

	$("#editReceiver")
			.click(function() {
						if ($('#receiverTable tbody tr').hasClass('selected')) {
							$("#editReceiverModal").modal('show');
							var rowData = $('#receiverTable').DataTable()
									.row(
											$('#receiverTable tbody').find(
													".selected")).data();
							$("#editFirstName").val(rowData[1]);
							$("#editLastName").val(rowData[2]);
							$("#editBloodGroup").val(rowData[3]);
							$("#editQuantity").val(rowData[4]);
							$("#editContact").val(rowData[5]);
							$('#editDatepicker').datepicker("setDate",new Date(rowData[6]));
						} else {
							$.notify({
								// options
								message : 'select a row'
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
						}
					});



	$("#addReceiver").click(function() {
		$("#addReceiverModal").modal('show');
	})
</script>
</html>