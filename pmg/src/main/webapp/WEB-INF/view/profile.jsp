<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<!-- DropZone -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.css" />

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

<!-- Date -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pikaday/pikaday.css">

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
		<!-- /Breadcrumb -->
		<div class="row">
			<div class="col s12 m12 l12">
				<div class="card-panel z-depth-2-hover">

					<div class="btn-group right">
						<h5 class="center">Upload Photo</h5>
						<form action="/photo-upload" class="dropzone" id="my-dropzone"></form>
					</div>
					<div class="col s3 m3 l3">
						<div class="photo">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
								alt="Jogh Doe">
						</div>
					</div>
					<div class="col s3 m4 l4">
						<address>
							<h2>Michael Berger</h2>
							<strong>CURRENT LEVEL:</strong> <strong><a
								href="javascript:void(0);"><c:out value="${user.level}" />.</a></strong><br>
							<abbr title="Work email">e-mail:</abbr> <strong><a
								href="mailto:#"><c:out value="${user.email}"></c:out></a></strong><br>
							<abbr title="Estimated Earnings">Estimated Earning: <em
								class="fa fa-dollar"></em>
							</abbr> <strong><a href="javascript:void(0);">2000</a></strong><br>
							<abbr title="Total Links Served">Total Links Served: </abbr> <strong><a
								href="javascript:void(0);">200</a></strong><br> <abbr
								title="Appreciation Gained">Appreciation Gained: </abbr> <strong><a
								href="javascript:void(0);">97</a></strong> <em
								class="fa fa-star fa-sm text-warning inbox-mail-starred"></em> <br>
						</address>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col s7 m7 l7">
				<div class="card z-depth-3-hover">

					<div class="title blue white-text">
						<h3>Edit User Details</h3>
					</div>


					<div class="content">
						<form:form action="edituser" method="post" modelAttribute="user">

							<div class="btn-group right">

								<a
									class="waves-effect waves-light btn btn-small deep-purple z-depth-2 tooltipped"
									data-position="top" data-delay="50"
									data-tooltip="Click To Edit Profile"><i
									class="mdi mdi-editor-mode-edit"></i></a>

							</div>
							<div class="row">
								<div class="col m12 s12">
									<h4>First Name</h4>
									<div class="input-field">
										<i class="fa fa-user prefix"></i> <input id="firstname"
											type="text" name="firstname"> <label for="firstname"><c:if
												test="${user.firstname !=null }">
												<c:out value="${user.firstname }" />
											</c:if></label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col m12 s12">
									<h4>Last Name</h4>
									<div class="input-field">
										<i class="fa fa-user prefix"></i> <input id="lastname"
											type="text" name="lastname"> <label for="lastname"><c:if
												test="${user.lastname !=null }">
												<c:out value="${user.lastname }" />
											</c:if></label>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col m12 s12">
									<h4>Registered E-Mail</h4>
									<div class="input-field">
										<i class="fa fa-envelope prefix"></i> <input id="email"
											type="email" name="email"> <label for="email"><c:if
												test="${user.email !=null }">
												<c:out value="${user.email }" />
											</c:if></label>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col m12 s12">

									<h4>Registered Domain</h4>
									<div class="input-field">
										<i class="mdi mdi-av-web prefix"></i> <input id=domain
											type="text" name="domain"> <label for="domain"><c:if
												test="${user.domain !=null }">
												<c:out value="${user.domain }" />
											</c:if></label>
									</div>
								</div>

							</div>

							<hr>
							<!-- Date -->

							<h4>Date Of Birth</h4>
							<div class="input-field">
								<i class="mdi mdi-action-accessibility prefix"></i> <input
									id="dob" type="text" name="dob"
									data-inputmask="'alias': 'date'"> <label for="dob"><c:if
										test="${user.dob !=null }">
										<c:out value="${user.dob }" />
									</c:if></label>
							</div>
							<!-- /Date -->

							<hr>

							<p>
							<h4>Gender</h4>
							<p></p>
							<input name="pay-type" type="radio" id="male" checked />
							<label class="blue-text" for="male">Male</label>
							<input name="pay-type" type="radio" id="female" />
							<label class="blue-text" for="female">Female</label>
							<input name="pay-type" type="radio" id="other" />
							<label class="blue-text" for="other">Other</label>

							<div class="row">
								<div class="col m12 s12">
									<h4>Country</h4>
									<div class="input-field">
										<i class="fa fa-globe prefix"></i> <input id="country"
											type="text" name="country" disabled> <label
											for="country"><c:if test="${user.country !=null }">
												<c:out value="${user.country }" />
											</c:if></label>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col s6 l6">
									<ul class="note">
										<li class="success">
											<button
												class="btn waves-effect up waves-light white-text blue tooltipped"
												data-position="top" data-delay="50"
												data-tooltip="Update Profile" type="submit" name="action">
												Update</button>
										</li>
									</ul>
								</div>
							</div>
						</form:form>
					</div>


				</div>
			</div>


			<div class="col s15 m5 l5">
				<div class="card z-depth-3-hover">
					<form:form action="changepassword" method="post"
						modelAttribute="user">
						<div class="title blue white-text">
							<h3>Reset Password</h3>
						</div>
						<li class="divider"></li>
						<div class="content">

							<div class="row">
								<div class="col m12 s12">
									<h4>Current Password</h4>
									<div class="input-field">
										<i class="fa fa-user prefix"></i> <input id="c_password"
											type="password" class="validate" name="c_password"> <label
											for="c_password">Current Password</label>
									</div>
								</div>
							</div>
							<hr>

							<div class="row">
								<div class="col m12 s12">
									<h4>New Password</h4>
									<div class="input-field">
										<i class="fa fa-user prefix"></i> <input id="n_password"
											type="password" class="validate" name="n_password"> <label
											for="n_password">New Password</label>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col m12 s12">
									<h4>Re-Type New Password</h4>
									<div class="input-field">
										<i class="fa fa-user prefix"></i> <input id="rn_password"
											type="password" class="validate" name="rn_password" required>
										<label for="rn_password">Re-Type New Password</label>
									</div>
								</div>
							</div>



							<div class="row">
								<div class="col">

									<ul class="note">
										<li class="success">
											<button
												class="btn waves-effect set waves-light white-text blue tooltipped"
												data-position="top" data-delay="50"
												data-tooltip="Reset Password" type="submit" name="action">
												Reset</button>
										</li>
									</ul>

								</div>
							</div>

						</div>
					</form:form>
				</div>
			</div>
		</div>




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
		&copy; 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.
	</footer>

	<!-- jQuery -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

	<!-- jQuery RAF (improved animation performance) -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

	<!-- Date -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pikaday/pikaday.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pikaday/pikaday.jquery.js"></script>

	<!-- nanoScroller -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!-- Materialize -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

	<!-- Sortable -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/sortable/Sortable.min.js"></script>

	<!-- Masked Input -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery-input-mask/jquery.inputmask.bundle.min.js"></script>

	<!-- DropZone -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.js"></script>


	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>

	<!-- endbuild -->
	<script>
		// elevator.
		var elementButton = document.querySelector('footer');
		var elevator = new Elevator({
			element : elementButton,
			mainAudio : '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
			endAudio : '../.././music/ding.mp3'
		});
		// update
		document.querySelector('ul.note li.success button.up').onclick = function() {
			swal({
				title : "Well Done Username",
				text : "Your Profile is Successfully Updated !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

			});
		};
		// reset
		document.querySelector('ul.note li.success button.set').onclick = function() {
			swal({
				title : "Well Done Username",
				text : "Password Successfully Updated !!!",
				timer : 3000,
				type : "success",
				showConfirmButton : false

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