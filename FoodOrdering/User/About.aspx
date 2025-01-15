<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FoodOrdering.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- about section -->

	<section class="about_section layout_padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="img-box">
						<img src="../TemplateFiles/images/approved.png" alt="" />
					</div>
				</div>
				<div class="col-md-6">
					<div class="detail-box">
						<div class="heading_container">
							<h2>Good Restaurant</h2>
						</div>
						<p>
							Welcome to our online food ordering platform, where convenience meets culinary excellence. We are committed to bringing your favorite meals to your doorstep, freshly prepared and delivered with care. Whether you're craving a quick snack, a hearty meal, or a special treat, we've got you covered. With a wide selection of menu options and user-friendly ordering, we make dining simple and enjoyable.
						</p>
						<p>
							Our mission is to provide a seamless and satisfying food ordering experience. From local favorites to international cuisines, we partner with the best restaurants to ensure quality and variety. Join us and enjoy delicious food, fast delivery, and exceptional service every time.
						</p>
						<a href="Menu.aspx">Order Now</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- end about section -->


</asp:Content>
