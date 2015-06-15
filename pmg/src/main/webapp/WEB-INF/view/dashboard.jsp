<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/progress1.css">

<!-- Vendor CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/animo/animate+animo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/csspinner/csspinner.min.css">
<!-- START Page Custom CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/js/css3clock/css/style.css">
<!-- END Page Custom CSS-->
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/css/jquery.dataTables.css">
<!-- App CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/app.css">
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
		<jsp:include page="headersandsidebars.jsp">
			<jsp:param name="user" value="${user}"></jsp:param>
		</jsp:include>
		<!-- START Main section-->
		<section>
			<!-- START Page content-->
			<section class="main-content">
				<!-- START Secondary Widgets-->
				<div class="row">
					<div class="col-md-6">
						<!-- START widget-->
						<div data-toggle="play-animation" data-play="fadeInLeft"
							data-offset="0" data-delay="1400" class="panel widget">
							<div class="panel-body">
								<div class="text-right text-muted">
									<em class="fa fa-bullseye fa-2x"></em>
								</div>
								<h3 class="mt0 simple-header">My Link's Status</h3>

								<p class="text-muted">
									<b>Links Clicked</b>
								</p>

								<div class="progress progress-striped progress-sm">
									<div id="pb-01" role="progressbar" aria-valuenow="80"
										aria-valuemin="0" aria-valuemax="100"
										class="progress-bar progress-bar-success">
										<span class="sr-only">80% Complete</span>
									</div>
								</div>
								<p></p>
								<p class="text-muted">
									<b>Self Pending Verification</b>
								</p>
								<div class="progress progress-striped progress-sm">
									<div id="pb-02" role="progressbar" aria-valuenow="80"
										aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
										class="progress-bar progress-bar-success">
										<span class="sr-only">80% Complete</span>
									</div>
								</div>
								<p></p>
								<p class="text-muted">
									<b>Self Verified</b>
								</p>
								<div class="progress progress-striped progress-sm">
									<div id="pb-03" role="progressbar" aria-valuenow="80"
										aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
										class="progress-bar progress-bar-info">
										<span class="sr-only">80% Complete</span>
									</div>
								</div>

							</div>
						</div>
						<!-- END widget-->
					</div>
					<div class="col-md-6">
						<!-- START widget-->
						<div data-toggle="play-animation" data-play="fadeInLeft"
							data-offset="0" data-delay="1400" class="panel widget">
							<div class="panel-body">
								<div class="text-right text-muted">
									<em class="fa fa-puzzle-piece fa-2x"></em>
								</div>
								<h3 class="mt0 simple-header">Other's Link Status</h3>

								<p class="text-muted">
									<b>Links Served</b>
								</p>
								<div class="progress progress-striped progress-sm">
									<div id="pb-04" role="progressbar" aria-valuenow="80"
										aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
										class="progress-bar progress-bar-success">
										<span class="sr-only">80% Complete</span>
									</div>
								</div>
								<p></p>
								<p class="text-muted">
									<b>Links Approved</b>
								</p>
								<div class="progress progress-striped progress-sm">
									<div id="pb-05" role="progressbar" aria-valuenow="80"
										aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
										class="progress-bar progress-bar-success">
										<span class="sr-only">80% Complete</span>
									</div>
								</div>
								<p></p>
								<p class="text-muted">
									<b>Disapproved Links</b>
								</p>
								<div class="progress progress-striped progress-sm">
									<div id="pb-06" role="progressbar" aria-valuenow="80"
										aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
										class="progress-bar progress-bar-danger">
										<span class="sr-only">80% Complete</span>
									</div>
								</div>

							</div>
						</div>
						<!-- END widget-->
					</div>
				</div>

				<!-- END Secondary Widgets-->

				<!-- START row-->
				<div class="row">
					<div data-toggle="portlet" class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>My Links</b> <a href="javascript:void(0);"
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
									<table id="myLinksTable"
										class="table table-bordered table-hover">
										<thead>
											<tr>
												<th style="width: 3%">Sr. No.</th>
												<th style="width: 10%">Submission Date</th>
												<th style="width: 15%">URL</th>
												<th style="width: 25%">Total Clicks</th>
												<th style="width: 7%">Days</th>
												<th style="width: 5%">Active</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-lg-6">
											<p class="padding padding-right">
												<button onclick="editMyLinks()"
													class="btn btn-labeled btn-success pull-right">
													<span class="btn-label"><i class="fa fa-check"></i>
													</span>Change Status
												</button>
											</p>
										</div>
									</div>
								</div>

							</div>
							<!-- END table-responsive-->
						</div>
					</div>
				</div>
				<!-- END row-->
				<!-- START row-->
				<div class="row">
					<div data-toggle="portlet" class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading portlet-handler">
								<a href="#" data-perform="panel-dismiss" data-toggle="tooltip"
									title="Close Panel" class="pull-right"> <em
									class="fa fa-times"></em>
								</a> <a href="#" data-perform="panel-collapse" data-toggle="tooltip"
									title="Collapse Panel" class="pull-right"> <em
									class="fa fa-minus"></em>
								</a> <a href="#" data-perform="panel-refresh"
									data-spinner="traditional" data-toggle="tooltip"
									title="Refresh Panel" class="pull-right"> <em
									class="fa fa-refresh"></em>
								</a>
								<div class="panel-title">
									<b>Work Progress</b>
								</div>
							</div>
							<div class="panel-collapse">
								<div class="panel-body">
									<div style="height: 250px;"
										data-source="server/chart-data.php?type=line"
										class="chart-line flot-chart"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END row-->
				<!-- START panel-->
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>Top 10 Contributors</b> <a href="#"
							data-perform="panel-dismiss" data-toggle="tooltip"
							title="Close Panel" class="pull-right"> <em
							class="fa fa-times"></em>
						</a> <a href="#" data-perform="panel-collapse" data-toggle="tooltip"
							title="Collapse Panel" class="pull-right"> <em
							class="fa fa-minus"></em>
						</a>
					</div>
					<!-- START table-responsive-->
					<div class="table-responsive">
						<table id="topContributors"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>Contributor's Details</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
					<!-- END table-responsive-->
					<div class="panel-footer">
						<div class="row">
							<div class="col-lg-12">
								<button type="button"
									class="btn btn-labeled btn-success pull-right">
									<span class="btn-label"><i class="fa fa-check"></i> </span>Send
									My Appreciation
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- END panel-->
				<div class="row">
					<div class="col-lg-12">
						<!-- START panel-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>Top Link's Juice Status</b> <a href="javascript:void(0);"
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
									<table id="luvTable"
										class="table table-striped table-bordered table-hover">
										<thead>
											<tr class="info">
												<th style="width: 3%">Sr. No.</th>
												<th style="width: 10%">Submission Date</th>
												<th style="width: 15%">Username</th>
												<th style="width: 25%">Money URLs</th>
												<th style="width: 7%">Total Clicks</th>
												<th style="width: 5%">Days</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END table-responsive-->
						</div>
						<!-- END panel-->
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
	<!-- START Page Custom Script-->
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8"
		src="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/js/jquery.dataTables.js"></script>
	<!--clock init-->
	<script
		src="${pageContext.request.contextPath}/static/js/css3clock/js/css3clock.js"></script>
	<!--  Flot Charts-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/flot/jquery.flot.time.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/flot/jquery.flot.categories.min.js"></script>
	<!-- END Page Custom Script-->
	<!-- App Main-->
	<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
	<script type="text/javascript">
		getMyLinks();
		getTopContributors();
		getTopUsers();
		getNoOfNotification();
		getLinkStatus();
		getTopLinks();
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#myLinksTable').DataTable();
			$('#luvTable').DataTable();
		});
	</script>
	<!-- END Scripts-->
</body>

</html>