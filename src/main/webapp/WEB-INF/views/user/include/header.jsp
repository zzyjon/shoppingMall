<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header class="header1">

	<!-- Header desktop -->
	<div class="container-menu-header">
		<div class="topbar">
			<div class="topbar-social">
				<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
					href="#" class="topbar-social-item fa fa-instagram"></a> <a
					href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
					href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
					href="#" class="topbar-social-item fa fa-youtube-play"></a>
			</div>

			<span class="topbar-child1"> Free shipping for standard order
				over $100 </span>

			<div class="topbar-child2">
				<span class="topbar-email"> <c:choose>
						<c:when test="${sessionScope.member.mId  == null}">
						로그인해주세요
					</c:when>
						<c:otherwise>
						
									${sessionScope.member.mName }님, 반갑습니다. 
										
								
					</c:otherwise>
					</c:choose>
				</span>

				<div class="topbar-language rs1-select2">
					<select class="selection-1" name="time">
						<option>USD</option>
						<option>EUR</option>
					</select>
				</div>
			</div>
		</div>

		<div class="wrap_header">
			<!-- Logo -->
			<a href="/user/index" class="logo"> <img
				src="/u_resources/images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Menu -->
			<div class="wrap_menu">
				<nav class="menu">
					<ul class="main_menu">
						<li><a href="#">goods</a>
							<ul class="sub_menu">
								<li><a href="/user/page/product/view">all</a></li>
								<li><a href="/user/page/product/view?productType=C">outerwear</a></li>
								<li><a href="/user/page/product/view?productType=A">top</a></li>
								<li><a href="/user/page/product/view?productType=B">bottom</a></li>
								<li><a href="/user/page/product/view?productType=D">accessory</a></li>
								<li><a href="/user/page/product/view?productType=E">shoes</a></li>
							</ul></li>

						<li class="sale-noti"><a href="/user/page/product/view">sale</a>
						</li>

						<li><a href="/user/page/board/review">review</a></li>

						<li><a href="/user/page/intro/contact">contact</a></li>
					</ul>
				</nav>
			</div>
			<c:choose>
				<c:when test="${sessionScope.member.mId  == null}">
					<!-- Header Icon 비로그인시-->
					<div class="header-icons">
						<div class="header-wrapicon1">
							<img src="/u_resources/images/icons/icon-header-01.png"
								class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
								class="header-icons-noti">0</span>

							<!-- Header cart noti -->
							<div class="header-cart header-dropdown">
								<div class="header-cart-buttons">
									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/memberRegistView"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											회원가입 </a>
									</div>

									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/loginMain"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											로그인 </a>
									</div>
								</div>
							</div>
						</div>

						<span class="linedivide1"></span>

						<div class="header-wrapicon2">
							<img src="/u_resources/images/icons/icon-header-02.png"
								class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
								class="header-icons-noti">0</span>

							<!-- Header cart noti -->
							<div class="header-cart header-dropdown">
								<ul class="header-cart-wrapitem">
									<li class="header-cart-item">
										<div class="header-cart-item-txt">
										로그인 후 이용 할 수 있습니다
										</div>
									</li>

								</ul>
								<div class="header-cart-buttons">
									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/cart/"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											장바구니 </a>
									</div>

									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/orderList/"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											결제내역 </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="header-icons">
						<div class="header-wrapicon1">
							<img src="/u_resources/images/icons/icon-header-01.png"
								class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
								class="header-icons-noti">0</span>

							<!-- Header cart noti -->
							<div class="header-cart header-dropdown">
							<c:choose>
				<c:when test="${sessionScope.member.mId  != null}">
								<h3>${sessionScope.member.mName}님의 정보</h3>
								<br>

								<h4>
									내등급정보: ${sessionScope.member.mGrade } <br>
									적립금 : ${sessionScope.member.mPoint } P <br>
									내가 보유한 쿠폰: 1장 <br>
									마지막 로그인 : ${sessionScope.member.mLoginDate } <br>
									방문 횟수 : ${sessionScope.member.mVisitCount } <br>
									

								</h4>
				</c:when>
				</c:choose>
								<div class="header-cart-buttons">
									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/myInfo_main"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											내 정보 </a>
									</div>

									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/member/logout"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											로그아웃 </a>
									</div>
								</div>
							</div>
						</div>

						<span class="linedivide1"></span>

						<div class="header-wrapicon2">
							<img src="/u_resources/images/icons/icon-header-02.png"
								class="header-icon1 js-show-header-dropdown" alt="ICON"> 
							<span id="cartExist" class="header-icons-noti"></span>

							<!-- Header cart noti -->
							<div class="header-cart header-dropdown">
								<ul id="menuCart" class="header-cart-wrapitem">

								</ul>

								<div class="header-cart-total">총금액:<span id="sumCart"></span> 원</div>

								<div class="header-cart-buttons">
									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/cart/"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											장바구니 </a>
									</div>

									<div class="header-cart-wrapbtn">
										<!-- Button -->
										<a href="/user/page/member/orderList"
											class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
											주문내역 </a>
									</div>
								</div>
							</div>
						</div>
					</div>



				</c:otherwise>
			</c:choose>

		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap_header_mobile">
		<!-- Logo moblie -->
		<a href="index.html" class="logo-mobile"> <img
			src="/u_resources/images/icons/logo.png" alt="IMG-LOGO">
		</a>

		<!-- Button show menu -->
		<div class="btn-show-menu">
			<!-- Header Icon mobile -->
			<div class="header-icons-mobile">
				<a href="#" class="header-wrapicon1 dis-block"> <img
					src="/u_resources/images/icons/icon-header-01.png"
					class="header-icon1" alt="ICON">
				</a> <span class="linedivide2"></span>

				<div class="header-wrapicon2">
					<img src="/u_resources/images/icons/icon-header-02.png"
						class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
						class="header-icons-noti">0</span>

					<!-- Header cart noti -->
					<div class="header-cart header-dropdown">
						<ul class="header-cart-wrapitem">
							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="/u_resources/images/item-cart-01.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> White Shirt With
										Pleat Detail Back </a> <span class="header-cart-item-info">
										1 x $19.00 </span>
								</div>
							</li>

							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="/u_resources/images/item-cart-02.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> Converse All
										Star Hi Black Canvas </a> <span class="header-cart-item-info">
										1 x $39.00 </span>
								</div>
							</li>

							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="/u_resources/images/item-cart-03.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> Nixon Porter
										Leather Watch In Tan </a> <span class="header-cart-item-info">
										1 x $17.00 </span>
								</div>
							</li>
						</ul>

						<div class="header-cart-total">Total: $75.00</div>

						<div class="header-cart-buttons">
							<div class="header-cart-wrapbtn">
								<!-- Button -->
								<a href="/user/page/member/cart/"
									class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									장바구니 </a>
							</div>

							<div class="header-cart-wrapbtn">
								<!-- Button -->
								<a href="#"
									class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									결제하기 </a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
		</div>
	</div>

	<!-- Menu Mobile -->
	<div class="wrap-side-menu">
		<nav class="side-menu">
			<ul class="main-menu">
				<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8"><span
					class="topbar-child1"> Free shipping for standard order over
						$100 </span></li>

				<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
					<div class="topbar-child2-mobile">
						<span class="topbar-email"> fashe@example.com </span>

						<div class="topbar-language rs1-select2">
							<select class="selection-1" name="time">
								<option>USD</option>
								<option>EUR</option>
							</select>
						</div>
					</div>
				</li>

				<li class="item-topbar-mobile p-l-10">
					<div class="topbar-social-mobile">
						<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
							href="#" class="topbar-social-item fa fa-instagram"></a> <a
							href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
							href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
							href="#" class="topbar-social-item fa fa-youtube-play"></a>
					</div>
				</li>

				<li class="item-menu-mobile"><a href="index.html">Home</a>
					<ul class="sub-menu">
						<li><a href="index.html">Homepage V1</a></li>
						<li><a href="home-02.html">Homepage V2</a></li>
						<li><a href="home-03.html">Homepage V3</a></li>
					</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
				</li>

				<li class="item-menu-mobile"><a href="product.html">Shop</a></li>

				<li class="item-menu-mobile"><a href="product.html">Sale</a></li>

				<li class="item-menu-mobile"><a href="cart.html">Features</a></li>

				<li class="item-menu-mobile"><a href="blog.html">Blog</a></li>

				<li class="item-menu-mobile"><a href="about.html">About</a></li>

				<li class="item-menu-mobile"><a href="contact.html">Contact</a>
				</li>
			</ul>
		</nav>
	</div>
</header>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
// 숫자 3자리 마다 콤마 찍는 함수
function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

/* 장바구니 목록 메뉴바에 출력 */
function cartView() {
	$.ajax({
		type:"get",
		url:"/user/page/member/menucart/",
		dataType:"json",
		success:function(data){
			var html = "";
			if(data.map.list.length > 0){
				for(var i = 0; i<data.map.list.length; i++){
					//console.log("장바구니 상품명 = "+data.map.list[i].pName);
					html += "<li class='header-cart-item'>";
					html += "<div class='header-cart-item-img'>";
					html += "<img src='/product/"+data.map.list[i].pImg1+"' alt='IMG'>";
					html += "</div>";
					html += "<div class='header-cart-item-txt'>";
					html += "<a href='#' class='header-cart-item-name'>"+data.map.list[i].pName+"</a>";
					html += "<span href='#' class='header-cart-item-info'>"+data.map.list[i].amount+" x "+data.map.list[i].pPrice+"</span>";
					html += "</div>";
					html += "</li>";
				}
			}else{
				html += "<div class='header-cart-item'>장바구니가 비었습니다</div>";
			}
			
			$("#menuCart").html(html);
			$("#sumCart").html(numberWithCommas(data.map.sumCart));
			$("#cartExist").text(data.map.cartExist);
			
		},
		error:function(data){
			console.log(data);
		}
	});
}


$(function(){
	var session = "${sessionScope.member}";
	
	if(session != null && session != "") {
		cartView();
	}
});
</script>