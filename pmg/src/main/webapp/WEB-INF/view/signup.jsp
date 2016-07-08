
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
	type="text/css" charset="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/front/sign/css/style.css" />
<script type="text/javascript"
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

<style>
.error {
	color: red;
}
</style>

<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/additional-methods.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js"></script>

<script>
	$(document).ready(function() {

		$('#myform').validate({ // initialize the plugin
			rules : {
				email : {
					required : true,
					email : true
				},
				remail : {
					required : true,
					equalTo : "#email"
				},
				fullName : {
					required : true,
				},
				password : {
					required : true,
				},
				cpassword : {
					required : true,
					equalTo : "#password"
				},
				domain : {
					required : true,
				},
				rmsite : {
					required : true,
					equalTo : "#msite"
				},
				cbtc : {
					required : true,
				}
			}
		});

	});
</script>

</head>
<body>
	<div class="container">
		<section class="content bgcolor-1">
			<h2>ProMaGizmo | PMG | Sign-UP</h2>

			<form:form id="myform" action="signup" method="post"
				modelAttribute="user" autocomplete="off">
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="firstname"
					name="firstname" /> <label class="input__label input__label--nao"
					for="input-1"> <span
						class="input__label-content input__label-content--nao">FirstName*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="email"
					name="email" /> <label class="input__label input__label--nao"
					for="input-2"> <span
						class="input__label-content input__label-content--nao">Email*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="remail"
					name="remail" /> <label class="input__label input__label--nao"
					for="input-3"> <span
						class="input__label-content input__label-content--nao">Re-Type
							Email*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>


				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="password"
					id="password" name="password" /> <label
					class="input__label input__label--nao" for="input-1"> <span
						class="input__label-content input__label-content--nao">Password*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="password"
					id="cpassword" name="cpassword" /> <label
					class="input__label input__label--nao" for="input-2"> <span
						class="input__label-content input__label-content--nao">Confirm
							Passorwd*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="msite"
					name="domain" /> <label class="input__label input__label--nao"
					for="input-3"> <span
						class="input__label-content input__label-content--nao">Money
							Site (example.com)*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="rmsite"
					name="rmsite" /> <label class="input__label input__label--nao"
					for="input-3"> <span
						class="input__label-content input__label-content--nao">Re-Type
							Money Site*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>
				<span class="input input--nao"> <input
					class="input__field input__field--nao" type="text" id="country"
					name="country" /> <label class="input__label input__label--nao"
					for="input-3"> <span
						class="input__label-content input__label-content--nao">Country*</span>
				</label> <svg class="graphic graphic--nao" width="300%" height="100%"
						viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
							d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
				</span>

				<div class="morph-button morph-button-overlay morph-button-fixed">
					<button id="cb6" name="cb6" type="button">PMG Terms</button>
					<div class="morph-content">
						<div>
							<div class="content-style-overlay">
								<span class="icon icon-close ion-close-round"></span>
								<h2>Terms & Conditions</h2>

								<p>Gumbo beet greens corn soko endive gumbo gourd. Parsley
									shallot courgette tatsoi pea sprouts fava bean collard greens
									dandelion okra wakame tomato. Dandelion cucumber earthnut pea
									peanut soko zucchini.</p>
								<p>Turnip greens yarrow ricebean rutabaga endive cauliflower
									sea lettuce kohlrabi amaranth water spinach avocado daikon napa
									cabbage asparagus winter purslane kale. Celery potato scallion
									desert raisin horseradish spinach carrot soko. Lotus root water
									spinach fennel kombu maize bamboo shoot green bean swiss chard
									seakale pumpkin onion chickpea gram corn pea. Brussels sprout
									coriander water chestnut gourd swiss chard wakame kohlrabi
									beetroot carrot watercress. Corn amaranth salsify bunya nuts
									nori azuki bean chickweed potato bell pepper artichoke.</p>

								<section></section>
							</div>
						</div>
					</div>
				</div>
				<!-- morph-button -->
				<fieldset>
					<div class="col s2 l2">
						<input id="cbtc" name="cbtc" type="checkbox"> <label
							for="cb6">I Have Understood and Agreed to PMG's Terms</label>
					</div>

					<input id="formsubmit" type="submit" class="button"
						value="Register">

				</fieldset>
			</form:form>

			<c:if test="${not empty error}">
				Signup Failed, <br />
				<c:if test="${not empty email}">
					 Email <b> <c:out value="${email}" />
					</b>exists<br />
				</c:if>

				<c:if test="${not empty domain}">
					 Domain or MoneySite <b> <c:out value="${domain}" />
					</b> exists<br />
				</c:if>
			</c:if>
		</section>
		<!-- Related demos -->
	</div>
	<!-- /container -->
	<footer>
		&copy; 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.
	</footer>
	<script
		src="${pageContext.request.contextPath}/static/assets/front/sign/js/classie.js"></script>
	<script>
		(function() {
			// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
			if (!String.prototype.trim) {
				(function() {
					// Make sure we trim BOM and NBSP
					var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
					String.prototype.trim = function() {
						return this.replace(rtrim, '');
					};
				})();
			}

			[].slice.call(document.querySelectorAll('input.input__field'))
					.forEach(function(inputEl) {
						// in case the input is already filled..
						if (inputEl.value.trim() !== '') {
							classie.add(inputEl.parentNode, 'input--filled');
						}

						// events:
						inputEl.addEventListener('focus', onInputFocus);
						inputEl.addEventListener('blur', onInputBlur);
					});

			function onInputFocus(ev) {
				classie.add(ev.target.parentNode, 'input--filled');
			}

			function onInputBlur(ev) {
				if (ev.target.value.trim() === '') {
					classie.remove(ev.target.parentNode, 'input--filled');
				}
			}
		})();
	</script>
	<script
		src="${pageContext.request.contextPath}/static/assets/front/sign/js/uiProgressButton.js"></script>

	<script>
		[].slice.call(document.querySelectorAll('.progress-button')).forEach(
				function(bttn, pos) {
					new UIProgressButton(bttn, {
						callback : function(instance) {
							var progress = 0, interval = setInterval(
									function() {
										progress = Math.min(progress
												+ Math.random() * 0.1, 1);
										instance.setProgress(progress);

										if (progress === 1) {
											instance.stop(pos === 1
													|| pos === 3 ? -1 : 1);
											clearInterval(interval);
										}
									}, 150);
						}
					});
				});
	</script>
	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/front/sign/js/uiMorphingButton_fixed.js"></script>
	<script>
		(function() {
			var docElem = window.document.documentElement, didScroll, scrollPosition;

			// trick to prevent scrolling when opening/closing button
			function noScrollFn() {
				window.scrollTo(scrollPosition ? scrollPosition.x : 0,
						scrollPosition ? scrollPosition.y : 0);
			}

			function noScroll() {
				window.removeEventListener('scroll', scrollHandler);
				window.addEventListener('scroll', noScrollFn);
			}

			function scrollFn() {
				window.addEventListener('scroll', scrollHandler);
			}

			function canScroll() {
				window.removeEventListener('scroll', noScrollFn);
				scrollFn();
			}

			function scrollHandler() {
				if (!didScroll) {
					didScroll = true;
					setTimeout(function() {
						scrollPage();
					}, 60);
				}
			}
			;

			function scrollPage() {
				scrollPosition = {
					x : window.pageXOffset || docElem.scrollLeft,
					y : window.pageYOffset || docElem.scrollTop
				};
				didScroll = false;
			}
			;

			scrollFn();

			var el = document.querySelector('.morph-button');

			new UIMorphingButton(el, {
				closeEl : '.icon-close',
				onBeforeOpen : function() {
					// don't allow to scroll
					noScroll();
				},
				onAfterOpen : function() {
					// can scroll again
					canScroll();
					// add class "noscroll" to body
					classie.addClass(document.body, 'noscroll');
					// add scroll class to main el
					classie.addClass(el, 'scroll');
				},
				onBeforeClose : function() {
					// remove class "noscroll" to body
					classie.removeClass(document.body, 'noscroll');
					// remove scroll class from main el
					classie.removeClass(el, 'scroll');
					// don't allow to scroll
					noScroll();
				},
				onAfterClose : function() {
					// can scroll again
					canScroll();
				}
			});
		})();
	</script>
	<script
		src="${pageContext.request.contextPath}/static/assets/front/sign/js/svgcheckbx.js"></script>
	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>

</body>
</html>