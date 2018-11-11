<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>무신사</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/user/include/css.jsp"%>
<!-- 무신사 css 시작 -->
<%@ include file="/WEB-INF/views/user/include/moosinsa_css.jsp"%>

<!-- css 끝 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


</head>
<body class="animsition">
	<!-- 해더파일 시작 -->
	<%@ include file="/WEB-INF/views/user/include/header.jsp"%>
	<!-- 해더파일 끝 -->

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: url(/u_resources/images/heading-pages-01.jpg);">
		<h2 class="l-text2 t-center">내 정보</h2>
	</section>

	<!-- Cart -->
	<div class="container">



		<fieldset>

			<!-- Form Name -->
			<legend>
				<h2>내 정보</h2>
			</legend>

			<!-- Text input-->

			<div class="container">


				<div class="grab_layer">
					<fieldset></fieldset>
					<div class="grab_main pd0">

						<div class="main-content">
							<div class="section">
								<div class="content-wrapper wrapper">
									<div class="userInfo-wrapper">
										<div class="userStatus-box box">
											<div class="userPhoto"
												onclick="goHref('?r=home&mod=member_info&page=simbol');"
												title="사진등록">
												<img
													src="https://image.musinsa.com/mfile_s01/_simbols/0.gif"
													alt="" />
											</div>
											<div class="userStatus">
												<div class="statusBox">
													<p>
														<span class="level">${member.mGrade }</span> <span
															class="name">${member.mName }</span><span>님</span>

													</p>
													<p class="row-2">
														<span>가입 날짜 : ${member.mRegDate }</span><br> <span>마지막
															로그인 : ${member.mLoginDate }</span>

													</p>

												</div>

											</div>
										</div>

										<div class="savings-box box">
											<div class="header">
												<span class="title">적립금</span>

											</div>
											<span class="number">${member.mPoint }</span> <span
												class="unit">원</span>
										</div>
										<div class="coupon-box box">
											<div class="header">
												<span class="title">쿠폰</span>

											</div>
											<span class="number">0</span> <span class="unit">장</span>
										</div>

									</div>


									<div class="my_menu pdTop20">
										<ul class="title">
											<li><a href="/user/page/member/myInfo_main">회원 정보</a></li>
											<li><a href="/user/page/member/myInfo_grade">회원 등급</a></li>
											<li><a href="/user/page/member/myInfo_point">적립금</a></li>
											<li class='selected'><a
												href="/user/page/member/myInfo_memberOut">회원탈퇴</a></li>
										</ul>
									</div>

									<div id="image_add" class="pd20 pdTop0">

											<p class="utit">회원 탈퇴</p>

											<div class="container">
												<form class="form-horizontal" id="delete"
													data-bv-message="This value is not valid"
													data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
													data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
													data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
													<fieldset>
														<br> <br> <input type="hidden" id="mId" name="mId"
															value="${sessionScope.member.mId}"> <input type="hidden"
															name="mName" id="mName"
															value="${sessionScope.member.mName}">

														<!-- Text input-->
														<div class="form-group">
															<label class="col-md-4 control-label">탈퇴가능 날짜</label>
															<div class="col-md-4 inputGroupContainer">
																가입후 <strong>3</strong>일 이후부터 탈퇴 가능합니다.<br> <strong>${sessionScope.member.canOut}</strong>
																이후부터 회원탈퇴 가능합니다.

															</div>
														</div>




														<!-- Text input-->
														<div class="form-group">
															<label class="col-md-4 control-label">비밀번호</label>
															<div class="col-md-4 inputGroupContainer">
																<div class="input-group">
																	<span class="input-group-addon"><i
																		class="glyphicon glyphicon-lock"></i></span> <input
																		type="password" class="form-control" name="mPw"
																		required data-bv-notempty-message="비밀번호를 입력해주세요."
																		data-bv-identical="false"
																		data-bv-identical-field="mPwCheck"
																		data-bv-different="true" placeholder="비밀번호를 입력해주세요" />
																</div>
															</div>
														</div>

														<!-- Text input-->

														<div class="form-group">
															<label class="col-md-4 control-label">비밀번호 확인</label>
															<div class="col-md-4 inputGroupContainer">
																<div class="input-group">
																	<span class="input-group-addon"><i
																		class="glyphicon glyphicon-lock"></i></span> <input
																		type="password" class="form-control" name="mPwCheck"
																		required data-bv-notempty-message="비밀번호를 입력해주세요."
																		data-bv-identical="true" data-bv-identical-field="mPw"
																		data-bv-identical-message="비밀번호가 일치하지 않습니다."
																		data-bv-different="true"
																		placeholder="비밀번호를 다시 입력해주세요." />
																</div>
															</div>
														</div>

														<div class="form-group">
															<label class="col-md-4 control-label">탈퇴 사유</label>
															<div class="col-md-4 inputGroupContainer">
																<div class="input-group">

																	<textarea name="moReason" required
																		data-bv-notempty-message="사유를 입력해주세요." required>
                                                                </textarea>
																</div>
															</div>
														</div>
														<!-- Text input-->

														<br>
														<!-- Button -->
														<div class="form-group">
															<label class="col-md-4 control-label"></label>
															<div class="col-md-4">
																<button type="button" id="btnDelete"
																	class="btn btn-warning">
																	탈퇴하기 <span class="glyphicon glyphicon-send"></span>
																</button>
															</div>
														</div>

													</fieldset>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
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
		$(document).ready(
				function() {
					$("#btnDelete").click(function() {
						var mId = $("#mId").val();
						var mName = $("#mName").val();
						var mPw = $("#mPw").val();
						
						if (mPw == "") {
							alert("패스워드 입력해 주세요");
							return false;
						}
						var list = $("#delete").serialize();
						if (confirm("정말 삭제하시겠습니까?")) {
							$.ajax({
								url : "/user/page/member/procMemberOut",
								type : "post",
								dataType : "json",
								data : $("#delete").serialize(),
								success : function(data) {
									console.log(data);
									if (data.result == "400") {
										alert("삭제성공");
										location.href = "/user/index";
									}else if(data.result=="402"){
										alert("아직 탈퇴할수 없습니다.");
									}else{
										alert("삭제할수 없습니다.");
									}
								},
								error : function(data) {
									console.log(data);
								}
							});
						}
					});

					//부트스트랩 유효성검사
					$('#modify').bootstrapValidator();

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
