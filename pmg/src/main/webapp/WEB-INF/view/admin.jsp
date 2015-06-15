<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<jsp:include page="headersandsidebars.jsp">
			<jsp:param name="user" value="${user}"></jsp:param>
		</jsp:include>
		<!-- START aside-->
		<aside class="offsidebar">
			<!-- START Off Sidebar (right)-->
			<nav class="sidebar">
				<ul class="nav">
					<!-- START user info-->
					<li>
						<div class="item">
							<div
								style="background-image: url('${pageContext.request.contextPath}/static/app/img/offsidebar-bg.jpg')"
								class="p-lg">
								<div class="text-center">
									<p>
										<img
											src="${pageContext.request.contextPath}/static/app/img/user/02.jpg"
											style="width: 64px; height: 64px" alt="Image"
											class="img-circle img-thumbnail">
									</p>
									<p class="text-white">
										<strong>Alex</strong>
									</p>
								</div>
							</div>
						</div>
					</li>
					<!-- END user info-->
					<!-- START list title-->

					<li><a href="#" title="My Link's Status"
						data-toggle="collapse-next" class="has-submenu"> <em
							class="fa fa-bullseye"></em> <span class="item-text">My
								Link's Status</span>
					</a> <!-- START SubMenu item-->
						<ul class="nav collapse ">
							<li>
								<div class="p">
									<p>Links Clicked</p>
									<div class="progress progress-striped progress-xs m0">
										<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%;"
											class="progress-bar progress-bar-success">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
								</div>
								<div class="p">
									<p>Pending Links</p>
									<div class="progress progress-striped progress-xs m0">
										<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%;"
											class="progress-bar progress-bar-success">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
								</div>
								<div class="p">
									<p>Self Verified Links</p>
									<div class="progress progress-striped progress-xs m0">
										<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 50%;"
											class="progress-bar progress-bar-success">
											<span class="sr-only">50% Complete</span>
										</div>
									</div>
								</div>

							</li>
						</ul> <!-- END SubMenu item--></li>
					<li><a href="#" title="Other's Link Status"
						data-toggle="collapse-next" class="has-submenu"> <em
							class="fa fa-puzzle-piece"></em> <span class="item-text">Other's
								Link Status</span>
					</a> <!-- START SubMenu item-->
						<ul class="nav collapse ">
							<li>
								<div class="p">
									<p>Links Served</p>
									<div class="progress progress-striped progress-xs m0">
										<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%;"
											class="progress-bar progress-bar-success">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
								</div>
								<div class="p">
									<p>Approved Links</p>
									<div class="progress progress-striped progress-xs m0">
										<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%;"
											class="progress-bar progress-bar-success">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
								</div>
								<div class="p">
									<p>Links DisApproved</p>
									<div class="progress progress-striped progress-xs m0">
										<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 50%;"
											class="progress-bar progress-bar-success">
											<span class="sr-only">50% Complete</span>
										</div>
									</div>
								</div>

							</li>
						</ul> <!-- END SubMenu item--></li>
					<li class="active"><a href="#" title="Top Players"
						data-toggle="collapse-next" class="has-submenu"> <em
							class="fa fa-flash"></em> <span class="item-text">Top
								Players</span>
					</a> <!-- START SubMenu item-->
						<ul class="nav collapse">
							<li><small class="text-muted">ONLINE</small></li>
							<!-- END list title-->
							<li>
								<!-- START User status--> <a href="#" class="media p mt0"> <span
									class="pull-right"> <span
										class="point point-success point-lg"></span>
								</span> <span class="pull-left"> <!-- Contact avatar--> <img
										src="${pageContext.request.contextPath}/static/app/img/user/05.jpg"
										style="width: 40px; height: 40px" alt="Image"
										class="media-object img-circle">
								</span> <!-- Contact info--> <span class="media-body"> <span
										class="media-heading"> <strong class="text-white">Tommy
												Sam</strong> <br> <small class="text-muted">tommy39</small>
									</span>
								</span>
							</a> <!-- END User status--> <!-- START User status--> <a href="#"
								class="media p mt0"> <span class="pull-right"> <span
										class="point point-success point-lg"></span>
								</span> <span class="pull-left"> <!-- Contact avatar--> <img
										src="${pageContext.request.contextPath}/static/app/img/user/06.jpg"
										style="width: 40px; height: 40px" alt="Image"
										class="media-object img-circle">
								</span> <!-- Contact info--> <span class="media-body"> <span
										class="media-heading"> <strong class="text-white">Beverley
												Pierce</strong> <br> <small class="text-muted">be40210</small>
									</span>
								</span>
							</a> <!-- END User status--> <!-- START User status--> <a href="#"
								class="media p mt0"> <span class="pull-right"> <span
										class="point point-danger point-lg"></span>
								</span> <span class="pull-left"> <!-- Contact avatar--> <img
										src="${pageContext.request.contextPath}/static/app/img/user/07.jpg"
										style="width: 40px; height: 40px" alt="Image"
										class="media-object img-circle">
								</span> <!-- Contact info--> <span class="media-body"> <span
										class="media-heading"> <strong class="text-white">Victor
												Long</strong> <br> <small class="text-muted">longlong</small>
									</span>
								</span>
							</a> <!-- END User status--> <!-- START User status--> <a href="#"
								class="media p mt0"> <span class="pull-right"> <span
										class="point point-warning point-lg"></span>
								</span> <span class="pull-left"> <!-- Contact avatar--> <img
										src="${pageContext.request.contextPath}/static/app/img/user/08.jpg"
										style="width: 40px; height: 40px" alt="Image"
										class="media-object img-circle">
								</span> <!-- Contact info--> <span class="media-body"> <span
										class="media-heading"> <strong class="text-white">Danielle
												Berry</strong> <br> <small class="text-muted">hunter49</small>
									</span>
								</span>
							</a> <!-- END User status-->
							</li>
							<!-- START list title-->
							<li class="p"><small class="text-muted">OFFLINE</small></li>
							<!-- END list title-->
							<li>
								<!-- START User status--> <a href="#" class="media p mt0"> <span
									class="pull-right"> <span class="point point-lg"></span>
								</span> <span class="pull-left"> <!-- Contact avatar--> <img
										src="${pageContext.request.contextPath}/static/app/img/user/09.jpg"
										style="width: 40px; height: 40px" alt="Image"
										class="media-object img-circle">
								</span> <!-- Contact info--> <span class="media-body"> <span
										class="media-heading"> <strong class="text-white">Bertha
												Cooper</strong> <br> <small class="text-muted">ber123</small>
									</span>
								</span>
							</a> <!-- END User status--> <!-- START User status--> <a href="#"
								class="media p mt0"> <span class="pull-right"> <span
										class="point point-lg"></span>
								</span> <span class="pull-left"> <!-- Contact avatar--> <img
										src="${pageContext.request.contextPath}/static/app/img/user/10.jpg"
										style="width: 40px; height: 40px" alt="Image"
										class="media-object img-circle">
								</span> <!-- Contact info--> <span class="media-body"> <span
										class="media-heading"> <strong class="text-white">Anne
												Curtis</strong> <br> <small class="text-muted">anni</small>
									</span>
								</span>
							</a> <!-- END User status-->
							</li></li>
					<li>
						<!-- Optional link to list more users--> <a href="#"
						title="See more contacts" class="p"> <strong> <small
								class="text-muted">&hellip;</small>
						</strong>
					</a>
					</li>
				</ul>
			</nav>
			<!-- END Off Sidebar (right)-->
		</aside>
		<!-- END aside-->
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
								<table id="allUsersTable"
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

				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Top Twenty Users - Level: BOLT</b> <a
								href="javascript:void(0);" data-perform="panel-dismiss"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Close Panel"> <em class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="boltTopTwentyUsersTable"
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
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Top Twenty Users - Level: RABBIT</b> <a
								href="javascript:void(0);" data-perform="panel-dismiss"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Close Panel"> <em class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="rabbitTopTwentyUsersTable"
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
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Top Twenty Users - Level: TURTLE</b> <a
								href="javascript:void(0);" data-perform="panel-dismiss"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Close Panel"> <em class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="turtleTopTwentyUsersTable"
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
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Top Twenty Users - Level: SNAIL</b> <a
								href="javascript:void(0);" data-perform="panel-dismiss"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Close Panel"> <em class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="snailTopTwentyUsersTable"
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

				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Online Users</b> <a href="javascript:void(0);"
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
								<table id="onlineUsersTable"
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
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Users Registered Today</b> <a href="javascript:void(0);"
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
								<table id="registeredTodayUsersTable"
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
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Banned Users</b> <a href="javascript:void(0);"
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
								<table id="bannedUsersTable"
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
								<div class="panel-footer">
									<div class="row">
										<div class="col-lg-6">
											<p class="padding padding-right">
												<button onclick="unbanUsers()"
													class="btn btn-labeled btn-success pull-right">
													<span class="btn-label"><i class="fa fa-check"></i>
													</span>UnBAN
												</button>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END table-responsive-->

					</div>
				</div>
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Unresolved Abuse Reports Against Users</b> <a
								href="javascript:void(0);" data-perform="panel-dismiss"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Close Panel"> <em class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="unresolvedReportsTable"
									class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 15%">Page Url</th>
											<th style="width: 7%">Report Against</th>
											<th style="width: 7%">Report By</th>
											<th style="width: 15%">Reason</th>
											<th style="width: 5%">Report Date</th>
											<th style="width: 5%">Evidence</th>
											<th style="width: 5%">BAN</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<div class="panel-footer">
									<div class="row">
										<div class="col-lg-6">
											<p class="padding padding-right">
												<button onclick="banUsers()"
													class="btn btn-labeled btn-success pull-right">
													<span class="btn-label"><i class="fa fa-check"></i>
													</span>BAN
												</button>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END table-responsive-->

					</div>
				</div>
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Resolved Abuse Reports Against Users</b> <a
								href="javascript:void(0);" data-perform="panel-dismiss"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Close Panel"> <em class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="resolvedReportsTable"
									class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 15%">Page Url</th>
											<th style="width: 7%">Report Against</th>
											<th style="width: 7%">Report By</th>
											<th style="width: 15%">Reason</th>
											<th style="width: 5%">Report Date</th>
											<th style="width: 5%">Closure Date</th>
											<th style="width: 5%">Evidence</th>
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

				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Users With Multiple IP</b> <a href="javascript:void(0);"
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
								<table id="multipleIpUsersTable"
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
				<!-- 		<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Multiple IPs for User</b> <a href="javascript:void(0);"
								data-perform="panel-dismiss" data-toggle="tooltip" title=""
								class="pull-right" data-original-title="Close Panel"> <em
								class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="ipTable" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 5%">IP</th>
											<th style="width: 5%">Last Access Time</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div-->
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>FAQs</b> <a href="javascript:void(0);"
								data-perform="panel-dismiss" data-toggle="tooltip" title=""
								class="pull-right" data-original-title="Close Panel"> <em
								class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="faqTable" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 15%">Question</th>
											<th style="width: 20%">Answer</th>
											<th style="width: 5%">Active</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-lg-6">
									<p class="padding padding-right">
										<button onclick="editFaq()"
											class="btn btn-labeled btn-success pull-right">
											<span class="btn-label"><i class="fa fa-check"></i> </span>Change
											Status
										</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<!--		<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Q/A</b> <a href="javascript:void(0);"
								data-perform="panel-dismiss" data-toggle="tooltip" title=""
								class="pull-right" data-original-title="Close Panel"> <em
								class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="quesTable" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 22%">Question</th>
											<th style="width: 10%">Option1</th>
											<th style="width: 10%">Option2</th>
											<th style="width: 10%">Option3</th>
											<th style="width: 10%">Option4</th>
											<th style="width: 10%">Answer</th>
											<th style="width: 5%">Active</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div> -->
					<div class="row">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>Statistics By Country</b> <a href="javascript:void(0);"
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
									<table id="statsByCountryTable"
										class="table table-bordered table-hover">
										<thead>
											<tr>
												<th style="width: 3%">S.No.</th>
												<th style="width: 10%">Code</th>
												<th style="width: 15%">Country Name</th>
												<th style="width: 15%">No. of Users</th>
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

					<div class="row">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>New Notifiction</b> <a href="javascript:void(0);"
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
								<div class="panel panel-default">
									<textarea id="msg" placeholder="notification" rows=5 cols=30></textarea>
									<select onchange="getOption()" id="notif">
										<option selected="selected" value="all">All Users</option>
										<option value="user">Specific Users</option>
										<option value="level">Users on Specific Level</option>
									</select> <input id="username" type="text"> <select
										id="levelSelect">
										<option selected="selected" value="bolt">Bolt</option>
										<option value="rabbit">Rabbit</option>
										<option value="turtle">Turtle</option>
										<option value="snail">Snail</option>
									</select> <input onclick="sendNotification()" type="submit"
										value="Send Notification">
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
	<script>
		$(document).ready(function() {
			getAllMembersData();
			getTopTwentyMembersBolt();
			getTopTwentyMembersRabbit();
			getTopTwentyMembersTurtle();
			getTopTwentyMembersSnail();
			getOnlineMembers();
			getUsersRegisteredToday();
			getBannedMembers();
			getMemberStatsByCountry();
			getMembersWithMultipleIp();
			getReportAbuseOpen();
			getReportAbuseClosed();
			getFAQs();
			$("#username").hide();
			$("#levelSelect").hide();
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#allUsersTable').DataTable();
			$('#boltTopTwentyUsersTable').DataTable();
			$('#rabbitTopTwentyUsersTable').DataTable();
			$('#snailTopTwentyUsersTable').DataTable();
			$('#turtleTopTwentyUsersTable').DataTable();
			$('#multipleIpUsersTable').DataTable();
			$('#bannedUsersTable').DataTable();
			$('#unresolvedReportsTable').DataTable();
			$('#resolvedReportsTable').DataTable();
			$('#faqTable').DataTable();
		});
	</script>
	<script type="text/javascript">
		function getOption() {
			var e = document.getElementById("notif");
			var strUser = e.options[e.selectedIndex].value;
			if (strUser == "user") {
				$("#levelSelect").hide();
				$("#username").show();
			} else if (strUser == "level") {
				$("#username").hide();
				$("#levelSelect").show();
			}

		}
		function sendNotification() {
			var e = document.getElementById("notif");
			var strUser = e.options[e.selectedIndex].value;
			var fd = new FormData();
			fd.append('msg', $("#msg").val());
			if (strUser == "user") {
				fd.append('username', $("#username").val());
			} else if (strUser == "level") {
				var e = document.getElementById("levelSelect");
				var level = e.options[e.selectedIndex].value;
				fd.append('level', level);
			}

			$.ajax({
				url : 'newnotification',
				data : fd,
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(data) {
				},
				error : function(data) {
					alert(data);
				}
			});
		}
	</script>

	<!-- END Scripts-->
</body>

</html>