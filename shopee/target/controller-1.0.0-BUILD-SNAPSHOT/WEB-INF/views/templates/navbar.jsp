<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />
<spring:url var="vendor" value="/resources/vendor" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>

<title>Home 02</title>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${images}/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${fonts}/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${fonts}/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${fonts}/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${vendor}/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${vendor}/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${css}/util.css">
<link rel="stylesheet" type="text/css" href="${css}/main.css">
<!--===============================================================================================-->
</head>
<!-- Header -->
<header class="header-v2">
	<!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop p-l-45">


				<!-- Logo desktop -->

				<a href="home" class="logo"> <img
					src="${images}/icons/logo-01.png" alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li><a href="${contextPath}/home">Home</a></li>

						<li><a href="${contextPath}/product">Shop</a></li>



						<li><a href="${contextPath}/blog">Blog</a></li>

						<li><a href="${contextPath}/about">About</a></li>

						<li><a href="${contextPath}/contact">Contact</a></li>

						<c:if test="${user.role=='ROLE_ADMIN'}">
							<li><a href="#">Manage</a>
								<ul class="sub-menu">
									<li><a href="${contextPath}/manage/CatReg">Category
											Manager</a></li>
									<li><a href="${contextPath}/manage/prodReg">Product
											Manager</a></li>
									<li><a href="${contextPath}/manage/SupplierReg">Supplier
											Manager</a></li>


								</ul></li>
						</c:if>
						<sec:authorize access="isAnonymous()">
							<li><a href="${contextPath}/register">Sign up</a></li>
						</sec:authorize>
						
						<sec:authorize access="isAuthenticated()">
							<li><a href="#">welcome ${user.name}</a>
								<ul class="sub-menu">
									<li><a href="${contextPath}/logout">Logout</a></li>


								</ul></li>
						</sec:authorize>
						<sec:authorize access="isAnonymous()">
							<li><a href="${contextPath}/login">login</a>
								
						</sec:authorize>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full">
					

					<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
							data-notify="${size}">
							<a href="${contextPath}/shoping-cart"><i
								class="zmdi zmdi-shopping-cart"></i></a>
						</div>
					</div>

					
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="home"><img src="${images}/icons/logo-01.png"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-10">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
			</div>

			<div class="flex-c-m h-full p-lr-10 bor5">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
					data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


</header>


<!-- Slider -->
<section class="section-slide">
	<div class="wrap-slick1 rs1-slick1">
		<div class="slick1"></div>
	</div>
</section>
