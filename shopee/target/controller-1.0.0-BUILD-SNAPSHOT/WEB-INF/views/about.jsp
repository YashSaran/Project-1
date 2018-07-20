<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

    <spring:url var="css" value="/resources/css"/>
<spring:url var="fonts" value="/resources/fonts"/>
<spring:url var="images" value="/resources/images"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="vendor" value="/resources/vendor"/>
    
    
<!DOCTYPE html>
<html lang="en">
	<%@include file="templates/navbar.jsp" %>

		
	</header>




	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${images}/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			About us
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
		
			
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Mission
						</h3>

						<p class="stext-113 cl6 p-b-26">
At <u><b>COZA STORE</b></u>, our mission is to empower online retailers to succeed globally, by delivering a seamless and glocalized shopping experience that enhances their brand. By shopping experience, we mean the complete customer journey, from the first website visit through delivery, including customer service and returns.

image_550x560px
Since 2010, our vision has been to connect shoppers all around the world with their favorite brands, allowing them to shop anytime, anywhere, from any device. Through our platform, brands can offer a seamless, localized shopping experience to international consumers, letting them shop just like they do on a domestic website. From pricing to payments, shipping to returns, we leverage our technology to bring brands and shoppers closer together, making the world a smaller place.

We believe that selling beyond your countrys borders should be as easy as selling domestically, and buying your products should be as easy on the other side of the planet as it is in your home town. Each day we get a little closer to fulfilling that vision.						</p>

						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
								Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something. It seemed obvious to them after a while.
							</p>

							<span class="stext-111 cl8">
								- Steve Jobs 
							</span>
						</div>
					</div>
				</div>

				<div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
					<div class="how-bor2">
						<div class="hov-img0">
							<img src="${images}/about-02.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	
		

<%@include file="templates/footer.jsp" %>



	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="${vendor}/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="${vendor}/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="${js}/main.js"></script>
	
</body>
</html>