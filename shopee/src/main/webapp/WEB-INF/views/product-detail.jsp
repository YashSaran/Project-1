<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />
<spring:url var="vendor" value="/resources/vendor" />
<!DOCTYPE html>
<html lang="en">
<%@include file="templates/navbar.jsp"%>






<!-- Menu desktop -->

<!-- Icon header -->

</nav>
</div>
</div>

<!-- Header Mobile -->
<div class="wrap-header-mobile">
	<!-- Logo moblie -->
	<div class="logo-mobile">
		<a href="index"><img src="${images}/icons/logo-01.png"
			alt="IMG-LOGO"></a>
	</div>

	<!-- Icon header -->
	<div class="wrap-icon-header flex-w flex-r-m m-r-15">
		<div
			class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
			<i class="zmdi zmdi-search"></i>
		</div>

		<div
			class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
			data-notify="2">
			<i class="zmdi zmdi-shopping-cart"></i>
		</div>

		<a href="#"
			class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
			data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
		</a>
	</div>

	<!-- Button show menu -->
	<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
		<span class="hamburger-box"> <span class="hamburger-inner"></span>
		</span>
	</div>
</div>


<!-- Menu Mobile -->
<div class="menu-mobile">
	<ul class="topbar-mobile">
		<li>
			<div class="left-top-bar">Free shipping for standard order over
				$100</div>
		</li>

		<li>
			<div class="right-top-bar flex-w h-full">
				<a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a> <a
					href="#" class="flex-c-m p-lr-10 trans-04"> My Account </a> <a
					href="#" class="flex-c-m p-lr-10 trans-04"> EN </a> <a href="#"
					class="flex-c-m p-lr-10 trans-04"> USD </a>
			</div>
		</li>
	</ul>

	<ul class="main-menu-m">
		<li><a href="index">Home</a>
			<ul class="sub-menu-m">
				<li><a href="index">Homepage 1</a></li>
				<li><a href="home-02">Homepage 2</a></li>
				<li><a href="home-03">Homepage 3</a></li>
			</ul> <span class="arrow-main-menu-m"> <i class="fa fa-angle-right"
				aria-hidden="true"></i>
		</span></li>

		<li><a href="product">Shop</a></li>

		<li><a href="shoping-cart" class="label1 rs1" data-label1="hot">Features</a>
		</li>

		<li><a href="blog">Blog</a></li>

		<li><a href="about">About</a></li>

		<li><a href="contact">Contact</a></li>
	</ul>
</div>

<!-- Modal Search -->
<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
	<div class="container-search-header">
		<button
			class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
			<img src="${images}/icons/icon-close2.png" alt="CLOSE">
		</button>

		<form class="wrap-search-header flex-w p-l-15">
			<button class="flex-c-m trans-04">
				<i class="zmdi zmdi-search"></i>
			</button>
			<input class="plh3" type="text" name="search" placeholder="Search...">
		</form>
	</div>
</div>
</header>




<!-- breadcrumb -->
<div class="container">
	<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
		<a href="index" class="stext-109 cl8 hov-cl1 trans-04"> Home <i
			class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> <a href="${pageContext.request.contextPath}/product/${catname.categoryid}" class="stext-109 cl8 hov-cl1 trans-04">${catname.categoryname} <i
			class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> <span class="stext-109 cl4"> ${prod.name} </span>
	</div>
</div>


<!-- Product Detail -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-7 p-b-30">
				<div class="p-l-25 p-r-30 p-lr-0-lg">
					<div class="wrap-slick3 flex-sb flex-w">
						<div class="wrap-slick3-dots"></div>
						<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

						<div class="slick3 gallery-lb">
							<div class="item-slick3"
								data-thumb="${pageContext.request.contextPath}/resources/images/${product.code}/1.jpg">
								<div class="wrap-pic-w pos-relative">
									<img
										src="${pageContext.request.contextPath}/resources/images/${product.code}/1.jpg"
										alt="IMG-PRODUCT"> <a
										class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
										href="C:\Users\hp\eclipse-workspace\shopee\src\main\webapp\resources\images/${prod.code}/3.jpg">
										<i class="fa fa-expand"></i>
									</a>
								</div>
							</div>

							<div class="item-slick3"
								data-thumb="${pageContext.request.contextPath}/resources/images/${product.code}/2.jpg">
								<div class="wrap-pic-w pos-relative">
									<img
										src="${pageContext.request.contextPath}/resources/images/${product.code}/2.jpg"
										alt="IMG-PRODUCT"> <a
										class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
										href="${images}/product-detail-02.jpg"> <i
										class="fa fa-expand"></i>
									</a>
								</div>
							</div>

							<div class="item-slick3"
								data-thumb="${pageContext.request.contextPath}/resources/images/${product.code}/3.jpg">
								<div class="wrap-pic-w pos-relative">
									<img
										src="${pageContext.request.contextPath}/resources/images/${product.code}/3.jpg"
										alt="IMG-PRODUCT"> <a
										class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
										href="${pageContext.request.contextPath}/resources/images/${product.code}/3.jpg">
										<i class="fa fa-expand"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-5 p-b-30">
				<div class="p-r-50 p-t-5 p-lr-0-lg">
					<h4 class="mtext-105 cl2 js-name-detail p-b-14">
						${product.name}</h4>

					<span class="mtext-106 cl2"> ${product.price} </span>

					<p class="stext-102 cl3 p-t-23">${product.description}</p>

					<!--  -->
					

					<!--  -->
					<div class="flex-w flex-m p-l-100 p-t-40 respon7">
						<div class="flex-m bor9 p-r-10 m-r-11">
							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
								data-tooltip="Add to Wishlist"> <i
								class="zmdi zmdi-favorite"></i>
							</a>
						</div>

						<a href="#"
							class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
							data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
						</a> <a href="#"
							class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
							data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
						</a> <a href="#"
							class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
							data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="bor10 m-t-50 p-t-43 p-b-40">
			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item p-b-10"><a class="nav-link active"
						data-toggle="tab" href="#description" role="tab">Description</a></li>




				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-43">
					<!-- - -->
					<div class="tab-pane fade show active" id="description"
						role="tabpanel">
						<div class="how-pos2 p-lr-15-md">
							<p class="stext-102 cl6">${product.description}</p>
						</div>
					</div>


					
	<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
		
			<class="stext-107 cl6 p-lr-25"> Categories: ${catname.categoryname}</span>
	</div>
</section>


<!-- Related Products -->







<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
	<span class="symbol-btn-back-to-top"> <i
		class="zmdi zmdi-chevron-up"></i>
	</span>
</div>
<%@include file="templates/footer.jsp"%>


<!--===============================================================================================-->
<script src="${vendor}/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${vendor}/animsition/${js}/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="${vendor}/bootstrap/${js}/popper.js"></script>
<script src="${vendor}/bootstrap/${js}/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="${vendor}/select2/select2.min.js"></script>
<script>
	$(".js-select2").each(function() {
		$(this).select2({
			minimumResultsForSearch : 20,
			dropdownParent : $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script src="${vendor}/daterangepicker/moment.min.js"></script>
<script src="${vendor}/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="${vendor}/slick/slick.min.js"></script>
<script src="${js}/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="${vendor}/parallax100/parallax100.js"></script>
<script>
	$('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="${vendor}/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
	$('.gallery-lb').each(function() { // the containers for all your galleries
		$(this).magnificPopup({
			delegate : 'a', // the selector for gallery item
			type : 'image',
			gallery : {
				enabled : true
			},
			mainClass : 'mfp-fade'
		});
	});
</script>
<!--===============================================================================================-->
<script src="${vendor}/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="${vendor}/sweetalert/sweetalert.min.js"></script>
<script>
	$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
		e.preventDefault();
	});

	$('.js-addwish-b2').each(function() {
		var nameProduct = $(this).parent().parent().find('.js-name-b2')();
		$(this).on('click', function() {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-b2');
			$(this).off('click');
		});
	});

	$('.js-addwish-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().find(
						'.js-name-detail')();

				$(this).on('click', function() {
					swal(nameProduct, "is added to wishlist !", "success");

					$(this).addClass('js-addedwish-detail');
					$(this).off('click');
				});
			});

	/*---------------------------------------------*/

	$('.js-addcart-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().parent()
						.find('.js-name-detail')();
				$(this).on('click', function() {
					swal(nameProduct, "is added to cart !", "success");
				});
			});
</script>
<!--===============================================================================================-->
<script src="${vendor}/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$('.js-pscroll').each(function() {
		$(this).css('position', 'relative');
		$(this).css('overflow', 'hidden');
		var ps = new PerfectScrollbar(this, {
			wheelSpeed : 1,
			scrollingThreshold : 1000,
			wheelPropagation : false,
		});

		$(window).on('resize', function() {
			ps.update();
		})
	});
</script>
<!--===============================================================================================-->
<script src="${js}/main.js"></script>

</body>
</html>