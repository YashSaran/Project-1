<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />
<spring:url var="vendor" value="/resources/vendor" />
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="templates/navbar.jsp" %>


		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="${images}/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search"
						placeholder="Search...">
				</form>
			</div>
		</div>
	</header>




	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index" class="stext-109 cl8 hov-cl1 trans-04"> Home <i
				class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <a href="blog" class="stext-109 cl8 hov-cl1 trans-04"> Blog <i
				class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> 4 Inspiring Ways to Wear Dresses
				in the Winter </span>
		</div>
	</div>


	<!-- Content page -->
	<section class="bg0 p-t-52 p-b-20">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!--  -->
						<div class="wrap-pic-w how-pos5-parent">
							<img src="${images}/blog-04.jpg" alt="IMG-BLOG">

							<div class="flex-col-c-m size-123 bg9 how-pos5">
								<span class="ltext-107 cl2 txt-center"> 22 </span> <span
									class="stext-109 cl3 txt-center"> Jan 2018 </span>
							</div>
						</div>

						<div class="p-t-32">
							<span class="flex-w flex-m stext-111 cl2 p-b-19"> <span>
									<span class="cl4">By</span> Admin <span
									class="cl12 m-l-4 m-r-6">|</span>
							</span> <span> 22 Jan, 2018 <span class="cl12 m-l-4 m-r-6">|</span>
							</span> <span> StreetStyle, Fashion, Couple <span
									class="cl12 m-l-4 m-r-6">|</span>
							</span> <span> 8 Comments </span>
							</span>

							<h4 class="ltext-109 cl2 p-b-28">4 Inspiring Ways to Wear
								Dresses in the Winter</h4>

							<p class="stext-117 cl6 p-b-26">As a petite woman, dresses
								are my favorite thing to wear. Dresses are so flattering on a
								petite frame, as they serve to lengthen the appearance by
								creating a vertical line. A dress naturally accents the curves
								on any woman, and this is especially true for petite women. If I
								could wear a dress every day I would, as I just love the way I
								look in them! In the winter however, this isnt always practical.
								Today I am sharing eight inspiring ways to wear dresses in the
								winter, and at the same time stay warm!</p>
							<img src="${images}/s1.jpg" align=""center>
							


							<p class="stext-117 cl6 p-b-26">POver the knee boots are a
								winter wardrobe staple for me! I love them for multiple reasons.
								They are actually warmer than pants as they are obviously
								thicker and more durable. When paired with an above the knee
								dress, OTK boots with a heel serve to lengthen my legs and make
								me look taller than I really am. Finally, most OTK heeled boots
								I own are very comfortable, and I can wear them all day without
								significant pain. My all time favorite are Stuart Weitzman but I
								also have found this seasons Tory Burch OTK boots to be equally
								as nice and more affordable.</p>
							<h4 align="center">2.PAIR A SHORT SLEEVE DRESS WITH A
								LEATHER MOTO JACKET</h4><img src="${images}/s2.jpg" align=""center>
							
							<p class="stext-117 cl6 p-b-26">Pairing a leather moto jacket
								with a dress is a great way to wear dresses in the winter. This
								Blank NYC faux leather moto jacket is nice as it looks realistic
								and is so stylish! This is one of my favorite professional looks
								from last year. I love the color combination of olive and black.
								The leather jacket complements the olive leopard print and it
								adds a sophisticated flair to this look.</p>
														<h4 align="center">3.LAYER A FUR VEST OVER A DRESS</h4>
							<img src="${images}/s3.jpg" align=""center>
							<p class="stext-117 cl6 p-b-26">As I mentioned in this post,
								a faux fur coat has the added benefit of warmth. A fur vest is
								fun to layer over dresses in the winter and it is also warm and
								stylish! I like pairing fur with stripes as the mix of patterns
								and textures goes well together. I love this fur vest from Old
								Navy. It is from the kids section, however the XXL size fits
								well on me as a petite woman.</p>
							<h4 align="center">4.WEAR A CARDIGAN OVER A DRESS</h4>
							<img src="${images}/s4.jpg" align=""center>
							
							<p class="stext-117 cl6 p-b-26">It almost goes without saying
								that a cardigan over a dress is a great way to style it in the
								winter. I love the feminine styling of a cascade cardigan and it
								can be worn with so many things! Here I am wearing it with a
								skirt, but it could easily be styled with a dress. The one I am
								wearing is sold out, but this cardigan from Loft is very similar
								(and it is 50% off!). Recreate this entire look with this
								sweater and this skirt.</p>
						</div>

						<div class="flex-w flex-t p-t-16">
							<span class="size-216 stext-116 cl8 p-t-4"> Tags </span>

							<div class="flex-w size-217">
								<a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Streetstyle </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Crafts </a>
							</div>
						</div>

				
					</div>
				</div>

				
			</div>
		</div>
	</section>



	<%@include file="templates/footer.jsp" %>
	

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script src="${vendor}/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${vendor}/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="${vendor}/bootstrap/js/popper.js"></script>
	<script src="${vendor}/bootstrap/js/bootstrap.min.js"></script>
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
	<script src="${vendor}/MagnificPopup/jquery.magnific-popup.min.js"></script>
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