<!-- START Top Navbar-->
<nav role="navigation"
	class="navbar navbar-default navbar-top navbar-fixed-top">
	<!-- START navbar header-->
	<div class="navbar-header">
		<a href="#" class="navbar-brand">
			<div class="brand-logo">ProMaGizmo</div>
			<div class="brand-logo-collapsed">PMG</div>
		</a>
	</div>
	<!-- END navbar header-->
	<!-- START Nav wrapper-->
	<div class="nav-wrapper">
		<!-- START Left navbar-->
		<ul class="nav navbar-nav">
			<li><a href="#" data-toggle="aside"> <em
					class="fa fa-align-left"></em>
			</a></li>
		</ul>
		<!-- END Left navbar-->
		<!-- START Right Navbar-->
		<ul class="nav navbar-nav navbar-right">
			<!-- START Messages menu (dropdown-list)-->
			<li class="dropdown dropdown-list"><a href="#"
				data-toggle="dropdown" data-play="bounceIn" class="dropdown-toggle">
					<em class="fa fa-comments"></em>
					<div class="label label-danger">0</div>
			</a> <!-- START Dropdown menu-->
				<ul class="dropdown-menu">
					<li class="dropdown-menu-header">Chat Wid Admin</li>
					<!--chat start-->
					<section class="panel">
						<div class="panel-body">
							<div class="chat-conversation">
								<ul id="chat" class="conversation-list">
								</ul>
								<div class="row">
									<div class="col-xs-9">
										<input type="text" class="form-control chat-input"
											placeholder="Enter your text">
									</div>
									<div class="col-xs-3 chat-send">
										<button type="submit" class="btn btn-default">Send</button>
									</div>
								</div>
							</div>
						</div>
					</section></li>
		</ul>
		<!--chat end--!>
   		<!-- END Messages menu (dropdown-list)-->
		<!-- START Alert menu-->
		<li class="dropdown dropdown-list"><a href="#"
			data-toggle="dropdown" onclick="getAllNotificationText()"
			data-play="bounceIn" class="dropdown-toggle"> <em
				class="fa fa-bell"></em>
				<div id="notificationbellheader" class="label label-info">z</div>
		</a> <!-- START Dropdown menu-->
			<ul class="dropdown-menu">
				<li>
					<!-- START list group-->
					<div id="notificationText" class="list-group"></div> <!-- END list group-->
				</li>
			</ul> <!-- END Dropdown menu--></li>
		<!-- END Alert menu-->
		<!-- START User menu-->
		<li class="dropdown"><a href="#" data-toggle="dropdown"
			data-play="bounceIn" class="dropdown-toggle"> <em
				class="fa fa-user"></em>
		</a> <!-- START Dropdown menu-->
			<ul class="dropdown-menu">


				<li><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
				<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
			</ul> <!-- END Dropdown menu--></li>
		<!-- END User menu-->
		<!-- START Contacts button-->
		<li><a href="#" data-toggle="offsidebar"> <em
				class="fa fa-align-right"></em>
		</a></li>
		<!-- END Contacts menu-->
		</ul>
		<!-- END Right Navbar-->
	</div>
	<!-- END Nav wrapper-->
	<!-- START Search form-->
	<form role="search" class="navbar-form">
		<div class="form-group has-feedback">
			<input type="text" placeholder="Type and hit Enter.."
				class="form-control">
			<div data-toggle="navbar-search-dismiss"
				class="fa fa-times form-control-feedback"></div>
		</div>
		<button type="submit" class="hidden btn btn-default">Submit</button>
	</form>
	<!-- END Search form-->
</nav>
<!-- END Top Navbar-->
<!-- START aside-->
<aside class="aside">
	<!-- START Sidebar (left)-->
	<nav class="sidebar">
		<ul class="nav">
			<!-- START user info-->
			<li>
				<div data-toggle="collapse-next" class="item user-block has-submenu">
					<!-- User picture-->
					<div class="user-block-picture">
						<img
							src="${pageContext.request.contextPath}/static/app/img/user/${user.picName}"
							alt="Avatar" width="60" height="60"
							class="img-thumbnail img-circle">
						<!-- Status when collapsed-->
						<div class="user-block-status">
							<div class="point point-success point-lg"></div>
						</div>
					</div>
					<!-- Name and Role-->
					<div class="user-block-info">
						<span class="user-block-name item-text">Welcome,
							${user.firstname}</span> <span class="user-block-role">${user.level}</span>
						<!-- START Dropdown to change status-->
						<div class="btn-group user-block-status">
							<button type="button" data-toggle="dropdown" data-play="fadeIn"
								data-duration="0.2" class="btn btn-xs dropdown-toggle">
								<div class="point point-success"></div>
								Online
							</button>
							<ul class="dropdown-menu text-left pull-right">
								<li><a href="#">
										<div class="point point-success"></div>Online
								</a></li>
								<li><a href="#">
										<div class="point point-warning"></div>Away
								</a></li>
								<li><a href="#">
										<div class="point point-danger"></div>Busy
								</a></li>
							</ul>
						</div>
						<!-- END Dropdown to change status-->
					</div>
				</div> <!-- START User links collapse-->
				<ul class="nav collapse">
					<li><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
					<li><a href="#" onclick="getAllNotificationText()">Alerts
							& Notifications
							<div class="label label-danger pull-right"
								id="notificationbellsidebar"></div>
					</a></li>
					<li><a href="#chat">Chat
							<div class="label label-success pull-right">0</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
				</ul> <!-- END User links collapse-->
			</li>
			<!-- END user info-->
			<!-- START Menu-->
			<li class="active"><a
				href="${pageContext.request.contextPath}/dashboard"
				title="Dashboard" class="no-submenu"> <em
					class="fa fa-dashboard"></em> <span class="item-text">Dashboard</span>
			</a></li>
			<li><a href="#" title="Work Place" data-toggle="collapse-next"
				class="has-submenu"> <em class="fa fa-money"></em> <span
					class="item-text">Work Place</span>
			</a> <!-- START SubMenu item-->
				<ul class="nav collapse ">
					<li><a
						href="${pageContext.request.contextPath}/linkbroadcaster"
						title="Broadcaster" data-toggle="" class="no-submenu"> <span
							class="item-text">Broadcaster</span>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/linkreciever"
						title="Receiver" data-toggle="" class="no-submenu"> <span
							class="item-text">Receiver</span>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/linkverifier"
						title="Verifier" data-toggle="" class="no-submenu"> <span
							class="item-text">Verifier</span>
					</a></li>
				</ul> <!-- END SubMenu item--></li>
			<li><a href="${pageContext.request.contextPath}/contributors"
				title="Contributors" data-toggle="" class="no-submenu"> <em
					class="fa fa-trophy"></em> <span class="item-text">Contributors</span>
			</a> <!-- END SubMenu item--></li>
			<li><a href="#" title="Chat Wid Admin" data-toggle=""
				class="no-submenu"> <em class="fa fa-bullhorn"></em> <span
					class="item-text">Chat Wid Admin</span>
			</a></li>
			<li><a href="#" title="Sucess Tips" data-toggle="collapse-next"
				class="no-submenu"> <em class="fa fa-thumbs-o-up"></em> <span
					class="item-text">Sucess Tips</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/faqs"
				title="FAQs" data-toggle="" class="no-submenu"> <em
					class="fa fa-question"></em> <span class="item-text">FAQs</span>
			</a></li>

			<!-- END Menu-->
			<!-- Sidebar footer    -->
			<li class="nav-footer">
				<div class="nav-footer-divider"></div> <!-- START button group-->
				<div class="btn-group text-center">
					<a href="${pageContext.request.contextPath}/profile">
						<button type="button" data-toggle="tooltip" data-title="Profile"
							class="btn btn-link">
							<em class="fa fa-bug text-muted"></em>
						</button>
					</a> <a href="${pageContext.request.contextPath}/logout">
						<button type="button" data-toggle="tooltip" data-title="Logout"
							class="btn btn-link">
							<em class="fa fa-power-off text-muted"></em>
						</button>
					</a>
				</div> <!-- END button group-->
			</li>
		</ul>
	</nav>
	<!-- END Sidebar (left)-->
</aside>
<!-- End aside-->
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
									src="${pageContext.request.contextPath}/static/app/img/user/${user.picName}"
									style="width: 64px; height: 64px" alt="Image"
									class="img-circle img-thumbnail">
							</p>
							<p class="text-white">
								<strong>${user.firstname}</strong>
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
								<div id="pb-1" role="progressbar" aria-valuenow="80"
									aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
									class="progress-bar progress-bar-success">
									<span class="sr-only">80% Complete</span>
								</div>
							</div>
						</div>
						<div class="p">
							<p>Pending Links</p>
							<div class="progress progress-striped progress-xs m0">
								<div id="pb-2" role="progressbar" aria-valuenow="80"
									aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
									class="progress-bar progress-bar-success">
									<span class="sr-only">80% Complete</span>
								</div>
							</div>
						</div>
						<div class="p">
							<p>Self Verified Links</p>
							<div id="pb-3" class="progress progress-striped progress-xs m0">
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
								<div id="pb-4" role="progressbar" aria-valuenow="80"
									aria-valuemin="0" aria-valuemax="100" style="width: 0%;"
									class="progress-bar progress-bar-success">
									<span class="sr-only"></span>
								</div>
							</div>
						</div>
						<div class="p">
							<p>Approved Links</p>
							<div class="progress progress-striped progress-xs m0">
								<div id="pb-5" role="progressbar" aria-valuenow="80"
									aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
									class="progress-bar progress-bar-success">
									<span class="sr-only"></span>
								</div>
							</div>
						</div>
						<div class="p">
							<p>Links DisApproved</p>
							<div class="progress progress-striped progress-xs m0">
								<div id="pb-6" role="progressbar" aria-valuenow="80"
									aria-valuemin="0" aria-valuemax="100" style="width: 50%;"
									class="progress-bar progress-bar-success">
									<span class="sr-only"></span>
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
				<ul id="topPlayers" class="nav collapse">
				</ul></li>
	</nav>
	<!-- END Off Sidebar (right)-->
</aside>
<!-- END aside-->
<script
	src="${pageContext.request.contextPath}/static/app/js/userajax.js"></script>

<script type="text/javascript">
	var webSocket;
	var messages = document.getElementById("messages");

	function openSocket() {
		// Ensures only one connection is open at a time
		if (webSocket !== undefined
				&& webSocket.readyState !== WebSocket.CLOSED) {
			return;
		}
		// Create a new instance of the websocket
		webSocket = new WebSocket("ws://localhost:8080/pmg/echo");

		/**
		 * Binds functions to the listeners for the websocket.
		 */
		webSocket.onopen = function(event) {
			// For reasons I can't determine, onopen gets called twice
			// and the first time event.data is undefined.
			// Leave a comment if you know the answer.
			if (event.data === undefined)
				return;
			writeResponse(event.data);
		};

		webSocket.onmessage = function(event) {
			writeResponse(event.data);
		};

		webSocket.onclose = function(event) {
		};
	}

	/**
	 * Sends the value of the text input to the server
	 */
	function send() {
		var text = document.getElementById("messageinput").value;
		webSocket.send(text);
	}

	function closeSocket() {
		webSocket.close();
	}

	function writeResponse(text) {
		messages.innerHTML += "<br/>" + text;
	}
</script>