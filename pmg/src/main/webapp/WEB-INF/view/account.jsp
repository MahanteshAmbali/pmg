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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ProMaGizmo | PMG</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--font-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css"
	charset="utf-8" />

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

<!-- Clock -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/jquery-clockpicker/jquery-clockpicker.min.css">

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
			<ul>
				<li class="waves-effect waves-light"><a>Bolt &ensp; 67 <i
						class="fa fa-star yellow-text"></i></a></li>
				<li class="waves-effect waves-light"><a class="tooltipped"
					data-position="buttom" data-delay="50"
					data-tooltip="Notification / Messages"><i class="fa fa-bell"></i><sup
						class="badge red white-text">1</sup></a></li>
				<li class="user"><a id="step4" class="dropdown-button"
					href="#!" data-activates="user-dropdown"> <img
						src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
						alt="John Doe" class="circle">John Doe<i
						class="mdi-navigation-expand-more right"></i>
				</a>
					<ul id="user-dropdown" class="dropdown-content">
						<li id="step3"><a href="profile.html"><i
								class="fa fa-user"></i> Profile</a></li>
						<li><a href="notify.html"><i class="fa fa-envelope"></i>
								Notification <span class="badge new">2</span></a></li>
						<li><a href="account-setup.html"><i class="fa fa-cogs"></i>
								Settings</a></li>
						<li><a href="lock.html"><i class="mdi mdi-action-lock"></i>
								Lock Account</a></li>
						<li class="divider"></li>
						<li><a
							href="${pageContext.request.contextPath}/static/sign-in.html"><i
								class="mdi-action-settings-power"></i> Logout</a></li>
					</ul></li>
			</ul>
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
		<div class="page-title z-depth-1">
			<div id="nt-title-container">
				<ul id="nt-title">
					<li>A powerful, flexible and animated vertical news ticker
						plugin.</li>
					<li>Provides hight flexibility thanks to numerous callbacks &
						methods.</li>
					<li>Fully customizable to every kind of vertical scrolling
						need.</li>
					<li>Light-weight and optimized JQuery plugin.</li>
				</ul>
			</div>
			<div class="col s12 m3 l2 right-align">
				<a
					class="mail-compose-btn btn-floating btn-extra waves-effect waves-light red z-depth-4-hover chat-toggle tooltipped"
					data-tooltip="Chat with US" data-position="left"> <i
					class="fa fa-comments"></i>
				</a>
			</div>
		</div>
		<sf:form action="accountsetup" method="post" modelAttribute="account">
		
			<!-- /Breadcrumb -->
			<div class="card z-depth-2 col s12">
				<div class="title blue white-text z-depth-1">
					<h5>
						<b> Account Setup</b>
					</h5>
					<a class="minimize" href="#"> <i
						class="mdi-navigation-expand-less"></i>
					</a>
				</div>

				<div class="content blue-text">
					<p>
					<h4 class="txt-weight">This is where you can let PMG know more
						about you. Take time to understand this page and fill in the
						details carefully.</h4>
					</p>
					<br></br>
					<!-- Domain Name -->
					<div class="row no-margin-top">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text txt-weight"> Domain Name
							</label>
						</div>
						<div class="col s12 l3">

							<!-- <div class="input-field">
				<input id="input_disabled" type="text" class="validate" disabled>
				<label class="txt-weight" for="input_disabled">abc.com</label>
				</div> -->
							<div class="input-field">
								<input id="domain" name="domain" type="text"> 
								<label
									class="txt-weight" for="abc.coms">
									<c:if test="${account.domain !=null }">
										<c:out value="${account.domain}" />
											<input type="hidden" value="${account.domain}" name="domain"/>
									</c:if>
								</label>
							</div>
						</div>
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text txt-weight"> Links
								Submitted </label>
						</div>
						<div class="col s12 l3">

							<div class="input-field">
								<input id="linksSubmitted" name="linksSubmitted" type="text" class="validate">
								<label class="txt-weight" for="input_disabled"><c:if test="${account.linksSubmitted !=null }">
										<c:out value="${account.linksSubmitted}" />
											<input type="hidden" value="${account.linksSubmitted}" name="linksSubmitted"/>
									</c:if></label>
							</div>
						</div>
					</div>
					<!-- /Domain Name -->
					<!-- /Links Submitted -->
					<div class="row">
						<div class="col s12 l12">
							<li class="divider line"></li>
						</div>
					</div>
					<!--   Time -->
					<div class="row no-margin-top txt-weight">
						<div class="col s3 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text"> Best Time (to Send n
								Receive) </label>
						</div>
						<div class="input-field col s3 l3">
								<input id="bestTime" name="bestTime" type="text" class="clockpicker">
								<label class="txt-weight" for="input_disabled"><c:if test="${account.bestTime !=null }">
										<c:out value="${account.bestTime}" />
											<input type="hidden" value="${account.bestTime}" name="bestTime"/>
									</c:if></label>
							</div>
							
							<div class="input-field col s3 l3">
								<input id="bestTime" name="bestTime" type="text" class="clockpicker">
								<label class="txt-weight" for="input_disabled"><c:if test="${account.bestTime !=null }">
										<c:out value="${account.bestTime}" />
											<input type="hidden" value="${account.bestTime}" name="bestTime"/>
									</c:if></label>
							</div>
						
						
						<div class="col s3 l3 center">
							<div class="btn-group">
								<ul class="note">
									<a
										class="warning confirm bt waves-effect waves-light tooltipped"
										data-position="top" data-delay="50" data-tooltip="Intimate US"><i
										class="mdi-content-add-box msize"></i></a>
									<a
										class="right waves-effect red-text waves-light modal-trigger tooltipped"
										data-position="top" data-delay="50" data-tooltip="Delete"
										href="#BT"><i class="mdi-action-delete msize"></i></a>
									<div id="BT" class="modal-f blue-text center white lighten-1">
										<h3>Best Time Details</h3>
										<hr class="line">
										<div class="table-responsive">
											<table class="table centered ">
												<thead>
													<tr>
														<th>Select</th>
														<th>Date</th>
														<th>From</th>
														<th>TO</th>
														<th>Days</th>
														<th>Duration</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input id="days" name="days" type="checkbox" id="checkbox1" /> <label
															for="checkbox1"></label></td>
														<td>14/02/2015</td>
														<td>08:10 AM</td>
														<td>08:10 PM</td>
														<td>M.T.Th</td>
														<td>One Week</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="row">
											<div class="col s12 l12">
												<ul class="note">
													<li class="warning confirm right">
														<button
															class="btn dbt waves-effect waves-light btn white-text blue modal-action modal-close tooltipped"
															data-position="top" data-delay="50"
															data-tooltip="Delete Selected" type="submit"
															name="action">
															Delete <i class="fa fa-bomb right"></i>
														</button>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</ul>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col s12 l3">
							<label class="setting-title blue-text"> <b>Select
									Days</b>
							</label>
						</div>
						<div class="col s12 l9">
							<div class="col s2 l2">
								<input type="checkbox" id="mon" name="days" value="Monday" /> <label class="blue-text "
									for="mon">Monday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="tues" name="days" value="Tuesday"  /> <label class="blue-text "
									for="tues">Tuesday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="wed" name="days" value="Wednesday"  /> <label class="blue-text "
									for="wed">Wednesday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="thu" name="days" value="Thursday"  /> <label class="blue-text "
									for="thu">Thursday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="fri" name="days" value="Friday"  /> <label class="blue-text "
									for="fri">Friday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="sat" name="days" value="Saturday"  /> <label class="orange-text "
									for="sat">Saturday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="sun" name="days" value="Sunday"  /> <label class="orange-text "
									for="sun">Sunday</label>
							</div>

						</div>
					</div>
					<div class="row">
						<div class="col s3 l3">
							<h5>
								<b>Duration</b>
							</h5>
						</div>
						<div class="col s8 l8 order-status-select">

							<select name="duration">
								<option value="no" selected>None</option>
								<option value="7">One Week</option>
								<option value="14">Two Weeks</option>
								<option value="21">Three Weeks</option>
								<option value="28">Four Weeks</option>
								<option value="30">One Month</option>
							</select>
						</div>
					</div>
					<!-- /  Time -->
					<div class="row">
						<div class="col s12 l12">
							<li class="divider line"></li>
						</div>
					</div>
					<!-- LB rate -->
					<div class="row no-margin-top txt-weight">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text"> Select Daily Link
								Broadcasting Rate </label>
						</div>
						<div class="col s12 l9 txt-weight">

							<p class="range-field tooltipped" data-position="buttom"
								data-delay="50"
								data-tooltip=" Drag to Select. It is Recommended that you should broadcast 10% of your traffic">
								<input type="range" min="0" max="100" name="dailyBroadcastingRate" />
							</p>
						</div>
					</div>
					<!-- /LB Rate -->
					<div class="row">
						<div class="col s12 l12">
							<li class="divider line"></li>
						</div>
					</div>
					<!--   Vacation -->
					<div class="row no-margin-top txt-weight">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text"> Vacation (Don't Send n
								Recieve) </label>
						</div>
						<div class="col s12 l3">

							<div class="input-field">
								<input class="datepicker" id="input_date" type="date" name="vacation"> <label
									clASS="txt-weight" for="input_date">From</label>
							</div>
						</div>

						<div class="col s12 l3">
							<div class="input-field">
								<input class="datepicker" id="input_date" type="date" name="vacation"> <label
									for="input_date">To</label>
							</div>
						</div>
						<div class="col s12 l3 center">
							<div class="btn-group">
								<ul class="note">
									<a class="success va waves-effect waves-light tooltipped"
										data-position="top" data-delay="50" data-tooltip="Intimate US"><i
										class="mdi-content-add-box msize"></i></a>
									<a
										class=" right waves-effect red-text waves-light modal-trigger tooltipped"
										data-position="top" data-delay="50" data-tooltip="Delete"
										href="#vd"><i class="mdi-action-delete msize"></i></a>
									<div id="vd" class="modal-fx blue-text center white lighten-1">
										<h3>Vacation Details</h3>
										<hr class="line">
										<div class="table-responsive">
											<table class="table centered ">
												<thead>
													<tr>
														<th>Select</th>
														<th>Date</th>
														<th>From</th>
														<th>TO</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="checkbox" id="holi1" /> <label
															for="holi1"></label></td>
														<td>14/02/2015</td>
														<td>14/02/2015</td>
														<td>28/02/2015</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="row">
											<div class="col s12 l12">
												<ul class="note">
													<li class="warning confirm right">
														<button
															class="btn dv waves-effect waves-light btn white-text blue modal-close tooltipped"
															data-position="top" data-delay="50"
															data-tooltip="Delete Selected" type="submit"
															name="action">
															Delete <i class="fa fa-bomb right"></i>
														</button>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</ul>
							</div>
						</div>
					</div>
					<!-- /  Vacation -->



					<hr class="line">
					<!-- Domain Name -->
					<div class="row no-margin-top">
						<div class="col s12 l4">
							<label for="ecommerce-product-name"
								class="setting-title blue-text txt-weight"> Est.
								Earnings Per Click </label>
						</div>
						<div class="col s12 l5">

							<div class="input-field">
								<input id="est" type="text" class="validate" name="earnings"> <label
									class="txt-weight" for="est">Enter the Amount</label>
							</div>
						</div>
						<div class="col s12 l3 center">
							<div class="btn-group">
								<ul class="note">
									<a
										class="success epc waves-effect  green-text waves-light tooltipped"
										data-position="top" data-delay="50"
										data-tooltip="Add Est. Earnings Per Click"><i
										class="fa fa-dollar msize"></i></a>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Domain Name -->
					<hr class="line">
					<!-- Domain Name -->
					<div class="row no-margin-top">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text txt-weight"> Earnings
								Target </label>
						</div>
						<div class="col s12 l3">

							<div class="input-field">
								<input id="week" type="text" class="validate"> <label
									class="blue-text txt-weight" for="week">Weekly Target</label>
							</div>
						</div>
						<div class="col s12 l3">

							<div class="input-field">
								<input id="month" type="text" class="validate"> <label
									class="blue-text txt-weight" for="month">Monthly Target</label>
							</div>
						</div>
						<div class="col s12 l3 center">
							<div class="btn-group">
								<ul class="note">
									<a class="success et waves-effect waves-light tooltipped"
										data-position="top" data-delay="50"
										data-tooltip="Add Earnings Target"><i
										class="mdi-content-add-box msize"></i></a>
									<a
										class="right waves-effect red-text waves-light  modal-trigger tooltipped"
										data-position="top" data-delay="50" data-tooltip="Edit"
										href="#ETD"><i class="mdi-action-delete msize"></i></a>
									<div id="ETD" class="modal-fx blue-text center white lighten-1">
										<h3>Earnings Target Details</h3>
										<hr class="line">
										<div class="table-responsive">
											<table class="table centered ">
												<thead>
													<tr>
														<th>Date</th>
														<th>Weekly</th>
														<th>Monthly</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>14/02/2015</td>
														<td><i class="fa fa-dollar">500 </td>
														<td><i class="fa fa-dollar">1500 </td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="row">
											<div class="col s12 l12">
												<ul class="note">
													<li class="warning confirm right">
														<button
															class="btn det waves-effect waves-light btn white-text blue modal-close tooltipped"
															data-position="top" data-delay="50"
															data-tooltip="Delete Selected" type="submit"
															name="action">
															Delete <i class="fa fa-bomb right"></i>
														</button>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</ul>
							</div>
						</div>
						<!-- /Domain Name -->
						<!-- </form> -->
					</div>
				</div>
			</div>
			<input type="submit" value="Setup">
		</sf:form>


	</section>
	<!-- /Main Content -->


	<!-- Chat.chat-light - light color scheme-->
	<div class="chat z-depth-4-hover">
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
						<span class="label">Share - Suggest</span>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
								alt="Felecia Castro" class="circle photo">
							<div class="name">The CREATOR</div>
							<div class="status">Chat with Me!</div>
							<div class="online">
								<i class="ongreen-text fa fa-circle"></i>
							</div>
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

	<!-- Clock -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery-clockpicker/jquery-clockpicker.min.js"></script>

	<!-- Materialize -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!-- endbuild -->
	<script>
		// elevator.
		var elementButton = document.querySelector('footer');
		var elevator = new Elevator({
			element : elementButton,
			mainAudio : '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
			endAudio : '../.././music/ding.mp3'
		});

		// Best Time
		document.querySelector('ul.note a.warning.confirm.bt').onclick = function() {
			swal({
				title : "Are you sure Username?",
				text : "Cancel & Recheck If Not Sure!",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : '#DD6B55',
				confirmButtonText : 'Yes, Do IT!',
				closeOnConfirm : false
			}, function() {
				swal("!", "Your Time to Send & Recieve is Successfully !",
						"success");
			});
		};
		// Delete Best Time
		document.querySelector('ul.note li.warning.confirm button.dbt').onclick = function() {
			swal({
				title : "Are you sure Username?",
				text : "Cancel & Recheck If Not Sure!",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : '#DD6B55',
				confirmButtonText : 'Yes, Do IT!',
				closeOnConfirm : false
			}, function() {
				swal("Deleted!", "Selected Best Time!", "success");
			});
		};
		// Vacation add
		document.querySelector('ul.note a.success.va').onclick = function() {
			swal({
				title : "Well Done Username",
				text : "Your Time to Send n Recieve is Submitted Successfully !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

			});
		};
		// Delete Vacation
		document.querySelector('ul.note li.warning.confirm button.dv').onclick = function() {
			swal({
				title : "Are you sure Username?",
				text : "Cancel & Recheck If Not Sure!",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : '#DD6B55',
				confirmButtonText : 'Yes, Do IT!',
				closeOnConfirm : false
			}, function() {
				swal("Deleted!", "You Are NOW LIVE!", "success");
			});
		};
		// Add Est. Earnings per Click
		document.querySelector('ul.note a.success.epc').onclick = function() {
			swal({
				title : "Well Done Username",
				text : "Your Est. Earnings per Click is Added Successfully !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

			});
		};
		// Add Earnings Target
		document.querySelector('ul.note a.success.et').onclick = function() {
			swal({
				title : "Well Done Username",
				text : "Your Earnings Target are Added Successfully !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

			});
		};
		// Delete Earnings Target
		document.querySelector('ul.note li.warning.confirm button.det').onclick = function() {
			swal({
				title : "Are you sure Username?",
				text : "Cancel & Recheck If Not Sure!",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : '#DD6B55',
				confirmButtonText : 'Yes, Do IT!',
				closeOnConfirm : false
			}, function() {
				swal("Deleted!", "Add New Targets!", "success");
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