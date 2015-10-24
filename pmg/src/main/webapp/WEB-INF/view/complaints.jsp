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

<!--jQuery Vdo and Audio Player-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/jplayer/skin/blue.monday/jplayer.blue.monday.css">

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
		<div class="page-title z-depth-1">
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
			<div class="title card-header blue white-text z-depth-1">
				<h5>
					<b>Complaints--Report--Abuse</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>
			<div class="content">

				<!-- Dropdown Trigger -->
				<div class="row">
					<div class="col s6 l6 order-status-select">
						<h5>
							<b>Complaint Status </b>
						</h5>
						<select name="order-status">
							<option value="All" selected>All</option>
							<option value="Online">Open</option>
							<option value="Accept">Accepted</option>
							<option value="Reject">Rejected</option>
						</select>
					</div>

				</div>




				<!-- BEGIN DATATABLE 1 -->

				<div class="row">
					<div class="col l12">
						<div class="table-responsive">
							<table id="datatable1" class="table table-bordered">
								<thead class="blue white-text">
									<tr>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Reporting Date"
											style="width: 15%" style="width: 5%">Reporting Date</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Abuser ID" style="width: 25%">A-Hole's
											ID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Victim's ID" style="width: 15%"
											style="width: 12%">Victim's ID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Victim's Link ID"
											style="width: 15%" style="width: 7%">Victim's LID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Complaint (reason)"
											style="width: 15%" style="width: 5%">Complaint ID</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Video Evidence"
											style="width: 15%" style="width: 5%">Evidence</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Reply To Victim"
											style="width: 15%" style="width: 5%">Acknowledge</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Action Taken"
											style="width: 15%" style="width: 5%">Action</th>
										<th class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Guilty A-Hole's Account Ban"
											style="width: 15%">Account Ban</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="center">03/03/2015</td>
										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger"
											href="#kaspers">Kaspers</a> <!-- Modal Structure -->
											<div id="kaspers" class="modal-fx blue white-text">
												<h1>A-Hole's Overview</h1>
												<hr class="white">
												<div class="media">
													<div class="media-body">
														<h3 class="media-heading">Name: Amit Kumar</h3>
														<p></p>
														<h4>Email: amit.kumar@gmail.com</h4>
														<p></p>
														<p></p>
														<h4>Joining Date: 01/04/2015</h4>
														<p></p>
														<p></p>
														<h4>Total EST Earnings: $250</h4>
														<p></p>
														<p></p>
														<h4>Rank: Bolt</h4>
														<p></p>
														<p></p>
														<h4>TTI: 50Hrs.</h4>
														<p></p>
														<p></p>
														<h4>
															Appreciation Gained: 67 <em
																class="fa fa-star fa-sm yellow-text text-warning inbox-mail-starred"></em>
														</h4>
														<p></p>
														<p></p>
														<h4>Total No. Complaints: 47</h4>
														<p></p>
														<p></p>
														<h4>Complaints Rejected: 7</h4>
														<p></p>
													</div>
												</div>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>
										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger"
											href="#Alanwatts">Alanwatts</a> <!-- Modal Structure -->
											<div id="Alanwatts" class="modal-fx blue white-text">
												<h1>Victim's Overview</h1>
												<hr class="white">
												<div class="media">
													<div class="media-body">
														<h3 class="media-heading">Name: Alan Watts</h3>
														<p></p>
														<h4>Email: Alan.watts@gmail.com</h4>
														<p></p>
														<p></p>
														<h4>Joining Date: 05/03/2015</h4>
														<p></p>
														<p></p>
														<h4>Total EST Earnings: $150</h4>
														<p></p>
														<p></p>
														<h4>Rank: rabbit</h4>
														<p></p>
														<p></p>
														<h4>TTI: 40Hrs.</h4>
														<p></p>
														<p></p>
														<h4>
															Appreciation Gained: 47 <em
																class="fa fa-star fa-sm yellow-text text-warning inbox-mail-starred"></em>
														</h4>
														<p></p>
														<p></p>
														<h4>Total No. Complaints: 37</h4>
														<p></p>
														<p></p>
														<h4>Complaints Rejected: 8</h4>
														<p></p>
													</div>
												</div>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>


										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger"
											href="#Victim-URL">#453615</a> <!-- Modal Structure -->
											<div id="Victim-URL" class="modal-f blue white-text">
												<h2>Victim's URL</h2>
												<hr class="white">
												<ul>
													<li style="font-size: 1.3em" class="center">http://www.alan.com/health-tips/weight-loss-program.php</li>
												</ul>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>
										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger"
											href="#complaintID">#653215</a> <!-- Modal Structure -->
											<div id="complaintID" class="modal-f blue white-text">
												<h2>Complaint Detail</h2>
												<hr class="white">
												<ul>
													<li class="center">Voilation of Rule of Enagement buy
														user:kaspers. The user spent less than 2mins on my link
														before clicking on ad link</li>
												</ul>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>

										</td>



										<td class="center">
											<!-- Modal Trigger --> <a class="modal-trigger"
											href="#pending-clicks"><i
												class="icon mdi-av-play-circle-outline fsize"></i></a> <!-- Modal Structure -->
											<div id="pending-clicks" class="modal blue white-text">
												<h3>Play The Evidence</h3>
												<hr class="white">
												<!--video Players-->
												<div class="row">
													<div class="col l12">
														<div id="jppmgtainer_1"
															class="jp-video jp-video-360p z-depth-2">
															<div class="jp-type-single">
																<div id="jquery_jplayer_1" class="jp-jplayer"
																	style="width: 100%; height: 260px;">
																	<img id="jp_poster_0"
																		style="width: 100%; height: 260px; display: none;">
																	<object id="jp_flash_0" name="jp_flash_0"
																		data="js/jplayer/js/Jplayer.swf"
																		type="application/x-shockwave-flash" width="1"
																		height="1" tabindex="-1">
																		<param name="flashvars"
																			value="jQuery=jQuery&amp;id=jquery_jplayer_1&amp;vol=0.8&amp;muted=false">
																		<param name="allowscriptaccess" value="always">
																		<param name="bgcolor" value="#000000">
																		<param name="wmode" value="opaque">
																	</object>
																</div>
																<div class="jp-gui">
																	<div class="jp-video-play" style="display: none;">
																		<a href="javascript:;" class="jp-video-play-icon"
																			tabindex="1">play</a>
																	</div>
																	<div class="jp-interface">
																		<div class="jp-progress">
																			<div class="jp-seek-bar" style="width: 0%;">
																				<div class="jp-play-bar" style="width: 0%;"></div>
																			</div>
																		</div>
																		<div class="jp-current-time">00:00</div>
																		<div class="jp-duration">00:00</div>
																		<div class="jp-controls-holder">
																			<ul class="jp-controls">
																				<li><a href="javascript:;" class="jp-play"
																					tabindex="1">play</a></li>
																				<li><a href="javascript:;" class="jp-pause"
																					tabindex="1" style="display: none;">pause</a></li>
																				<li><a href="javascript:;" class="jp-stop"
																					tabindex="1">stop</a></li>
																				<li><a href="javascript:;" class="jp-mute"
																					tabindex="1" title="mute">mute</a></li>
																				<li><a href="javascript:;" class="jp-unmute"
																					tabindex="1" title="unmute" style="display: none;">unmute</a></li>
																				<li><a href="javascript:;"
																					class="jp-volume-max" tabindex="1"
																					title="max volume">max volume</a></li>
																			</ul>
																			<div class="jp-volume-bar">
																				<div class="jp-volume-bar-value" style="width: 80%;">
																				</div>
																			</div>
																			<ul class="jp-toggles">
																				<li><a href="javascript:;"
																					class="jp-full-screen" tabindex="1"
																					title="full screen">full screen</a></li>
																				<li><a href="javascript:;"
																					class="jp-restore-screen" tabindex="1"
																					title="restore screen" style="display: none;">restore
																						screen</a></li>
																				<li><a href="javascript:;" class="jp-repeat"
																					tabindex="1" title="repeat">repeat</a></li>
																				<li><a href="javascript:;"
																					class="jp-repeat-off" tabindex="1"
																					title="repeat off" style="display: none;">repeat
																						off</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
																<div class="jp-no-solution" style="display: none;">
																	<span>Update Required</span> To play the media you will
																	need to either update your browser to a recent version
																	or update your <a
																		href="http://get.adobe.com/flashplayer/"
																		target="_blank">Flash plugin</a>.
																</div>
															</div>
														</div>
													</div>
												</div>


												<!--/video Players-->
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-blue white blue-text btn btn-small modal-action modal-close">OK!
														| GOT TI</a>
													<!--After Clicking the button it does as it suggest and also should send Urgent notification saying he/she will neither recieve nor his/her links will be broadcasted to the PMG community until pending links are clicked  -->

												</div>

											</div>
											</div>
											</div>

										</td>




										<td><input class="d-green" name="radios1" type="radio"
											id="Accept" /> <label for="Accept"
											class="tooltipped green-text" data-position="left"
											data-delay="50" data-tooltip="Accepted"> Accept</label> <input
											class="d-red" name="radios1" type="radio" id="Reject" /> <label
											for="Reject" class="tooltipped red-text" data-position="left"
											data-delay="50" data-tooltip="Rejected"> Reject</label></td>

										<td class="center">
											<!-- Modal Trigger --> <a
											class="waves-effect waves-light modal-trigger" href="#WSB">W/B
										</a> <!-- Modal Structure -->
											<div id="WSB" class="modal-fx white blue-text">
												<h2>Action Taken</h2>
												<hr class="line">

												<table class="table centered flat white blue-text">
													<thead>
														<tr style="border-color: #fff;">
															<th>Warning I</th>
															<th class="orange-text">Warning II</th>
															<th class="red-text">Final-Warning</th>

														</tr>
													</thead>
													<tbody>
														<tr>
															<th class="center"><input type="checkbox"
																id="warning"> <label
																style="border: 1px solid: #FD5959;" for="warning"></label>
															</th>
															<th class="center"><input type="checkbox"
																id="warning1"> <label for="warning1"></label></th>
															<th class="center"><input type="checkbox"
																id="warning2"> <label for="warning2"></label></th>
														</tr>
													</tbody>
												</table>
												<div class="action-bar">
													<a href="#"
														class="waves-effect waves-light blue white-text btn btn-small modal-action modal-close">OK
														| GOT IT!</a>
												</div>
											</div>
										</td>


										<td class="center tooltipped" data-position="top"
											data-delay="50" data-tooltip="Check to Blacklist Account">
											<input type="checkbox" id="checkbox1"> <label
											for="checkbox1"></label>
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
									<li class="warning confirm right">
										<button class="btn waves-effect waves-light ban  tooltipped"
											data-position="top" data-delay="50"
											data-tooltip="Bann Selected Users" type="submit"
											name="action">
											Bann <i class="fa fa-ban right"></i>
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
		&copy; 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.
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

	<!-- Data table-->

	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/DemoTableDynamic.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/core/DataTables/js/extensions/ColVis/js/dataTables.colVis.min.js"></script>
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

	<!-- jQuery audio VDO player  -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jplayer/js/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jplayer/jplayer.init.js"></script>

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
			
				// ban
document.querySelector('ul.note li.warning.confirm button.ban').onclick = function(){
	swal({
		title: "Are you sure Master?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Banned!", "The User has been Banned successfully!", "success");
	});
};

        </script>

</body>

</html>