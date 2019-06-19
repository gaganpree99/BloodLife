<!doctype html>
<html lang="en">
<head>
<title>Reporting</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0 , shrink-to-fit=no"
	name="viewport" />

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
<link
	href="/css/dark-unica.css"
	rel="stylesheet" />
<style>
a {
	color: #ef8157;
}
</style>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="main-panel">
			<jsp:include page="navbar.jsp"></jsp:include>
			<div class="content">
				<div class="row">
					<div class="container">
						<div class="card card-nav-tabs card-plain">
							<div class="card-header card-header-info">
								<!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
								<div class="nav-tabs-navigation">
									<div class="nav-tabs-wrapper">
										<ul class="nav nav-tabs" data-tabs="tabs">
											<li class="nav-item"><a class="nav-link active"
												href="#blood" data-toggle="tab" id="bloodTab"><b>Blood</b></a></li>

											<li class="nav-item"><a class="nav-link"
												href="#receiver" data-toggle="tab" id="receiverTab"><b>Receiver</b></a></li>
											<li class="nav-item"><a class="nav-link" href="#donor"
												data-toggle="tab" id="donorTab"><b>Donor</b></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="card-body ">
								<div class="tab-content text-center">
									<div class="tab-pane active" id="blood">
										<div class="container">
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<select class="form-control"  id="selectMonthBlood"></select>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<select class="form-control"  id="selectYearBlood"></select>
													</div>
												</div>
												<div class="col-md-2">
													<button class="btn btn-default btn-md" style="margin: 0px">
														Get Report</button>
												</div>
											</div>
										</div>
										<div id="bloodChart" class="container"></div>
									</div>
									<div class="tab-pane" id="receiver">
										<div class="container">
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<select class="form-control" id="selectMonthReceiver" ></select>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<select class="form-control" id="selectYearReceiver"></select>
													</div>
												</div>

												<div class="col-md-2">
													<button class="btn btn-default btn-md" style="margin: 0px">
														Get Report</button>
												</div>
											</div>
										</div>
										<div id="receiverChart" class="container"></div>
									</div>
									<div class="tab-pane" id="donor">
										<div class="container">
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<select class="form-control" id="selectMonthDonor"></select>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<select class="form-control"  id="selectYearDonor"></select>
													</div>
												</div>
												<div class="col-md-2">
													<button class="btn btn-default btn-md" style="margin: 0px">
														Get Report</button>
												</div>
											</div>
										</div>
										<div id="donorChart" class="container"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row"></div>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>

	<!--   Core JS Files   -->
	<script src="/js/core/jquery.min.js" ></script>
	<script src="/js/core/popper.min.js" ></script>
	<script src="/js/core/bootstrap.min.js" ></script>
	<script src="/js/plugins/perfect-scrollbar.jquery.min.js"
		></script>
	<script src="/js/plugins/bootstrap-notify.js"></script>
	<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/js/paper-dashboard.js?v=2.0.0" ></script>
	<script src="https://code.highcharts.com/highcharts.src.js"></script>

	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script>
	var chart;
		$(document).ready(function() {
			$("#header").html("Reporting");
			$("li").removeClass("active");
			$("#reportJsp").addClass("active");
			addMonthsYears();
			loadBloodChart();
			
			
		});
		
		$("#bloodTab").click(function(){
			e.preventDefault();
		    while(chart.series.length > 0) chart.series[0].remove(true);
		    loadBloodChart();
		})
		
		$('#donorTab').click(function(){
			addMonthsYears();
			 loadDonorChart();
		});
		
		$('#receiverTab').click(function(){
			addMonthsYears();
			loadReceiverChart();
		});
		
		function loadDonorChart() {
			if($('#donorChart').highcharts() != null){
				$('#donorChart').highcharts().destroy();
			}
			
			Highcharts.chart('donorChart', {
				chart : {
					height : 500,
					type : 'column',
				},
				title : {
					style : {
						color : '#FFFFFFF',
					},
					text : 'Number of Donor , 2018'
				},

				subtitle : {
					style : {
						color : '#FFFFFFF',
					},
					text : 'Source:blood-life'
				},

				yAxis : {

					title : {
						text : 'Quantity of blood in litres',
						style : {
							color : '#FFFFFFF',
						}
					},
					labels : {
						style : {
							color : 'white'
						}
					}
				},
				xAxis : {
					categories : [ 'January', 'February', 'March', 'April',
							'May', 'June', 'July', 'August' ],
					labels : {
						style : {
							color : 'white'
						}
					}
				},
				legend : {
					layout : 'vertical',
					align : 'right',
					verticalAlign : 'middle',
					padding : 3,
					itemMarginTop : 5,
					itemMarginBottom : 5,
					itemStyle : {
						color : '#FFFFFFF',
						fontWeight : 'bold',

					}

				},
				tooltip : {

					style : {
						color : '#FFFFFFF',
						fontSize : '14px'

					}
				},

				plotOptions : {
					series : {
						label : {

							connectorAllowed : false
						},
						 animation: true
					}
				},

				series : [ {
					name : 'O+',
					data : [ 4393, 2250, 3717, 6965, 5703, 3199, 5373, 2541 ]
				}, {
					name : 'O-',
					data :  [ 908, 2048, 705, 448, 989, 1816, 2274, 1111 ]
				}, {
					name : 'A+',
					data : [ 2908, 1948, 805, 1248, 989, 816, 1274, 781 ]
				}, {
					name : 'A-',
					data : [ 2496, 2064, 2742, 2851, 2490, 0282, 3121, 4434 ]
				}, {
					name : 'B+',
					data : [ 2908, 948, 805, 1248, 2989, 816, 3174, 811 ]
				}, {
					name : 'B-',
					data : [2534, 3453, 7988, 4213, 1553, 2354, 700, 3227 ]
				}, {
					name : 'AB+',
					data : [ 2908, 4948, 6105, 1048, 4989, 1816, 1274, 911 ]
				}, {
					name : 'AB-',
					data : [ 1744, 1422, 1605, 2977, 2085, 877, 3217, 1387 ]
				} ],

				responsive : {
					rules : [ {
						condition : {
							maxWidth : 500
						},
						chartOptions : {
							legend : {
								layout : 'horizontal',
								align : 'center',
								verticalAlign : 'bottom'
							}
						}
					} ]
				}

			});
		}

		function loadReceiverChart() {
			Highcharts.chart('receiverChart', {
				chart : {
					height : 500,
					type : 'column',
				},
				title : {
					style : {
						color : '#FFFFFFF',
					},
					text : 'Number of Receiver , 2018'
				},

				subtitle : {
					style : {
						color : '#FFFFFFF',
					},
					text : 'Source:blood-life'
				},

				yAxis : {

					title : {
						text : 'Quantity of blood in litres',
						style : {
							color : '#FFFFFFF',
						}
					},
					labels : {
						style : {
							color : 'white'
						}
					}
				},
				xAxis : {
					categories : [ 'January', 'February', 'March', 'April',
							'May', 'June', 'July', 'August' ],
					labels : {
						style : {
							color : 'white'
						}
					}
				},
				legend : {
					layout : 'vertical',
					align : 'right',
					verticalAlign : 'middle',
					padding : 3,
					itemMarginTop : 5,
					itemMarginBottom : 5,
					itemStyle : {
						color : '#FFFFFFF',
						fontWeight : 'bold',

					}

				},
				tooltip : {

					style : {
						color : '#FFFFFFF',
						fontSize : '14px'

					}
				},

				plotOptions : {
					series : {
						label : {

							connectorAllowed : false
						}
					}
				},

				series : [ {
					name : 'O+',
					data : [ 4393, 2250, 3717, 6965, 5703, 3199, 5373, 2541 ]
				}, {
					name : 'O-',
					data : [ 2496, 2064, 2742, 2851, 2490, 0282, 3121, 4434 ]
				}, {
					name : 'A+',
					data : [ 1744, 1422, 1605, 2977, 2085, 877, 3217, 1387 ]
				}, {
					name : 'A-',
					data : [ 2534, 3453, 7988, 4213, 1553, 2354, 700, 3227 ]
				}, {
					name : 'B+',
					data : [ 2908, 4948, 6105, 1048, 4989, 1816, 1274, 911 ]
				}, {
					name : 'B-',
					data : [ 908, 2048, 705, 448, 989, 1816, 2274, 1111 ]
				}, {
					name : 'AB+',
					data : [ 2908, 948, 805, 1248, 2989, 816, 3174, 811 ]
				}, {
					name : 'AB-',
					data : [ 2908, 1948, 805, 1248, 989, 816, 1274, 781 ]
				} ],

				responsive : {
					rules : [ {
						condition : {
							maxWidth : 500
						},
						chartOptions : {
							legend : {
								layout : 'horizontal',
								align : 'center',
								verticalAlign : 'bottom'
							}
						}
					} ]
				}

			});
		}

		function loadBloodChart() {
			Highcharts.setOptions({
				colors : Highcharts.map(Highcharts.getOptions().colors,
						function(color) {
							return {
								radialGradient : {
									cx : 0.5,
									cy : 0.3,
									r : 0.7
								},
								stops : [
										[ 0, color ],
										[
												1,
												Highcharts.Color(color)
														.brighten(-0.3).get(
																'rgb') ] // darken
								]
							};
						})
			});

			// Build the chart
			chart = Highcharts
					.chart(
							'bloodChart',
							{
								chart : {
									height : 500,
									plotBackgroundColor : null,
									plotBorderWidth : null,
									plotShadow : false,
									type : 'pie',
									style : {
										fontFamily : 'serif'
									}
								},
								title : {
									style : {
										color : '#FFFFFFF',
									},
									text : 'Quantity of blood in May, 2019'
								},
								tooltip : {
									pointFormat : '<b>{series.name} : {point.percentage:.1f}%</b>',
									style : {
										color : '#FFFFFFF',
										fontSize : '14px'

									}
								},
								plotOptions : {
									pie : {
										allowPointSelect : true,
										cursor : 'pointer',
										dataLabels : {
											enabled : true,
											format : '<b>{point.name}</b> : {point.percentage:.1f} %',
											style : {
												color : (Highcharts.theme)
														|| 'white',
												fontWeight : 'bold',
												fontSize : '18px'
											},
											connectorColor : 'silver'
										}
									}
								},
								series : [ {
									name : 'Share',
									data : [ {
										name : 'O+',
										y : 40
									}, {
										name : 'O-',
										y : 20
									}, {
										name : 'A+',
										y : 15
									}, {
										name : 'A-',
										y : 5
									}, {
										name : 'B+',
										y : 4
									}, {
										name : 'AB+',
										y : 6
									}, {
										name : 'AB-',
										y : 7
									}, {
										name : 'B-',
										y : 3
									}

									]
								} ]
							});

		}

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
		
		function addMonthsYears(){
			var months = ['January','February','March','April','May', 'June', 'July','August','September','October','November', 'December'];
			var years = ['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019'];
			var optionsMonths = "";
			var optionsYears = "";
			$('#selectYearBlood').html("");
			$('#selectMonthBlood').html("");
			$('#selectYearReceiver').html("");
			$('#selectMonthReceiver').html("");
			$('#selectYearDonor').html("");
			$('#selectMonthDonor').html("");
			for (var i = 0; i < months.length; i++) {
				optionsMonths += '<option value='+months[i]+'> ' + months[i];
				optionsMonths += '</option>';
			}
			
			
			for (var i = 0; i < years.length; i++) {
				optionsYears += '<option value='+years[i]+'> ' + years[i];
				optionsYears += '</option>';
			}
			$('#selectYearReceiver').append(optionsYears)
			$('#selectMonthReceiver').append(optionsMonths);
			$('#selectYearDonor').append(optionsYears);
			$('#selectMonthDonor').append(optionsMonths);
			$('#selectYearBlood').append(optionsYears);
			$('#selectMonthBlood').append(optionsMonths);
		}
		

		$("#addDonor").click(function() {
			$("#addDonorModal").modal('show');
		})
	</script>
</body>
</html>