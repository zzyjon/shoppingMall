<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
											<div class="userPhoto" title="사진등록">
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
											<span class="number">${gradeDetail.mPoint }</span> <span
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
											<li class='selected'><a
												href="/user/page/member/myInfo_grade">회원 등급</a></li>
											<li><a href="/user/page/member/myInfo_point">적립금</a></li>
											<li><a href="/user/page/member/myInfo_memberOut">회원탈퇴</a></li>
										</ul>
									</div>

									<div class="cbox">
										<ul class="m_class0">
											<li class="m_class1">
												<p class="th">회원등급</p>
												<p class="price">
													<strong class="classn">${gradeDetail.mGrade }</strong>
												</p>
											</li>
											<li class="m_class2">
												<table>
													<tr>

														<td class="nobd">
														<td class="nobd">
															<p class="th">누적구매금액</p>
															<p class="price">
																<strong class="sa_f09f"><fmt:formatNumber
																		groupingUsed="true">${gradeDetail.mBuySum}</fmt:formatNumber>
																</strong> 원<strong class="classn"> / <fmt:formatNumber
																		groupingUsed="true">${gradeDetail.gBuyMaxPrice }</fmt:formatNumber></strong>원
															</p>
														</td>
													</tr>

												</table>
											</li>


										</ul>
										<div class="clear20"></div>
									</div>
									<div class="sa_tbox">
										<c:choose>
											<c:when test="${gradeDetail.remainPrice < 0 }">
												<h2>
													마지막 등급인 <strong>${gradeDetail.mGrade}</strong>입니다 .
												</h2>
											</c:when>
											<c:otherwise>
												<h2>
													다음 등급인 <strong>${gradeDetail.nextGrade }</strong>까지 <strong
														class="blue">${gradeDetail.remainPrice }</strong>원 남았습니다.
												</h2>
											</c:otherwise>

										</c:choose>
									</div>
									<div class="tbox">- 회원등급은 로그인시와 마이페이지 접속시 갱신됩니다.</div>
									<table width="100%" class="tbl_mem" summary="무신사 적립금 정책입니다.">
										<colgroup>
											<col width="8%" />
											<col width="18%" />
											<col width="18%" />
											<col width="18%" />
											<col width="18%" />
										</colgroup>
										<tr class="col">
											<th scope="col">등급명</th>
											<c:forEach var="grade" items="${grade }">
												<th scope="col">${grade.mGrade }</th>
											</c:forEach>
										</tr>
										<tr>
											<th scope="row">등급점수</th>
											<c:forEach var="grade" items="${grade }">
												<td><c:choose>
														<c:when test="${grade.gBuyMinPrice == 0 }">
                              							 회원가입
                               							</c:when>
														<c:otherwise>
														${grade.gBuyMinPrice }원
														</c:otherwise>
													</c:choose>~${grade.gBuyMaxPrice }원</td>
											</c:forEach>
										</tr>


									</table>
									<br> <br>



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
