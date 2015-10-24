<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<!-- WeatherIcons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/weatherIcons/css/weather-icons.min.css" />

<!-- Rickshaw -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.css" />




<!-- nvd3 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.css" />

<!-- Google Prettify -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.css" />

<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->

<!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/static/assets/core/html5shiv/html5shiv.min.js"></script>
  <![endif]-->
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
				<jsp:include page="header.jsp"/>
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
				<a id="step1"
					class="mail-compose-btn btn-floating btn-extra waves-effect waves-light red z-depth-4-hover chat-toggle tooltipped"
					data-tooltip="Chat with US" data-position="left"> <i
					class="fa fa-comments"></i>
				</a>
			</div>
		</div>
		<!-- /Breadcrumb -->

		<div class="card  z-depth-3-hover col s12">
			<div class="title card-header z-depth-1  blue white-text txt-weight">
				<h5>
					<b>Notification Table </b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>
			<div class="content">

				<!-- Date -->
				<div class="row blue-text txt-weight">
					<div class="col s3 l3 ">
						<h5>
							<b>Select Period </b>
						</h5>
					</div>
					<div class="col s3 l3 ">
						<div class="input-field">
							<input class="datepicker" id="From_date" type="date"> <label
								for="From_date">Date From</label>
						</div>
					</div>
					<div class="col s3 l3 ">
						<div class="input-field">
							<input class="datepicker" id="To_date" type="date"> <label
								for="To_date">Date To</label>
						</div>
					</div>
					<div class="col s3 l3 center">
						<div class="btn-group">
							<ul class="note">
								<li class="success">
									<button
										class="white-text waves-effect btn btn-small waves-light tooltipped"
										data-position="top" data-delay="50"
										data-tooltip="Sort By Date" type="submit">Sort</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Date -->

				<!-- BEGIN DATATABLE 1 -->

				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table id="datatable1" class="table table-bordered z-depth-1">
								<thead class="txt-weight blue white-text ">
									<tr>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Notified On" style="width: 5%">Date</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50"
											data-tooltip="Click to See the Complete Notification"
											style="width: 15%">Title</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Alert Color" style="width: 15%">Alert
											Type</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Notification Send Count"
											style="width: 8%">Count</th>

									</tr>
								</thead>
								<tbody class="txt-weight">
									<tr>
										<td class="center txt-weight">03/12/2015</td>
										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger" href="#title">Ex:
												Pending clicks, Timely clicks etc </a> <!-- Modal Structure -->
											<div id="title" class="modal-fx blue white-text lighten-1">
												<h3>Notification Body</h3>
												<hr class="white">
												<u>Small Description</u>
												<p>
													<i>The Good</i> <br>The iPhone 6 delivers a spacious,
													crisp 4.7-inch screen, improved wireless speeds, better
													camera autofocus, and bumped-up storage capacities to 128GB
													at the top end. iOS remains a top-notch mobile operating
													system with an excellent app selection, and Apple Pay is a
													smooth, secure payment system.
												</p>
												<p>
													<i>The Bad</i> <br>Battery life isn't much better than
													last year's iPhone 5S. An even larger screen could have
													been squeezed into the same housing.
												</p>
												<p>
													<i>The Bottom Line</i> <br>The iPhone 6 is an
													exceptional phone in nearly every way except its average
													battery life: it's thin and fast with a spacious screen and
													the smoothest payment system we've seen. It's the best
													overall phone of 2014.
												</p>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>
										<td class="center">
											<p class="txt-weight">Normal</p>
											<p class="orange-text txt-weight">Warning</p>
											<p class="green-text txt-weight">Success</p>
											<p class="red-text txt-weight">Danger</p>
										</td>
										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger"
											href="#E-mail">4 </a> <!-- Modal Structure -->
											<div id="E-mail" class="modal-fx blue white-text lighten-1">
												<h4>Notifications Received On</h4>
												<hr class="white">
												<ul>
													<li style="font-size: 1.3em" class="center">01/05/2015</li>
													<li style="font-size: 1.3em" class="center">05/05/2015</li>
													<li style="font-size: 1.3em" class="center">07/05/2015</li>
													<li style="font-size: 1.3em" class="center">10/05/2015</li>
												</ul>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn-flat modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>
									</tr>
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
	<!-- DEMO [REMOVE IT ON PRODUCTION] -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/_demo.js"></script>

	<!-- build:js ../../assets/core/js/script.js -->
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

	<!-- Simple Weather -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/simpleWeather/jquery.simpleWeather.min.js"></script>

	<!-- Sparkline -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/sparkline/jquery.sparkline.min.js"></script>

	<!-- Flot -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.time.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.pie.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.tooltip.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.categories.min.js"></script>

	<!-- d3 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/d3/d3.min.js"></script>

	<!-- nvd3 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.js"></script>

	<!-- Rickshaw -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.js"></script>

	<!-- Google Prettify -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.js"></script>

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


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!-- MarkItUp -->
	<script
		src="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/set.js"
		type="text/javascript"></script>
	<link
		href="${pageContext.request.contextPath}/static/assets/core/markitup/skins/pmg/style.css"
		rel="stylesheet" type="text/css" />
	<link
		href="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/style.css"
		rel="stylesheet" type="text/css" />

	<script>
		// elevator.
		var elementButton = document.querySelector('footer');
		var elevator = new Elevator({
			element : elementButton,
			mainAudio : '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
			endAudio : '../.././music/ding.mp3'
		});
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