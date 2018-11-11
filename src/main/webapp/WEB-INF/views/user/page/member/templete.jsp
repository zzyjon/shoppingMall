<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>무신사</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/user/include/css.jsp"%>

<!-- css 끝 -->
<script type="text/javascript">
	function findPost() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						} // 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('mPost').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('mMainAddress').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('mSubAddress').focus();
					}
				}).open();
	}
</script>
</head>
<body class="animsition">

	<!-- Header -->
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
					<span class="topbar-email"> fashe@example.com </span>

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
				<a href="index.html" class="logo"> <img
					src="/u_resources/images/icons/logo.png" alt="IMG-LOGO">
				</a>

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li><a href="index.html">Home</a>
								<ul class="sub_menu">
									<li><a href="index.html">Homepage V1</a></li>
									<li><a href="home-02.html">Homepage V2</a></li>
									<li><a href="home-03.html">Homepage V3</a></li>
								</ul></li>

							<li><a href="product.html">Shop</a></li>

							<li class="sale-noti"><a href="product.html">Sale</a></li>

							<li><a href="cart.html">Features</a></li>

							<li><a href="blog.html">Blog</a></li>

							<li><a href="about.html">About</a></li>

							<li><a href="contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
                <div class="header-icons">
                    <div class="header-wrapicon1">
                        <img src="images/icons/icon-header-01.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
                        <span class="header-icons-noti">0</span>

                        <!-- Header cart noti -->
                        <div class="header-cart header-dropdown">




                            







                            <div class="header-cart-buttons">
                                <div class="header-cart-wrapbtn">
                                    <!-- Button -->
                                    <a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										회원가입
									</a>
                                </div>

                                <div class="header-cart-wrapbtn">
                                    <!-- Button -->
                                    <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										로그인
									</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <span class="linedivide1"></span>

                    <div class="header-wrapicon2">
                        <img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
                        <span class="header-icons-noti">0</span>

                        <!-- Header cart noti -->
                        <div class="header-cart header-dropdown">
                            <ul class="header-cart-wrapitem">
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="images/item-cart-01.jpg" alt="IMG">
                                    </div>

                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
											White Shirt With Pleat Detail Back
										</a>

                                        <span class="header-cart-item-info">
											1 x $19.00
										</span>
                                    </div>
                                </li>

                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="images/item-cart-02.jpg" alt="IMG">
                                    </div>

                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
											Converse All Star Hi Black Canvas
										</a>

                                        <span class="header-cart-item-info">
											1 x $39.00
										</span>
                                    </div>
                                </li>

                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="images/item-cart-03.jpg" alt="IMG">
                                    </div>

                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
											Nixon Porter Leather Watch In Tan
										</a>

                                        <span class="header-cart-item-info">
											1 x $17.00
										</span>
                                    </div>
                                </li>
                            </ul>

                            <div class="header-cart-total">
                                Total: $75.00
                            </div>

                            <div class="header-cart-buttons">
                                <div class="header-cart-wrapbtn">
                                    <!-- Button -->
                                    <a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
                                </div>

                                <div class="header-cart-wrapbtn">
                                    <!-- Button -->
                                    <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
						src="/u_resources/images/icons/icon-header-01.png" class="header-icon1"
						alt="ICON">
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
										<a href="#" class="header-cart-item-name"> White Shirt
											With Pleat Detail Back </a> <span class="header-cart-item-info">
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
									<a href="cart.html"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart </a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out </a>
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
						class="topbar-child1"> Free shipping for standard order
							over $100 </span></li>

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

					<li class="item-menu-mobile"><a href="cart.html">Features</a>
					</li>

					<li class="item-menu-mobile"><a href="blog.html">Blog</a></li>

					<li class="item-menu-mobile"><a href="about.html">About</a></li>

					<li class="item-menu-mobile"><a href="contact.html">Contact</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: url(/u_resources/images/heading-pages-01.jpg);">
		<h2 class="l-text2 t-center">회원가입</h2>
	</section>

	<!-- Cart -->
	<div class="container">

		<form class="form-horizontal" id="register" role="form"
			data-toggle="validator" data-bv-message="This value is not valid"
			data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
			data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
			data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
			<fieldset>

				<!-- Form Name -->
				<legend>정보를 입력해주세요</legend>

				<!-- Text input-->


				<div class="form-group">
					<label class="col-md-4 control-label">아이디</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="mId" id="mId"
								placeholder="아이디를 입력해주세요." class="form-control" type="text"
								required data-bv-notempty-message="아이디를 입력해주세요."
								pattern="^[a-z0-9]+$"
								data-bv-regexp-message="오직 알파벳과 숫자만 사용 할 수 있습니다."
								data-bv-stringlength="true" data-bv-stringlength-min="6"
								data-bv-stringlength-max="15"
								data-bv-stringlength-message="6글자이상 15글자 이하로 입력해주세요." />
						</div>
					</div>
					<input type="button" value="중복확인" class="btn btn-primary"
						id="btnDupCheck">
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">비밀번호</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input type="password"
								class="form-control" name="mPw" required
								data-bv-notempty-message="비밀번호를 입력해주세요."
								data-bv-identical="false" data-bv-identical-field="mPwCheck"
								data-bv-different="true" data-bv-different-field="memberId"
								data-bv-different-message="비밀번호는 아이디와 같을 수 없습니다."
								placeholder="비밀번호를 입력해주세요" pattern="^[a-z0-9]+$"
								data-bv-regexp-message="오직 알파벳과 숫자만 사용 할 수 있습니다."
								data-bv-stringlength="true" data-bv-stringlength-min="6"
								data-bv-stringlength-max="15"
								data-bv-stringlength-message="6글자이상 15글자 이하로 입력해주세요." />
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">비밀번호 확인</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input type="password"
								class="form-control" name="mPwCheck" required
								data-bv-notempty-message="비밀번호를 입력해주세요."
								data-bv-identical="true" data-bv-identical-field="mPw"
								data-bv-identical-message="비밀번호가 일치하지 않습니다."
								placeholder="비밀번호를 다시 입력해주세요." />
						</div>
					</div>
				</div>
				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">이름</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="mName"
								placeholder="이름을 입력해주세요" class="form-control" type="text"
								required data-bv-notempty-message="이름을 입력해주세요"
								pattern="^[가-힣]+$" data-bv-regexp-message="한글로입력해주세요"
								data-bv-stringlength="true" data-bv-stringlength-min="2"
								data-bv-stringlength-max="4"
								data-bv-stringlength-message="2글자이상 4글자 이하로 입력해주세요.">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">닉네임</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="mNick"
								id="mNick" placeholder="닉네임을 입력해주세요" class="form-control"
								type="text" required data-bv-notempty-message="닉네임을 입력해주세요."
								pattern="^[가-힣a-z0-9]+$"
								data-bv-regexp-message="영문,숫자,한글조합만 가능합니다"
								data-bv-stringlength="true" data-bv-stringlength-min="6"
								data-bv-stringlength-max="10"
								data-bv-stringlength-message="6글자이상 15글자 이하로 입력해주세요.">
						</div>
					</div>
				</div>
				<!-- radio checks -->
				<div class="form-group">
					<label class="col-md-4 control-label">성별</label>
					<div class="col-md-4">
						<div class="radio">
							<label> <input type="radio" name="mGender" value="M"
								required data-bv-notempty-message="성별을 선택해주세요." /> 남자
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="mGender" value="Y" />
								여자
							</label>
						</div>
					</div>
				</div>


				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">생년월일</label>
					<div class="col-md-4 inputGroupContainer">
						<div class='input-group date' id='datetimepicker8'>
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span> <input type="text"
								class="form-control" name="mBirth" data-bv-date="false"
								data-bv-date-format="YYYY-MM-DD"
								data-bv-date-message="양식에 맞게 입력하세요"
								placeholder="날짜를 입력해주세요(YYYY-MM-DD)" required
								data-bv-notempty-message="날짜를 입력해주세요" />
						</div>
					</div>
				</div>


				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">이메일</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <input
								class="form-control" name="mEmail" type="email"
								data-bv-emailaddress-message="The input is not a valid email address"
								placeholder="이메일을 입력해주세요" required
								data-bv-notempty-message="이메일을 입력해주세요" />
						</div>
					</div>
				</div>


				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">휴대전화번호</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input name="mPhone"
								placeholder="01012345678" class="form-control" type="text"
								pattern="^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$"
								data-bv-regexp-message="휴대번호양식에맞게 작성해주세요" required
								data-bv-notempty-message="전화번호를 입력해주세요">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">우편번호</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="mPost"
								placeholder="우편번호를 입력해주세요" class="form-control" type="text">
						</div>
					</div>
					<input type="button" class="btn btn-primary" onclick="findPost()"
						value="찾기">

				</div>


				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">기본주소</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="mMainAddress"
								placeholder="기본주소를 입력해주세요" class="form-control" type="text">
						</div>
					</div>
				</div>



				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">상세주소</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="mSubAddress"
								placeholder="상세주소를 입력해주세요" class="form-control" type="text">
						</div>
					</div>
				</div>
				<br> <br> <br>



				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="button" class="btn btn-warning" id="btnRegist">
							가입하기 <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
	<!-- 푸터 끝  -->

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection1 -->
	<div id="dropDownSelect1"></div>


	<!-- js 시작 -->
	<%@ include file="/WEB-INF/views/user/include/js.jsp"%>
	<!-- js 끝  -->
	<script type="text/javascript">
		$(document).ready(function() {
			//다다다
			$("#btnRegist").click(function() {
				var info = $("#register").serialize(); 
				alert(info);
					$.ajax({
							url : "/user/page/member/memberRegist",
							type : "post",
							dataType : "json",
							data : $("#register").serialize(),
							success : function(data) {
								if (data.result == "300") {
									alert("회원가입을 축하드립니다.");
									//location.href = "/user/page/member/memberRegistSuccess";
									}else{
										alert("회원정보를 확인해주세요")
									}
								},error : function(data) {
									console.log(data);
									}
								});
					});
			//아이디 중복확인
			$("#btnDupCheck").click(function() {
				var mId =  $("#mId").val();
				alert(mId);
				$.ajax({
					url:"/user/page/member/memberIdCheck",
					type:"post",
					dataType:"json",
					data:{
						"mId" : mId
						},
					success:function(data){
						if(data.result=="200"){
							alert("중복되는 아이디입니다.");
							$("#mId").val("");
						}else{
							alert("사용가능한 아이디입니다.");
						}
						
					},
					error:function(data){
						console.log(data);
						
					}
					
					});
			});
			

							//부트스트랩 유효성검사
							$('#register').bootstrapValidator();

							//생년월일
							$('#datetimepicker8').datepicker({
								format : "yyyy-mm-dd",
								autoclose : true
							});
							//네비게이션바
							$(".selection-1").select2({
								minimumResultsForSearch : 20,
								dropdownParent : $('#dropDownSelect1')
							});

							$(".selection-2").select2({
								minimumResultsForSearch : 20,
								dropdownParent : $('#dropDownSelect2')
							});
							$(".selection-1").select2({
								minimumResultsForSearch : 20,
								dropdownParent : $('#dropDownSelect1')
							});
							$('.block2-btn-addcart')
									.each(
											function() {
												var nameProduct = $(this)
														.parent().parent()
														.parent().find(
																'.block2-name')
														.html();
												$(this)
														.on(
																'click',
																function() {
																	swal(
																			nameProduct,
																			"is added to cart !",
																			"success");
																});
											});

							$('.block2-btn-addwishlist')
									.each(
											function() {
												var nameProduct = $(this)
														.parent().parent()
														.parent().find(
																'.block2-name')
														.html();
												$(this)
														.on(
																'click',
																function() {
																	swal(
																			nameProduct,
																			"is added to wishlist !",
																			"success");
																});
											});
						});
	</script>
</body>
</html>
