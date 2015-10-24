<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->


<title>Embedded JSP:Left Menu Bar</title>
</head>
<body>
	<div class="nano z-depth-2">
		<div class="nano-content">
			<ul>
				<li class="txt-weight blue-text label center">Menu</li>
				<p></p>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip="Account Set-Up"><a href="account"
					class="waves-effect waves-blue"><i
						class="mdi mdi-action-settings"></i> Account Set-Up</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip="Dashboard"><a href="dashboard"
					class="waves-effect waves-blue"><i
						class="mdi mdi-action-dashboard"></i> Dashboard</a></li>
				<li><a class="yay-sub-toggle waves-effect waves-blue"><i
						class="mdi mdi-action-wallet-travel"></i> Work Place<span
						class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
					<ul class="tooltipped" data-position="top" data-delay="50"
						data-tooltip="  Work Place">
						<li><a href="linkbroadcaster" class="waves-effect waves-blue">
								Link Broadcaster <span class="yellow badge new"></span>
						</a></li>
						<li><a href="linkreciever" class="waves-effect waves-blue">
								Link Reciever</a></li>
						<li><a href="proofresult" class="waves-effect waves-blue">
								Link Verifier</a></li>
					</ul></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip="  My Links N Clicks Status"><a href="linkstatus"
					class="waves-effect waves-blue"><i class="fa fa-link"></i>
						Links N Clicks</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip="  Contributor's Details"><a href="contributors"
					class="waves-effect waves-blue"><i
						class="mdi mdi-editor-insert-emoticon"></i> Contributors</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip=" Link Uniqueness Value (LUV)"><a href="luv"
					class="waves-effect waves-blue"><i
						class="mdi mdi-action-assessment"></i> Link Uniqueness Value</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip=" My Complaints History"><a href="complaints"
					class="waves-effect waves-red"><i
						class="mdi  mdi-action-history"></i> Complaints History</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip=" Notification History"><a href="notify"
					class="waves-effect waves-yellow"><i
						class="ion-android-notifications"></i> Notification</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip=" Frequently Asked Questions"><a href="faqs"
					class="waves-effect waves-yellow"><i
						class="fa fa-question-circle"></i> FAQs</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip=" Resources & Sucess Tips"><a href="rstips"
					class="waves-effect waves-yellow"><i
						class="mdi mdi-action-thumb-up"></i> Resources & Sucess Tips</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip=" ProMaGizmo | PMG ~~ Intro "><a href="pmg-intro"
					class="waves-effect waves-yellow"><i class="ion-monitor"></i>
						PMG Intro</a></li>
				<li class="tooltipped" data-position="right" data-delay="50"
					data-tooltip="Buy NOW"><a href="buypmg"
					class="waves-effect waves-yellow"><i
						class="mdi mdi-editor-attach-money"></i> Buy Now</a></li>
			</ul>
		</div>
	</div>
</body>
</html>