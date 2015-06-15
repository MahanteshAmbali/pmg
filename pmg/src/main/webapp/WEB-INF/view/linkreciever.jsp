<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	page session="true"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/css/jquery.dataTables.css">
<!-- END Page Custom CSS-->
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
			<jsp:param name="user" value="${user}"></jsp:param></jsp:include>
		<!-- END Main wrapper-->
		<section>
			<!-- START Page content-->
			<section class="main-content">
				<div class="row">
					<div class="col-lg-12">
						<!-- START panel-->
						<div class="panel panel-default">
							<div class="panel-heading"></div>
							<div class="panel-body">
								<!-- Nav tabs -->
								<ul class="nav nav-pills">
									<li><a href="#pending-pills" onclick="getLinkStatus()"
										data-toggle="tab">Pending</a></li>
									<li><a href="#verified-pills" data-toggle="tab">Verified</a>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<div id="home-pills" class="tab-pane fade in active">
										<p></p>
										<div class="table-responsive table-bordered">
											<table id="proofTable"
												class="table table-bordered table-hover simple-header">
												<thead>
													<tr>
														<th style="width: 3%">SNo.</th>
														<th>Username</th>
														<th>URL's TO Visit</th>
														<th>Ralivent Ads List</th>
														<th style="width: 5%">Timer</th>
														<th>Upload</th>
														<th style="width: 5%" class="check-all">
															<div data-toggle="tooltip" data-title="Check All"
																class="checkbox c-checkbox">
																<label> <input type="checkbox"> <span
																	class="fa fa-check"></span>
																</label>
															</div>
														</th>

													</tr>
												</thead>
												<form id="proof" method="post" enctype="multipart/form-data"
													action="${pageContext.request.contextPath}/createproof">
													<tbody>

													</tbody>
												</form>
												<div class="panel-footer">
													<div class="row">
														<div class="col-lg-6">
															<p class="padding padding-right">
																<button onclick="sendProof('proof')"
																	class="btn btn-labeled btn-success pull-right">
																	<span class="btn-label"><i class="fa fa-check"></i>
																	</span>Submit for Verification
																</button>
															</p>
														</div>
													</div>
												</div>
											</table>
										</div>
									</div>
									<div id="pending-pills class="tab-panefade"></div>
									<div id="verified-pills" class="tab-pane fade"></div>
								</div>
								<div class="panel-footer">
									<div class="row"></div>
								</div>
							</div>

						</div>
					</div>
					<!--/.panel-body -->

					<!-- END panel-->
			</section>
			<!-- END Page content-->
		</section>
	</section>
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
	<!-- END Page Custom Script-->
	<!-- App Main-->
	<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/app/js/userajax.js"></script>
	<script type="text/javascript">
		addRows();
		getLinkStatus();
		getTopUsers();
		getNoOfNotification();
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#proofTable').DataTable();
		});
	</script>
	<!-- END Scripts-->
</body>

</html>