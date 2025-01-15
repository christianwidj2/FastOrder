<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="FoodOrdering.User.SliderUserControl" %>

<section class="slider_section">
	<div id="customCarousel1" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container">
					<div class="row">
						<div class="col-md-7 col-lg-6">
							<div class="detail-box">
								<h1>Delicious Meals Delivered</h1>
								<p>
									Enjoy your favorite dishes delivered straight to your doorstep with just a few clicks. Fresh, fast, and convenient!
								</p>
								<div class="btn-box">
									<a href="Menu.aspx" class="btn1">Order Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row">
						<div class="col-md-7 col-lg-6">
							<div class="detail-box">
								<h1>Your Favorite Fast Food</h1>
								<p>
									Craving a burger or fries? Get your favorite fast food delivered quickly and enjoy the convenience of online ordering.
								</p>
								<div class="btn-box">
									<a href="Menu.aspx" class="btn1">Order Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row">
						<div class="col-md-7 col-lg-6">
							<div class="detail-box">
								<h1>Fresh and Tasty Options</h1>
								<p>
									From healthy salads to hearty meals, explore a wide variety of options to suit your taste. Easy ordering, anytime.
								</p>
								<div class="btn-box">
									<a href="Menu.aspx" class="btn1">Order Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<ol class="carousel-indicators">
				<li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#customCarousel1" data-slide-to="1"></li>
				<li data-target="#customCarousel1" data-slide-to="2"></li>
			</ol>
		</div>
	</div>
</section>