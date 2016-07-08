
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie ie6 lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="ie ie7 lt-ie9 lt-ie8"        lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="ie ie8 lt-ie9"               lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="ie ie9"                      lang="en"> <![endif]-->
<!--[if !IE]><!-->


<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ProMaGizmo | PMG</title>
<meta name="description" content="PMG | Your Profit Making Gizmo" />
<meta name="author" content="PMG" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/fonts/act/act.css"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/front/sign/css/style.css" />
<script
	src="${pageContext.request.contextPath}/static/assets/front/sign/js/modernizr.custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/assets/captcha/jquery-1.3.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/assets/captcha/ui.core.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/assets/captcha/ui.sortable.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/captcha/captcha.css" />
<!--Alert-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

<!-- IonIcons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />
<SCRIPT type="text/javascript">
	var message = "function disabled";
	function rtclickcheck(keyp) {

		if (navigator.appName == "Netscape" && keyp.which == 3) {
			alert(message);
			return false;
		}

	}
	document.onmousedown = rtclickcheck;
</SCRIPT>
<script type="text/javascript">
	(function($) {

		$.fn.shuffle = function() {
			return this.each(function() {
				var items = $(this).children();

				return (items.length) ? $(this).html($.shuffle(items, $(this)))
						: this;
			});
		}

		$.fn.validate = function() {
			var res = false;
			this
					.each(function() {
						var arr = $(this).children();
						res = ((arr[0].innerHTML == "P")
								&& (arr[1].innerHTML == "ro")
								&& (arr[2].innerHTML == "Ma")
								&& (arr[3].innerHTML == "G")
								&& (arr[4].innerHTML == "iz") && (arr[5].innerHTML == "mo"));
					});
			return res;
		}

		$.shuffle = function(arr, obj) {
			for (var j, x, i = arr.length; i; j = parseInt(Math.random() * i), x = arr[--i], arr[i] = arr[j], arr[j] = x)
				;
			if (arr[0].innerHTML == "P")
				obj.html($.shuffle(arr, obj))
			else
				return arr;
		}

	})(jQuery);

	$(function() {
		$("#sortable").sortable();
		$("#sortable").disableSelection();
		$('ul').shuffle();

		$("#formsubmit").click(
				function() {
					($('ul').validate()) ? swal("Yeah, You Spelled It Right!",
							"Welcome To ProMaGizmo | PMG :)") : swal(
							"No, It Ain't Right!", "Try Again ;(");
				});
	});
</script>
</head>
<body>
	<div class="container">
		<section class="content bgcolor-1">
			<h2>ProMaGizmo | PMG | Sign-In</h2>

			<form action="<c:url value='/j_spring_security_check'/>"
				autocomplete="off" method="post">

				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="input-1"
					name="email" /> <label class="input__label input__label--nao"
					for="input-1"> <span
						class="input__label-content input__label-content--nao">E-Mail*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span> <span class="input input--nao "> <input
					class="input__field input__field--nao" type="password" id="input-1"
					name="password" /> <label class="input__label input__label--nao"
					for="input-17"> <span
						class="input__label-content input__label-content--nao">Password*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg></span>

				<c:if test="${not empty loginfailed}">
					<div style="color: red;">
						<c:out value="${loginfailed}"></c:out>
					</div>

				</c:if>
				<fieldset>
					<input type="submit" class="button" value="SignIn" />
				</fieldset>

			</form>
			<!-- 
				<section>
								<form class="ac-custom ac-checkbox ac-checkmark" autocomplete="off">
								
								</form> 
								</section>
				 -->
			<section>
				<a href="resetpasswd">
					<h5>Forgot Password</h5>
				</a> <a href="signup">
					<h5>Register</h5>
				</a>
			</section>
		</section>

		<!-- Related demos -->
	</div>
	<!-- /container -->
	<footer>
		&copy; 2016 <strong>ProMaGizmo | PMG</strong>. All rights reserved.
	</footer>


</body>
</html>