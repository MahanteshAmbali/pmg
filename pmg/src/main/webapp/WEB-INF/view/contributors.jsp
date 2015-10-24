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

<!-- IonIcons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />

<!-- FontAwesome -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/font-awesome/css/font-awesome.min.css" />

<!-- Material Design Icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/material-design-icons/css/material-design-icons.min.css" />

<!-- Data table-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/assets/core/dataTables/jquery.dataTables.css" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/assets/core/dataTables/extensions/dataTables.tableTools.css" />
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
			<div class="title blue lighten-2 white-text card-header z-depth-1">
				<h5>
					<b>Contributor's Details</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>
			<div class="content">

				<!-- BEGIN DATATABLE 1 -->

				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table id="datatable1" class="table table-bordered">
								<thead class="white-text blue">
									<tr>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Select to Appriciate More"
											style="width: 5%">Select</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50"
											data-tooltip="Fellow Players contribution in Your SUCCESS">Contributor's
											Details</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50"
											data-tooltip="Previously Expressed Appriciation">Appreciation
											Expressed</th>

									</tr>
								</thead>
								<tbody class="centered">
									<tr>
										<td class="center"><input type="checkbox" id="checkbox2">
											<label for="checkbox2"></label></td>
										<td class="center">
											<!-- Modal Trigger --> <a
											class="waves-effect waves-light modal-trigger" href="#CID">Kaspers</a>

											<!-- Modal Structure -->
											<div id="CID" class="modal-fx blue white-text">
												<h1>Contributor's Details</h1>
												<hr class="white">
												<div class="media">
													<div class="media-body">
														<h3 class="media-heading">Alies: Amit Kumar</h3>
														<p></p>
														<h4>Contributed: $150</h4>
														<p></p>
														<p></p>
														<h4>Total Links Served: 100</h4>
														<p></p>
														<p></p>
														<h4>Total Successful execution: 100%</h4>
														<p></p>
														<p></p>
														<h4>
															Appreciation Gained: 67 <em
																class="fa fa-star fa-sm text-warning inbox-mail-starred yellow-text"></em>
														</h4>
														<p></p>
														<p></p>
													</div>
												</div>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue  white blue-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>


										<td class="center ">
											<!-- Ratings with Stars -->
											<div class="rating ">
												<input type="radio" id="rating-star-5" name="rating-star"
													value="5"> <label class="grey-l"
													for="rating-star-5"><i
													class="mdi mdi-action-star-rate waves-effect waves-light"></i></label>
												<input type="radio" id="rating-star-4" name="rating-star"
													value="4"> <label class="grey-l"
													for="rating-star-4"><i
													class="mdi mdi-action-star-rate waves-effect waves-light"></i></label>
												<input type="radio" id="rating-star-3" name="rating-star"
													value="3"> <label class="grey-l"
													for="rating-star-3"><i
													class="mdi mdi-action-star-rate waves-effect waves-light"></i></label>
												<input type="radio" id="rating-star-2" name="rating-star"
													value="2"> <label class="grey-l"
													for="rating-star-2"><i
													class="mdi mdi-action-star-rate waves-effect waves-light"></i></label>
												<input type="radio" id="rating-star-1" name="rating-star"
													value="1" checked> <label class="grey-l"
													for="rating-star-1"><i
													class="mdi mdi-action-star-rate waves-effect waves-light"></i></label>
											</div> <!-- /Ratings with Stars -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--end .table-responsive -->
						<!-- Textarea with Icon -->
						<!-- /Textarea with Icon -->
						<div class="row">
							<div class="col s12 l12">
								<ul class="note">
									<li class="success right">
										<button class="btn waves-effect am waves-light tooltipped"
											data-position="left" data-delay="50"
											data-tooltip="Express More Appreciation To Selected Contributor (s)"
											type="submit" name="action">
											I Appreciate More <i class="fa fa-smile-o right"></i>
										</button>
									</li>
								</ul>
							</div>
						</div>
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

	<!-- Data table-->
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/DemoTableDynamic.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/dataTables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/dataTables/js/extensions/TableTools/js/dataTables.tableTools.min.js"></script>

	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>

	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>
	<script>

            // elevator.
            var elementButton = document.querySelector('footer');
            var elevator = new Elevator({
                element: elementButton,
                mainAudio: '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '../.././music/ding.mp3'
            });

			// Appriciate More
			document.querySelector('ul.note li.success button.am').onclick = function(){
		swal({ 
		title:  "Great Job Username",
		text: "Successfully Appriciated !!!",
		timer: 3000,
		type: "success",
		showConfirmButton: false
		
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