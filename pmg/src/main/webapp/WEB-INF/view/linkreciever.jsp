<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	page session="true"%>
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
	href="${pageContext.request.contextPath}/fonts/Chant/chant.css" charset="utf-8" />

<!--Alert-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

<!--Drop-->
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
			<ul>
				<li class="waves-effect waves-light"><a>Bolt &ensp; 67 <i
						class="fa fa-star yellow-text"></i></a></li>
				<li class="waves-effect waves-light"><a class="tooltipped"
					data-position="buttom" data-delay="50"
					data-tooltip="Notification / Messages"><i class="fa fa-bell"></i><sup
						class="badge red white-text">1</sup></a></li>
				<li class="user"><a id="step4" class="dropdown-button"
					href="#!" data-activates="user-dropdown"> <img
						src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe"
						class="circle">John Doe<i
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
						<li><a href="/sign-in.html"><i
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
		<div class="nano z-depth-2">
			<div class="nano-content">
				<ul>
					<li class="txt-weight blue-text label center">Menu</li>
					<p></p>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip="Account Set-Up"><a href="account-setup.html"
						class="waves-effect waves-blue"><i
							class="mdi mdi-action-settings"></i> Account Set-Up</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip="Dashboard"><a href="player-dash.html"
						class="waves-effect waves-blue"><i
							class="mdi mdi-action-dashboard"></i> Dashboard</a></li>
					<li><a class="yay-sub-toggle waves-effect waves-blue"><i
							class="mdi mdi-action-wallet-travel"></i> Work Place<span
							class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
						<ul class="tooltipped" data-position="top" data-delay="50"
							data-tooltip="  Work Place">
							<li><a href="player-lb.html" class="waves-effect waves-blue">
									Link Broadcastor <span class="yellow badge new"></span>
							</a></li>
							<li><a href="player-lr.html" class="waves-effect waves-blue">
									Link Reciever</a></li>
							<li><a href="player-lv.html" class="waves-effect waves-blue">
									Link Verifier</a></li>
						</ul></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip="  My Links N Clicks Status"><a
						href="linksnclicks-status.html" class="waves-effect waves-blue"><i
							class="fa fa-link"></i> Links N Clicks</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip="  Contributor's Details"><a
						href="contributors.html" class="waves-effect waves-blue"><i
							class="mdi mdi-editor-insert-emoticon"></i> Contributors</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip=" Link Uniqueness Value (LUV)"><a
						href="player-luv.html" class="waves-effect waves-blue"><i
							class="mdi mdi-action-assessment"></i> Link Uniqueness Value</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip=" My Complaints History"><a
						href="player-ch.html" class="waves-effect waves-red"><i
							class="mdi  mdi-action-history"></i> Complaints History</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip=" Notification History"><a href="notify.html"
						class="waves-effect waves-yellow"><i
							class="ion-android-notifications"></i> Notification</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip=" Frequently Asked Questions"><a
						href="FAQs.html" class="waves-effect waves-yellow"><i
							class="fa fa-question-circle"></i> FAQs</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip=" Resources & Sucess Tips"><a
						href="resources&success-tips.html"
						class="waves-effect waves-yellow"><i
							class="mdi mdi-action-thumb-up"></i> Resources & Sucess Tips</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip=" ProMaGizmo | PMG ~~ Intro "><a
						href="pmg-intro.html" class="waves-effect waves-yellow"><i
							class="ion-monitor"></i> PMG Intro</a></li>
					<li class="tooltipped" data-position="right" data-delay="50"
						data-tooltip="Buy NOW"><a href="buy-now.html"
						class="waves-effect waves-yellow"><i
							class="mdi mdi-editor-attach-money"></i> Buy Now</a></li>
				</ul>
			</div>
		</div>
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
					<li>Username has pinged you. Why dont you click on their
						link(s) before your 48hrs window closes!!</li>
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
			<div class="title blue white-text card-header z-depth-1">
				<h5>
					<b> Link Receiver</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>
			<div class="content">
				<p>
					<font color="black">Hi Player!! Welcome to PMG's Link
						Receiver. This is where you give back to the ecosystem. This is
						where you make your valuable contribution. Click on the links that
						you have received and help others realize their dreams. Just keep
						PMG's RoE in mind.</font>
				</p>

				<!-- BEGIN DATATABLE 1 -->
<form action="linkreciever?verify=true" method="post">
				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table id="datatable1" class="table table-bordered">
								<thead class="blue white-text">
									<tr>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Recieving Date"
											style="width: 10%">Date</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Broadcaster's Username"
											style="width: 10%">Username</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="URL's ID" style="width: 10%">LID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Enter Visited Ad page URL">Ad
											URL</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Upload Video for verification">Upload</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50"
											data-tooltip="Check and Send for Verification "
											style="width: 5%">Check</th>
									</tr>
								</thead>
								<tbody>
									<tr>
									
									<td class="center txt-weight">02/05/2015</td>
									
									<td class="center txt-weight"><c:if test="${posteduser.username !=null }">
											<c:out value="${posteduser.username}" />
											<input type="hidden" value="${posteduser.username}" name="posteduser"/>
										</c:if></td>
									<td class="center txt-weight"><c:if test="${link.lid !=null }">
											<c:out value="${link.lid}" />
											<input type="hidden" value="${link.lid}" name="lid"/>
										</c:if></td>
									<td><div class="input-field">
											<input id="input_text" type="text" class="validate">
											<label for="input_text" class="">Enter Visited Ad
												page URL</label>
										</div></td>
									<td>
										<form action="/file-upload" class="dropzone" id="my-dropzone"></form> 
									</td>
									<td class="center"><input type="checkbox" id="check1" />
										<label for="check1"></label></td>
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
					<div class="col s6 l6">
							<ul class="note">
								<li class="warning confirm right">
								<input type="submit" class="btn waves-effect lb waves-light tooltipped"
										data-position="left" data-delay="50"
										data-tooltip="Broadcast My Selected Link to Other Players" value="Plz Verify" />
								</li>
							</ul>
						</div>
				</form>
				<!--end .row -->
				<!-- Modal Trigger -->
				<div class="row">
					<div class="col s6 l6">
						<a class="waves-effect waves-light btn modal-trigger tooltipped"
							data-position="right" data-delay="50"
							data-tooltip="Click To Lodge Complaint" href="#Complaint">Something
							Fishy<i class="fa fa-thumbs-down right"></i>
						</a>




						<!-- Modal Structure -->
						<div id="Complaint" class="card modal-f blue white-text">
							<h3 class="center">Lodge Complaint</h3>
							<hr class="white">
							<p>Contributor's ID</p>
							<div class="input-field">
								<i class="ion-android-hand prefix"></i> <input
									id="input_text_icon" type="text"
									style="border-bottom: 1px solid #FAF8F8;" class="validate"
									disabled> <label for="input_text_icon"><span
									class="white-text">Kaspers</span></label>
							</div>

							<p>Affected URL</p>
							<div class="input-field">
								<i class="fa fa-sitemap prefix"></i> <input id="input_text_icon"
									type="text" style="border-bottom: 1px solid #FAF8F8;"
									class="validate" disabled> <label for="input_text_icon"><span
									class="white-text">abc.com/xzy.html</span></label>
							</div>

							<p>Date</p>
							<div class="input-field">
								<i class="fa fa-calendar prefix"></i> <input
									id="input_text_icon" type="text"
									style="border-bottom: 1px solid #FAF8F8;" class="validate"
									disabled> <label for="input_text_icon"><span
									class="white-text">04/Apr/2015</span></label>
							</div>

							<div class="row">
								<div class="col s12 l3">

									<div class="white-text input-field">
										<i class="fa fa-upload prefix"></i> <label class="white-text">
											Upload Evidence</label>
									</div>

								</div>
								<form></form>
								<div class="col s12 l9 blue-text">
									<form action="dropzone.php" class="dropzone" id="my-dropzone"></form>
								</div>
							</div>

							<div class="row white-text">
								<div class="col s12 l3">
									<div class="white-text input-field">
										<i class="ion-sad prefix"></i> <label class="white-text">
											Complaint</label>
									</div>
								</div>
								<div class="col s12 l9">

									<textarea id="ckeditor1" name="product-description">
                <u>Small Description</u>
                <p>
											<i>The Good</i>
                  <br>The iPhone 6 delivers a spacious, crisp 4.7-inch screen, improved wireless speeds, better camera autofocus, and bumped-up storage capacities to 128GB at the top end. iOS remains a top-notch mobile operating system with an excellent app
                  selection, and Apple Pay is a smooth, secure payment system.
                </p>
                <p>
											<i>The Bad</i>
                  <br>Battery life isn't much better than last year's iPhone 5S. An even larger screen could have been squeezed into the same housing.
                </p>
                <p>
											<i>The Bottom Line</i>
                  <br>The iPhone 6 is an exceptional phone in nearly every way except its average battery life: it's thin and fast with a spacious screen and the smoothest payment system we've seen. It's the best overall phone of 2014.
                </p>
              </textarea>

								</div>
							</div>


							<div class="row">
								<div class="col s12 l12">
									<ul class="note">
										<li class="warning confirm right">
											<button
												class="btn waves-effect waves-blue white blue-text modal-close tooltipped"
												data-position="left" data-delay="50"
												data-tooltip="Delete Selected FAQ" type="submit"
												name="action">
												Lodge Complaint <i class="fa fa-bomb right"></i>
											</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				<!-- 	<div class="col s6 l6">
						<ul class="note">
							<a
								class="success vfy waves-effect waves-light btn right  tooltipped"
								data-position="left" data-delay="50"
								data-tooltip="Send The Link 
(s) for Verification">PLz
								Verify!! <i class="mdi-content-send right"></i>
							</a>
						</ul>

					</div> -->
				</div>

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
							<img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
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
								<img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe"
									class="circle photo">Hi! I am good!
							</div>

							<div class="clear"></div>

							<div class="from-me">
								Glad to see you :) <br>This long text is intended to show
								how the chat will display it.
							</div>

							<div class="clear"></div>

							<div class="from-them">
								<img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe"
									class="circle photo">Also, we will send the longest word
								to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
							</div>

							<div class="date">Friday, Mar 10, 5:07 pm</div>

							<div class="from-me">Hi again!</div>

							<div class="clear"></div>

							<div class="from-them">
								<img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe"
									class="circle photo">Hi! Glad to see you.
							</div>

							<div class="clear"></div>

							<div class="from-me">I want to add you in my Facebook.</div>

							<div class="clear"></div>

							<div class="from-me">Can you give me your page?</div>

							<div class="clear"></div>

							<div class="from-them">
								<img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe"
									class="circle photo">I do not use Facebook. But you can
								follow me in Twitter.
							</div>

							<div class="clear"></div>

							<div class="from-me">It's good idea!</div>

							<div class="clear"></div>

							<div class="from-them">
								<img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe"
									class="circle photo">You can find me here - <a
									href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
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


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!-- Data table-->
	<script src="${pageContext.request.contextPath}/static/assets/core/DataTables/DemoTableDynamic.js"></script>
	<script src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/extensions/ColVis/js/dataTables.colVis.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/extensions/TableTools/js/dataTables.tableTools.min.js"></script>

	<!--Drop-->
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
	<!--CKEditor-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/ckeditor/ckeditor.js"></script>
	<script>
    CKEDITOR.inline( 'ckeditor1' );
  </script>
	<!-- /Init CKEditor -->
	<!-- endbuild -->
	<script>
            // elevator.
            var elementButton = document.querySelector('footer');
            var elevator = new Elevator({
                element: elementButton,
                mainAudio: '/./music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '/./music/ding.mp3'
            });
			
						// Complaint
document.querySelector('ul.note li.warning.confirm button').onclick = function(){
	swal({
		title: "Are you sure?",
		text: "False Complaint Will Go Against You!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Disapproved!", "Your Complaint has been successfully Lodged!", "success");
	});
};

		// Verify
			document.querySelector('ul.note a.success.vfy').onclick = function(){
		swal({ 
		title:  "Well Done Username",
		text: "Links are send for Verification Successfully !!!",
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