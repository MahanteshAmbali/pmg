<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie ie6 lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="ie ie7 lt-ie9 lt-ie8"        lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="ie ie8 lt-ie9"               lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="ie ie9"                      lang="en"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-ie">
<!--<![endif]-->

<head>
<!-- Meta-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<title>ProMaGizmo | Profit Machine Gizmo</title>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/chat.css">
<!-- Vendor CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/animo/animate+animo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/csspinner/csspinner.min.css">
<!-- START Page Custom CSS-->
<!--jQuery Vdo and Audio Player-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/js/jplayer/skin/blue.monday/jplayer.blue.monday.css" />
<!-- Codemirror -->
<!-- END Page Custom CSS-->
<!-- App CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/app.css">
<!-- Rating CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/rating.css">
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/css/jquery.dataTables.css">
<!-- Modernizr JS Script-->
<script
	src="${pageContext.request.contextPath}/static/vendor/modernizr/modernizr.js"
	type="application/javascript"></script>
<!-- FastClick for mobiles-->
<script
	src="${pageContext.request.contextPath}/static/vendor/fastclick/fastclick.js"
	type="application/javascript"></script>

</head>

<body>
	<!-- START Main wrapper-->
	<section class="wrapper">
		<!-- START Main section-->
		<section>
			<!-- START Page content-->
			<section class="main-content">
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>All Users</b> <a href="javascript:void(0);"
								data-perform="panel-dismiss" data-toggle="tooltip" title=""
								class="pull-right" data-original-title="Close Panel"> <em
								class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="countryusersTable"
									class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 5%">Username</th>
											<th style="width: 10%">Email</th>
											<th style="width: 15%">Registered IP</th>
											<th style="width: 15%">Last Access IP</th>
											<th style="width: 5%">Country</th>
											<th style="width: 5%">Broadcast Cap</th>
											<th style="width: 5%">Level</th>
											<th style="width: 5%">Verified Clicks</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
						<!-- END table-responsive-->

					</div>
				</div>

			</section>
			<!-- END Page content-->
		</section>
		<!-- END Main section-->
	</section>
	<!-- END Main wrapper-->
	<!-- START Scripts-->
	<!-- Main vendor Scripts-->

	<script
		src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Plugins-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/chosen/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/slider/js/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/filestyle/bootstrap-filestyle.min.js"></script>
	<!-- Animo-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/animo/animo.min.js"></script>
	<!-- Sparklines-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/sparklines/jquery.sparkline.min.js"></script>
	<!-- Slimscroll-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8"
		src="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/js/jquery.dataTables.js"></script>
	<!-- App Main-->
	<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
	<!-- Ajax -->
	<script
		src="${pageContext.request.contextPath}/static/app/js/adminajax.js"></script>


	<!-- END Scripts-->
</body>

</html>