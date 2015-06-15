<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie ie6 lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="ie ie7 lt-ie9 lt-ie8"        lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="ie ie8 lt-ie9"               lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="ie ie9"                      lang="en"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-ie">
<!--<![endif]-->

<head>
<!-- Meta-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<title>ProMaGizmo | Profit Machine Gizmo</title>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/bootstrap.css">
<!-- Vendor CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/animo/animate+animo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/csspinner/csspinner.min.css">
<!-- START Page Custom CSS-->
<!-- END Page Custom CSS-->
<!-- App CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/app.css">
<!-- Modernizr JS Script-->
<script
	src="${pageContext.request.contextPath}/static/vendor/modernizr/modernizr.js"
	type="application/javascript"></script>
<!-- FastClick for mobiles-->
<script
	src="${pageContext.request.contextPath}/static/vendor/fastclick/fastclick.js"
	type="application/javascript"></script>
</head>

<body>
	<!-- START wrapper-->
	<div style="height: 100%; padding: 50px 0; background-color: #2c3037"
		class="row row-table">
		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 align-middle">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="bounceIn"
				data-offset="0" data-duration="300"
				class="panel panel-default panel-flat">
				<p class="text-center mb-lg">
				<div style="height: 100%; padding: 20px 0;">
					<p class="text-center text-primary mb-lg">
						<strong style="font-size: 21px;"><b><u>Please
									answer these questions.</u></b></strong>
					</p>
					<div class="panel-body">
						<div id="quest1" class="panel-body">
							<form id="quest"
								action="${pageContext.request.contextPath}/checkans"
								class="mb-lg">
								<h4>Questionnaire</h4>
								<ol>

								</ol>
							</form>
						</div>
						<button onclick="checkAns()" class="btn btn-block btn-primary">
							<b>TAKE ME TO THE REGISTRATION PAGE</b>
						</button>
					</div>
				</div>
				<!-- END panel-->
			</div>
		</div>
	</div>
		<!-- END wrapper-->
		<!-- START Scripts-->

		<!-- Main vendor Scripts-->
		<script
			src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Plugins-->
		<script
			src="${pageContext.request.contextPath}/static/vendor/chosen/chosen.jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/static/vendor/slider/js/bootstrap-slider.js"></script>
		<script
			src="${pageContext.request.contextPath}/static/vendor/filestyle/bootstrap-filestyle.min.js"></script>
		<!-- Animo-->
		<script
			src="${pageContext.request.contextPath}/static/vendor/animo/animo.min.js"></script>
		<!-- Sparklines-->
		<script
			src="${pageContext.request.contextPath}/static/vendor/sparklines/jquery.sparkline.min.js"></script>
		<!-- Slimscroll-->
		<script
			src="${pageContext.request.contextPath}/static/vendor/slimscroll/jquery.slimscroll.min.js"></script>
		<!-- START Page Custom Script-->
		<!-- END Page Custom Script-->
		<!-- App Main-->
		<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
		<!-- END Scripts-->
		<script type="text/javascript">
			function addRows() {
				// To Do This function need to be merged with linkverifier Page	

				$
						.ajax({
							url : 'getquestions', // php script to retern json encoded string
							type : 'GET', // set sending HTTP Request type
							async : false,
							contentType : "application/json; charset=utf-8",
							success : function(data) { // callback method for further manipulations          

								for (var i = 0; i < data.length; i++) {
									var newRowContent = '<li>'
											+ '<input type="hidden" id="que'+i+'" name="que" value="'+data[i].id+'">'
											+ data[i].que
											+ '<br>'
											+ '<input type="radio" name="ans'+i+'" value='+ data[i].op1+'>'
											+ data[i].op1
											+ '<br>'
											+ '<input type="radio" name="ans'+i+'" value='+ data[i].op2+'>'
											+ data[i].op2
											+ '<br>'
											+ '<input type="radio" name="ans'+i+'" value='+ data[i].op3+'>'
											+ data[i].op3
											+ '<br>'
											+ '<input type="radio"name="ans'+i+'" value='+ data[i].op4+'>'
											+ data[i].op4 + '</li>'
									$("#quest1 ol").append(newRowContent);
								}
							},
							error : function(data) { // if error occured
							}
						});
			}
			addRows();
			function getRadioVal(form, name) {
				var val;
				// get list of radio buttons with specified name
				var radios = form.elements[name];

				// loop through list of radio buttons
				for (var i = 0, len = radios.length; i < len; i++) {
					if (radios[i].checked) { // radio checked?
						val = radios[i].value; // if so, hold its value in val
						break; // and break out of for loop
					}
				}
				return val; // return value of checked radio or undefined if none checked
			}
			function checkAns(formName) {

				var fd = new FormData();

				for (var i = 0; i < jQuery("[name='que']").length; i++) {
					if (jQuery("#ans" + i) != null) {
						fd.append('que' + i, jQuery("#que" + i).val());
						fd.append('ans' + i, getRadioVal(document
								.getElementById('quest'), "ans" + i));
					}

				}

				$.ajax({
					url : 'checkans',
					data : fd,
					processData : false,
					contentType : false,
					type : 'POST',
					success : function(data) {
						window.location = data;
					}
				});
			}
		</script>
</body>

</html>