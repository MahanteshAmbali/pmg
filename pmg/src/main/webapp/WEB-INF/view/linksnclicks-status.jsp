<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<!--[if lt IE 7]>  <html class="lt-ie7"> <![endif]-->
<!--[if IE 7]>     <html class="lt-ie8"> <![endif]-->
<!--[if IE 8]>     <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ProMaGizmo | PMG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--font-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css"
	charset="utf-8" />

<!--Drop-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.css" />


<!--Clock-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/jquery-clockpicker/jquery-clockpicker.min.css">

<!--Alert-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

<!-- nanoScroller -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/nanoScroller/nanoscroller.css" />

<!-- FontAwesome -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/font-awesome/css/font-awesome.min.css" />

<!-- Material Design Icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/material-design-icons/css/material-design-icons.min.css" />

<!-- IonIcons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />

<!-- Data table-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/assets/core/DataTables/jquery.dataTables.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/assets/core/DataTables/extensions/dataTables.colVis.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/assets/core/DataTables/extensions/dataTables.tableTools.css" />
<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->


</head>

<body class="aside-toggled">

	<nav class="navbar-top">
		<!-- START navbar header-->
		<div class="navbar-header">
			<a href="#" class="navbar-brand">
				<div class="brand-logo">ProMaGizmo</div>
			</a>
		</div>
		<!-- END navbar header-->
		<div class="nav-wrapper">

			<!-- Sidebar toggle -->
			<a href="#" class="yay-toggle">
				<div class="burg1"></div>
				<div class="burg2"></div>
				<div class="burg3"></div>
			</a>
			<!-- Sidebar toggle -->

			<!-- Menu -->
			<jsp:include page="header.jsp" />
			<!-- /Menu -->
		</div>
	</nav>
	<!-- /Top Navbar -->

	<aside
		class="yaybar yay-light yay-shrink yay-hide-to-small yay-gestures z-depth-2">
		<div class="top">
			<div>
				<!-- Sidebar toggle -->
				<a href="#" class="yay-toggle">
					<div class="burg1"></div>
					<div class="burg2"></div>
					<div class="burg3"></div>
				</a>
				<!-- Sidebar toggle -->
			</div>
		</div>
		<jsp:include page="left_menu.jsp" />
	</aside>
	<!-- /Yay Sidebar -->

	<!-- Main Content -->
	<section class="content-wrap">
		<!-- Breadcrumb -->

		<!-- /Breadcrumb -->

		<!-- Externilize to File -->
		<div class="card  z-depth-2 col s12">
			<div class="title blue lighten-2 white-text card-header z-depth-1">
				<h5>
					<b>My Links Status</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>

			<div class="content">
				<!-- BEGIN DATATABLE 1 -->
				<div class="row">

					<div class="col s12 l3 order-status-select blue-text">
						<h5>
							<b>My Links Status</b>
						</h5>

					</div>


				</div>

				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table id="tableid" class="table table-bordered ">
								<thead class="blue lighten-2 white-text">
									<tr>

										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="S.No.">#</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Broadcasted On">Date</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="My Link's ID">LID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Broadcasted URL">My URL</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Keyword Used">Keyword Used</th>
										<th style="width: 10%;" class="center tooltipped"
											data-position="top" data-delay="50"
											data-tooltip="My Link's Current Status">Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${links}" var="link" varStatus="counter">
										<tr id="trid" class="item">
											<td class="center">${counter.count}</td>
											<td class="center"><c:out
													value="${link.lastTraveredTime}"></c:out></td>
											<td class="center"><c:out value="${link.lid}"></c:out></td>
											<td class="center"><c:out value="${link.adurl}"></c:out></td>
											<td class="center"><c:out value="${link.keyword}"></c:out></td>
											<td><c:if test="${link.linkstatus !=null}">
													<input id="status" name="status" type="radio" />
													<label class="green-text" data-position="left"
														data-delay="50"> ${link.linkstatus} </label>
												</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!--end .table-responsive -->
						<!-- Textarea with Icon -->
						<!-- /Textarea with Icon -->
					</div>
					<!--end .col -->
				</div>
				<!--end .row -->
			</div>
			<!--end .section-body -->
		</div>

		<!-- Externilize to File -->
		<!--end #content-->
		<div class="card  z-depth-2 col s12">
			<div class="title blue lighten-2 white-text card-header z-depth-1">
				<h5>
					<b>My Clicks Status</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>
			<div class="content">
				<!-- BEGIN DATATABLE 1 -->
				<div class="row">

					<div class="col s12 l3 order-status-select blue-text">
						<h5>
							<b>My Click Status </b>
						</h5>

					</div>


				</div>

				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead class="blue lighten-2 white-text">
									<tr>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="S.No.">#</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="I Clicked On">Date</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Verifier's UID">Owner's ID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50"
											data-tooltip="Verifier's LID(Click For More Details)">LID</th>
										<th style="width: 10%;" class="center tooltipped"
											data-position="top" data-delay="50"
											data-tooltip="My Link's Current Status">Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${myClickStatuslist}" var="myclickstatus"
										varStatus="counter">
										<tr>
											<td class="center">${counter.count}</td>
											<td class="center">${myclickstatus.clickedon}</td>
											<td class="center">${myclickstatus.ownerId}</td>
											<td class="center">
												<!-- Modal Trigger --> <a class="modal-trigger" href="#VUID">${myclickstatus.lid}
											</a> <!-- Modal Structure -->
												<div id="VUID" class="modal-fx blue white-text lighten-1">
													<h4>Verifier's URL</h4>
													<hr class="white">
													<ul>
														<li style="font-size: 1.3em" class="center">${myclickstatus.verifierUrl}</li>
													</ul>
													<div class="action-bar">
														<a href="#"
															class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK
															| GOT IT!</a>
													</div>
												</div>
											</td>
											<td><input class="d-purple" name="state1" type="radio"
												id="p" /> <label for="p" class="tooltipped purple-text"
												data-position="left" data-delay="50"
												data-tooltip="Verification Of This Link Is Pending">
													${myclickstatus.linkstatus} </label></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!--end .table-responsive -->
						<!-- Textarea with Icon -->
						<!-- /Textarea with Icon -->
					</div>
					<!--end .col -->
				</div>
				<!--end .row -->
			</div>
			<!--end .section-body -->
		</div>
		<!--end #content-->


	</section>
	<!-- /Main Content -->

	<!-- Chat.chat-light - light color scheme-->
	<div class="chat">
		<div class="layer-overlay"></div>
		<div class="layer-content">
			<!-- Contacts -->
			<div class="contacts">
				<!-- Top Bar -->
				<div class="topbar">
					<a href="#!" class="text">Chat</a> <a href="#!" class="chat-toggle"><i
						class="mdi-navigation-close"></i></a>
				</div>
				<!-- /Top Bar -->
				<div class="nano">
					<div class="nano-content">
						<span class="label">Online</span>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
								alt="Felecia Castro" class="circle photo">
							<div class="name">Felecia Castro</div>
							<div class="status">Lorem status</div>
							<div class="online">
								<i class="green-text fa fa-circle"></i>
							</div>
						</div>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user3.jpg"
								alt="Max Brooks" class="circle photo">
							<div class="name">Max Brooks</div>
							<div class="status">Lorem status</div>
							<div class="online">
								<i class="green-text fa fa-circle"></i>
							</div>
						</div>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user4.jpg"
								alt="Patsy Griffin" class="circle photo">

							<div class="name">Patsy Griffin</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="green-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user5.jpg"
								alt="Chloe Morgan" class="circle photo">

							<div class="name">Chloe Morgan</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="green-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user6.jpg"
								alt="Vernon Garrett" class="circle photo">

							<div class="name">Vernon Garrett</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="yellow-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user7.jpg"
								alt="Greg Mcdonalid" class="circle photo">

							<div class="name">Greg Mcdonalid</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="yellow-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user8.jpg"
								alt="Christian Jackson" class="circle photo">

							<div class="name">Christian Jackson</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="yellow-text fa fa-circle"></i>
							</div>
						</div>


						<span class="label">Offline</span>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user9.jpg"
								alt="Willie Kelly" class="circle photo">

							<div class="name">Willie Kelly</div>
							<div class="status">Lorem status</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user10.jpg"
								alt="Jenny Phillips" class="circle photo">

							<div class="name">Jenny Phillips</div>
							<div class="status">Lorem status</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user11.jpg"
								alt="Darren Cunningham" class="circle photo">

							<div class="name">Darren Cunningham</div>
							<div class="status">Lorem status</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user12.jpg"
								alt="Sandra Cole" class="circle photo">

							<div class="name">Sandra Cole</div>
							<div class="status">Lorem status</div>
						</div>

					</div>
				</div>
			</div>
			<!-- /Contacts -->

			<!-- Messages -->
			<div class="messages">

				<!-- Top Bar with back link -->
				<div class="topbar">
					<a href="#!" class="chat-toggle"><i
						class="mdi-navigation-close"></i></a> <a href="#!" class="chat-back"><i
						class="mdi-hardware-keyboard-arrow-left"></i> Back</a>
				</div>
				<!-- /Top Bar with back link -->

				<!-- All messages list -->
				<div class="list">
					<div class="nano scroll-bottom">
						<div class="nano-content">

							<div class="date">Monday, Feb 23, 8:23 pm</div>

							<div class="from-me">
								Hi, Felicia. <br>How are you?
							</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">Hi! I am good!
							</div>

							<div class="clear"></div>

							<div class="from-me">
								Glad to see you :) <br>This long text is intended to show
								how the chat will display it.
							</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">Also, we will send
								the longest word to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
							</div>

							<div class="date">Friday, Mar 10, 5:07 pm</div>

							<div class="from-me">Hi again!</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">Hi! Glad to see you.
							</div>

							<div class="clear"></div>

							<div class="from-me">I want to add you in my Facebook.</div>

							<div class="clear"></div>

							<div class="from-me">Can you give me your page?</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">I do not use
								Facebook. But you can follow me in Twitter.
							</div>

							<div class="clear"></div>

							<div class="from-me">It's good idea!</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">You can find me here
								- <a href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
							</div>

						</div>
					</div>
				</div>
				<!-- /All messages list -->

				<!-- Send message -->
				<div class="send">
					<form action="#!">
						<div class="input-field">
							<input id="chat-message" type="text" name="chat-message">
						</div>

						<button class="btn waves-effect z-depth-2">
							<i class="mdi-content-send"></i>
						</button>
					</form>
				</div>
				<!-- /Send message -->

			</div>
			<!-- /Messages -->
		</div>

	</div>
	<!-- /Chat -->



	<footer class="z-depth-3">
		<i class="fa fa-copyright"></i> 2015 <strong>ProMaGizmo | PMG</strong>.
		All rights reserved.
	</footer>

	<!-- jQuery -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

	<!-- jQuery RAF (improved animation performance) -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

	<!-- nanoScroller -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>

	<!-- Materialize -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

	<!-- Sparkline -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/sparkline/jquery.sparkline.min.js"></script>

	<!-- Data table-->
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/DemoTableDynamic.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/extensions/ColVis/js/dataTables.colVis.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/extensions/TableTools/js/dataTables.tableTools.min.js"></script>

	<!-- Sortable -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/sortable/Sortable.min.js"></script>

	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>
	<!-- endbuild -->

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>
	<!--Drop-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.js"></script>

	<!--Clock-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery-clockpicker/jquery-clockpicker.min.js"></script>


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!-- endbuild -->

	<!-- Init CKEditor -->
	<script
		src="${pageContext.request.contextPath}/static/assets/core/ckeditor/ckeditor.js"></script>
	<script>
		CKEDITOR.replace('ckeditor1');
	</script>
	<!-- /Init CKEditor -->
	<script>
		// elevator.
		var elementButton = document.querySelector('footer');
		var elevator = new Elevator({
			element : elementButton,
			mainAudio : '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
			endAudio : '../.././music/ding.mp3'
		});

		// Ping the clicker
		document.querySelector('ul.note a.success.ping').onclick = function() {
			swal({
				title : "Pinging...",
				text : "Successfully Pinged !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

			});
		};
		// Delete Verified Clicks by Others
		document.querySelector('ul.note a.warning.confirm.del').onclick = function() {
			swal({
				title : "Are you sure Username?",
				text : "Cancel & Recheck If Not Sure!",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : '#DD6B55',
				confirmButtonText : 'Yes, Do IT!',
				closeOnConfirm : false
			}, function() {
				swal("Deleted!", "Verified Links are Deleted Successfully!",
						"success");
			});
		};
		// Ping the verifier
		document.querySelector('ul.note a.success.ping1').onclick = function() {
			swal({
				title : "Pinging...",
				text : "Successfully Pinged !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

			});
		};
		// Delete Verified Clicks by Others
		document.querySelector('ul.note a.warning.confirm.del1').onclick = function() {
			swal({
				title : "Are you sure Username?",
				text : "Cancel & Recheck If Not Sure!",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : '#DD6B55',
				confirmButtonText : 'Yes, Do IT!',
				closeOnConfirm : false
			}, function() {
				swal("Deleted!", "Verified Links are Deleted Successfully!",
						"success");
			});
		};
	</script>
	<script>
		$(window).load(function() {
			$('code.language-javascript').mCustomScrollbar();
		});
		var nt_title = $('#nt-title').newsTicker({
			row_height : 40,
			max_rows : 1,
			duration : 3000,
			pauseOnHover : 1
		});
	</script>

</body>

</html>