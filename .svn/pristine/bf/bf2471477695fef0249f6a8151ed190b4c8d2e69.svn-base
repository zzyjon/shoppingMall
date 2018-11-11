<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
														<span class="level">${memberList.mGrade }</span> <span
															class="name">${memberList.mName }</span><span>님</span>

													</p>
													<p class="row-2">
														<span>가입 날짜 : ${memberList.mRegDate }</span><br> <span>마지막
															로그인 : ${memberList.mLoginDate }</span>

													</p>

												</div>

											</div>
										</div>

										<div class="savings-box box">
											<div class="header">
												<span class="title">적립금</span>

											</div>
											<span class="number">${memberList.mPoint }</span> <span
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
											<li class='selected'><a
												href="/user/page/member/myInfo_main">회원 정보</a></li>
											<li><a href="/user/page/member/myInfo_grade">회원 등급</a></li>
											<li><a href="/user/page/member/myInfo_point">적립금</a></li>
											<li><a href="/user/page/member/myInfo_memberOut">회원탈퇴</a></li>
										</ul>
									</div>

									<div id="image_add" class="pd20 pdTop0">

										<p class="ptit">내 사진</p>
										<div class="photo"></div>
										<div class="msg">
											회원님을 알릴 수 있는 사진을 등록해 주세요.<br /> 등록된 사진은 회원님의 게시물이나 댓글등에
											사용됩니다.<br />
										</div>
										<div class="clear"></div>
										<div class="upload">
											<input type="file" name="upfile" class="upfile" />
										</div>




										<p class="utit">회원 정보</p>
										<div class="container">
											<form class="form-horizontal" id="modify"
												data-bv-message="This value is not valid"
												data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
												data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
												data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
												<fieldset>
													<div class="form-group">
														<label class="col-md-4 control-label">아이디</label>
														<div class="col-md-4 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																	class="glyphicon glyphicon-user"></i></span> <input
																	class="form-control" type="text" 
																	value="${memberList.mId}" disabled>
																	<input type="hidden" name="mId" value="${memberList.mId }">
															</div>
														</div>

													</div>

													<div class="form-group">
														<label class="col-md-4 control-label">현재 비밀번호</label>
														<div class="col-md-4 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																	class="glyphicon glyphicon-lock"></i></span> <input
																	type="password" class="form-control" name="mPw"
																	id="mPw" required
																	data-bv-notempty-message="비밀번호를 입력해주세요."
																	placeholder="비밀번호를 입력해주세요" />
															</div>
														</div>
													</div>


													<!-- Text input-->

													<div class="form-group">
														<label class="col-md-4 control-label">변경할 비밀번호</label>
														<div class="col-md-4 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																	class="glyphicon glyphicon-lock"></i></span> <input
																	type="password" class="form-control" name="mPwChange"
																	required data-bv-notempty-message="비밀번호를 입력해주세요."
																	data-bv-identical="false"
																	data-bv-identical-field="mPwChangeCheck"
																	data-bv-different="true"
																	data-bv-different-field="memberId"
																	data-bv-different-message="비밀번호는 아이디와 같을 수 없습니다."
																	placeholder="비밀번호를 입력해주세요" pattern="^[a-z0-9]+$"
																	data-bv-regexp-message="오직 알파벳과 숫자만 사용 할 수 있습니다."
																	data-bv-stringlength="true"
																	data-bv-stringlength-min="6"
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
																	class="glyphicon glyphicon-lock"></i></span> <input
																	type="password" class="form-control"
																	name="mPwChangeCheck"
																	data-bv-notempty-message="비밀번호를 입력해주세요."
																	data-bv-identical="true"
																	data-bv-identical-field="mPwChange"
																	data-bv-identical-message="비밀번호가 일치하지 않습니다."
																	data-bv-different="true"
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
																	class="glyphicon glyphicon-user"></i></span> <input
																	class="form-control" type="text"
																	value="${memberList.mName}" disabled>
															</div>
														</div>
													</div>

													<!-- radio checks -->
													<div class="form-group">
														<label class="col-md-4 control-label">성별</label>
														<div class="col-md-4">
															<div class="radio">
																<label> <c:choose>
																		<c:when test="${memberList.mGender == 'M' }">
																			<input type="radio" name="mGender" value="M" required
																				data-bv-notempty-message="성별을 선택해주세요." checked
																				disabled /> 남자
                                                                </c:when>
																		<c:otherwise>
																			<input type="radio" name="mGender" value="M" required
																				data-bv-notempty-message="성별을 선택해주세요." disabled /> 남자
                                                                </c:otherwise>
																	</c:choose>
																</label>
															</div>
															<div class="radio">
																<label> <c:choose>
																		<c:when test="${memberList.mGender == 'W' }">
																			<input type="radio" name="mGender" value="W" required
																				data-bv-notempty-message="성별을 선택해주세요." checked
																				disabled /> 여자
                                                                </c:when>
																		<c:otherwise>
																			<input type="radio" name="mGender" value="W" required
																				data-bv-notempty-message="성별을 선택해주세요." disabled /> 여자
                                                                </c:otherwise>
																	</c:choose>

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
																	class="glyphicon glyphicon-calendar"></i></span> <input
																	class="form-control" type="text"
																	value="${memberList.mBirth}" disabled>
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
																	value="${memberList.mEmail}"
																	data-bv-emailaddress-message="이메일 양식을 맞추세요"
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
																	class="glyphicon glyphicon-earphone"></i></span> <input
																	name="mPhone" value="${memberList.mPhone}"
																	placeholder="01012345678" class="form-control"
																	type="text"
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
																	class="glyphicon glyphicon-home"></i></span> <input
																	name="mPost" id="mPost" value="${memberList.mPost }"
																	placeholder="우편번호를 입력해주세요" class="form-control"
																	type="text">
															</div>
														</div>
														<button type="button" class="btn btn-primary"
															onclick="findPost()">찾기</button>

													</div>


													<!-- Text input-->

													<div class="form-group">
														<label class="col-md-4 control-label">기본주소</label>
														<div class="col-md-4 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																	class="glyphicon glyphicon-home"></i></span> <input
																	name="mMainAddress" id="mMainAddress"
																	value="${memberList.mMainAddress }"
																	placeholder="기본주소를 입력해주세요" class="form-control"
																	type="text">
															</div>
														</div>
													</div>



													<!-- Text input-->

													<div class="form-group">
														<label class="col-md-4 control-label">상세주소</label>
														<div class="col-md-4 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																	class="glyphicon glyphicon-home"></i></span> <input
																	name="mSubAddress" id="mSubAddress"
																	value="${memberList.mSubAddress }" "상세주소를
																	입력해주세요" class="form-control" type="text">
															</div>
														</div>
													</div>
													<br> <br> <br>

													<!-- Button -->
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-4">
															<button type="button" id="btnModify" class="btn btn-warning">
																수정하기 <span class="glyphicon glyphicon-send"></span>
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
		function findPost() {
			new daum.Postcode({
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
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('mPost').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('mMainAddress').value = fullAddr;

					// 커서를 상세주소 필드로 이동한다.
					document.getElementById('mSubAddress').focus();
				}
			}).open();
		}
		$(document).ready(function() {
			//수정처리
					$("#btnModify").click(function() {
						var mPw = $("#mPw").val();
						if (mPw == "") {
							alert("패스워드 입력해 주세요");
							return false;
						}
						var list = $("#modify").serialize();
						$.ajax({
							url : "/admin/page/member/myInfo_modify",
							type : "post",
							dataType : "json",
							data : $("#modify").serialize(),
							success : function(data) {
								if (data.result == "300") {
									alert("수정성공");
									location.reload();
								}else if(data.result =="201"){
									alert("비밀번호가 일치하지 않습니다.");
								}else {
									alert("정보를 확인해주세요.");
								}
							},
							error : function(data) {
								console.log(data);
							}
						});
					});

					//부트스트랩 유효성검사
					$('#modify').bootstrapValidator();

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
