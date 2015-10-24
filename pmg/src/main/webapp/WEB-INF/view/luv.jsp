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

<!-- nanoScroller -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/nanoScroller/nanoscroller.css" />

<!--Alert-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

<!--Multibar-->
<link rel="stylesheet" type="text/css" href="multipbar.css" />

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
				<a
					class="mail-compose-btn btn-floating btn-extra waves-effect waves-light red z-depth-4-hover chat-toggle tooltipped"
					data-tooltip="Chat with US" data-position="left"> <i
					class="fa fa-comments"></i>
				</a>
			</div>
		</div>
		<!-- /Breadcrumb -->
		<div class="card  z-depth-2 col s12">
			<div class="title blue lighten-1 white-text card-header z-depth-1">
				<h5>
					<b>Player's Link Uniqueness Value</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>
			<div class="content">
				<div class="row">
					<div class="col s3 l3 order-status-select">
						<h5>
							<b>Disable Links </b>
						</h5>
					</div>
					<div class="col s3 l3 order-status-select">
						<h5>
							<b>Reach More Than </b>
						</h5>
						<select name="order-status">
							<option value="none" selected>None</option>
							<option value="60">60 % LUV</option>
							<option value="70">70 % LUV</option>
							<option value="80">80 % LUV</option>
						</select>
					</div>
					<div class="col s3 l3 order-status-select">
						<h5>
							<b>Duration (No. Days) </b>
						</h5>
						<p class="range-field">
							<input type="range" min="7" max="30" value="7" />
						</p>
					</div>
					<div class="col s3 l3">

						<ul class="note">
							<li class="warning confirm right">
								<button
									class="btn btn-small waves-effect waves-light luv white-text blue tooltipped"
									data-position="left" data-delay="50"
									data-tooltip="Disable Links With Poor LUV" type="submit"
									name="action">
									Disable Link <i class="fa fa-bomb right"></i>
								</button>
							</li>
						</ul>
					</div>

				</div>
				<hr class="line">
				<!-- BEGIN DATATABLE 1 -->

				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table id="datatable1" class="table table-bordered">
								<thead class="blue lighten-1 white-text">
									<tr>
										<th class="center" style="width: 15%">Submission Date</th>
										<th class="center">Money URLs</th>
										<th class="center" style="width: 12%">Total Clicks</th>
										<th class="center" style="width: 7%">Days</th>
										<th class="center" style="width: 10%">Uniq Users</th>
										<th class="center">LUV</th>
										<th class="center" style="width: 5%">Status</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>01/02/2015</td>
										<td>http://abc.com/xzy</td>
										<td class="center">500</td>
										<td class="center">10</td>
										<td class="center">30</td>
										<td class="text-center">
											<p style="width: 40%" data-value="40">0%</p> <progress
												max="100" value="40" class="python">
												<div class="progress-bar">
													<span style="width: 20%">40%</span>
												</div>
											</progress>
										</td>
										<td class="text-center">
											<p class="switch">
												<label> <input type="checkbox" checked=""> <span
													class="lever"></span>
												</label>
											</p>
										</td>
									</tr>
									<tr>
										<td>01/02/2015</td>
										<td>http://abc.com/xzy</td>
										<td class="center">600</td>
										<td class="center">20</td>
										<td class="center">60</td>
										<td class="text-center">
											<p style="width: 80%" data-value="80">0%</p> <progress
												max="100" value="80" class="python">
												<div class="progress-bar">
													<span style="width: 20%">80%</span>
												</div>
											</progress>
										</td>


										<td class="text-center">
											<p class="switch">
												<label> <input type="checkbox" checked=""> <span
													class="lever"></span>
												</label>
											</p>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!--end .table-responsive -->
					</div>
					<!--end .col -->
				</div>
				<!--end .row -->
				<!-- END DATATABLE 1 -->




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
						<div class="input-field white-text">
							<i class="mdi-social-public prefix white-text"></i> <input
								class="white-text" id="Search" type="text"> <label
								class="white-text" for="Search">Search Players</label>
						</div>
						<span class="label">Online</span>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
								alt="Felecia Castro" class="circle photo">
							<div class="name">Felecia Castro</div>
							<div class="status">Lorem status</div>
							<div class="online">
								<i class="ongreen-text fa fa-circle"></i>
							</div>
						</div>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user3.jpg"
								alt="Max Brooks" class="circle photo">
							<div class="name">Max Brooks</div>
							<div class="status">Lorem status</div>
							<div class="online">
								<i class="ongreen-text fa fa-circle"></i>
							</div>
						</div>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user4.jpg"
								alt="Patsy Griffin" class="circle photo">

							<div class="name">Patsy Griffin</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="ongreen-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user5.jpg"
								alt="Chloe Morgan" class="circle photo">

							<div class="name">Chloe Morgan</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="ongreen-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user6.jpg"
								alt="Vernon Garrett" class="circle photo">

							<div class="name">Vernon Garrett</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="onongreen-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user7.jpg"
								alt="Greg Mcdonalid" class="circle photo">

							<div class="name">Greg Mcdonalid</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="onongreen-text fa fa-circle"></i>
							</div>
						</div>

						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user8.jpg"
								alt="Christian Jackson" class="circle photo">

							<div class="name">Christian Jackson</div>
							<div class="status">Lorem status</div>

							<div class="online">
								<i class="onongreen-text fa fa-circle"></i>
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


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

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

	<!-- Data table-->
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/DemoTableDynamic.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/extensions/TableTools/js/dataTables.tableTools.min.js"></script>

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
                element: elementButton,
                mainAudio: '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '../.././music/ding.mp3'
            });
			// LUV
document.querySelector('ul.note li.warning.confirm button.luv').onclick = function(){
	swal({
		title: "Are you sure Username?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Disabled!", "Links With Poor LUV are STOPPED!", "success");
	});
};
  </script>
	<script>
    		
    		$(window).load(function(){
	            $('code.language-javascript').mCustomScrollbar();
	        });
            var nt_title = $('#nt-title').newsTicker({
                row_height: 40,
                max_rows: 1,
                duration: 3000,
                pauseOnHover: 1
            });
        </script>

</body>

</html>