<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/user/include/css.jsp"%>

<!-- css 끝 -->
<style>
@media ( min-width : 768px) {
	.omb_row-sm-offset-3 div:first-child[class*="col-"] {
		margin-left: 25%;
	}
}

.omb_login .omb_authTitle {
	text-align: center;
	line-height: 300%;
}

.omb_login .omb_socialButtons a {
	color: white;
	//
	In
	yourUse
	@body-bg
	opacity
	:
	0.9;
}

.omb_login .omb_socialButtons a:hover {
	color: white;
	opacity: 1;
}

.omb_login .omb_socialButtons .omb_btn-facebook {
	background: #3b5998;
}

.omb_login .omb_socialButtons .omb_btn-strava {
	background: #FC4C02;
}

.omb_login .omb_socialButtons .omb_btn-google {
	background: #c32f10;
}

.omb_login .omb_loginOr {
	position: relative;
	font-size: 1.5em;
	color: #aaa;
	margin-top: 1em;
	margin-bottom: 1em;
	padding-top: 0.5em;
	padding-bottom: 0.5em;
}

.omb_login .omb_loginOr .omb_hrOr {
	background-color: #cdcdcd;
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

.omb_login .omb_loginOr .omb_spanOr {
	display: block;
	position: absolute;
	left: 50%;
	top: -0.6em;
	margin-left: -1.5em;
	background-color: white;
	width: 3em;
	text-align: center;
}

.omb_login .omb_loginForm .input-group.i {
	width: 2em;
}

.omb_login .omb_loginForm  .help-block {
	color: red;
}

@media ( min-width : 768px) {
	.omb_login .omb_forgotPwd {
		text-align: right;
		margin-top: 10px;
	}
}
</style>
</head>
<body class="animsition">
	<!-- 해더파일 시작 -->
	<%@ include file="/WEB-INF/views/user/include/header.jsp"%>
	<!-- 해더파일 끝 -->

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: url(/u_resources/site-images/login_banner.jpeg);">
		<h2 class="l-text2 t-center">로그인</h2>
	</section>

	<!-- Cart -->
	<div class="container">



		<fieldset>

			<!-- Form Name -->
			<legend>
				<h2>로그인 하기</h2>
			</legend>

			<!-- Text input-->

			<div class="container">


				<div class="omb_login">





					<div class="row omb_row-sm-offset-3">
						<div class="col-xs-12 col-sm-4">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user"></i></span>
									<input type="text" class="form-control" id="mId" 
										placeholder="ID">
								</div>
								<span class="help-block"></span>

								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="mPw"
										placeholder="Password">

								</div>
								<br> <br> <br>


								<div class="col-xs-12 col-sm-6">
									<label class="checkbox"> <input type="checkbox"
										value="remember-me">아이디 기억하기
									</label>
								</div>
								<div class="col-xs-12 col-sm-6">
									<p class="omb_forgotPwd">
										<a href="#" onclick="myFunction()">아이디/비밀번호 찾기</a>
									</p>
								</div>


								<button class="btn btn-lg btn-primary btn-block" type="button" id="btnLogin">로그인</button>
						</div>

					</div>
					<div class="row omb_row-sm-offset-3 omb_loginOr">
						<div class="col-xs-12 col-sm-6">
							<hr class="omb_hrOr">
							<span class="omb_spanOr">SNS</span>
						</div>
					</div>

					<div class="row omb_row-sm-offset-3 omb_socialButtons">
						<div class="col-xs-6 col-sm-3">
							<a href="#" class="btn btn-lg btn-block omb_btn-google"> <i
								class="fa fa-google-plus visible-xs"></i> <span
								class="hidden-xs">Google+</span>
							</a>
						</div>

						<div class="col-xs-6 col-sm-3">
							<a href="#" class="btn btn-lg btn-block omb_btn-facebook"> <i
								class="fa fa-facebook visible-xs"></i> <span class="hidden-xs">Facebook</span>
							</a>
						</div>
						<br> <br> <br> <br> <br> <br>

					</div>

				</div>




			</div>


		</fieldset>

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
	function myFunction() {
        window.open("http://localhost/user/page/member/searchUserInfo", "MsgWindow", "width=400,height=400");
           
        }
		$(document).ready(function() {
			//아이디 / pw찾기
			
			//로그인
			$("#btnLogin").click(function(){
				var mId = $("#mId").val();
				var mPw = $("#mPw").val();
				$.ajax({
					url:"/member/procLogin",
					type:"post",
					data:{"mId":mId, "mPw":mPw},
					dataType:"json",
					success:function(data){
						console.log(data);
						if(data.result == "200"){
							alert("로그인 성공");
							location.href="/user/index";
							//location.href() 이것과 차이는?
						}else{
							alert("아이디와 비밀번호가 일치하지 않습니다.");							
						}
					},
					error:function(data){
						console.log(data);
						alert("잘못된 요청");
					}
				});
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
					$('.block2-btn-addcart').each(
							function() {
								var nameProduct = $(this).parent().parent()
										.parent().find('.block2-name').html();
								$(this).on(
										'click',
										function() {
											swal(nameProduct,
													"is added to cart !",
													"success");
										});
							});

					$('.block2-btn-addwishlist').each(
							function() {
								var nameProduct = $(this).parent().parent()
										.parent().find('.block2-name').html();
								$(this).on(
										'click',
										function() {
											swal(nameProduct,
													"is added to wishlist !",
													"success");
										});
							});
						});
	</script>
</body>
</html>
