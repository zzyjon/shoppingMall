<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>기본설정관리</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/admin/include/css.jsp"%>
<!-- css 끝 -->



</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 해더파일 시작 -->
		<%@ include file="/WEB-INF/views/admin/include/header.jsp"%>
		<!-- 해더파일 끝 -->
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<!-- 왼쪽 유저 패널 시작 -->
				<%@ include file="/WEB-INF/views/admin/include/user_panel.jsp"%>
				<!-- 왼쪽 유저 패널 끝 -->
				<!-- search form -->
				<!-- 검색폼 시작 -->
				<%@ include file="/WEB-INF/views/admin/include/search_form.jsp"%>
				<!-- 검색폼 끝 -->
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<!-- 왼쪽 메뉴 시작 -->
				<%@ include
					file="/WEB-INF/views/admin/include/left_menu/member_menu.jsp"%>
				<!-- 왼쪽 메뉴 끝 -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					회원관리 <small>회원조회</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>
			<!-- 수정 모달제어 -->

			<div class="modal fade" id="modalModify" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">
								<p id="modalMainId"></p>
							</h4>
						</div>
						<div class="modal-body">
							<div class="modal-body">

								<form class="form-horizontal" 
									id="modify" data-bv-message="This value is not valid"
									data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
									data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
									data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">


									<div class="form-group">
										<label class="col-md-4 control-label">아이디</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-user"></i></span> <input name="mId"
													id="modalmId" placeholder="아이디를 입력해주세요."
													class="form-control" type="text" required
													data-bv-notempty-message="아이디를 입력해주세요."
													pattern="^[a-z0-9]+$"
													data-bv-regexp-message="오직 알파벳과 숫자만 사용 할 수 있습니다."
													data-bv-stringlength="true" data-bv-stringlength-min="6"
													data-bv-stringlength-max="15"
													data-bv-stringlength-message="6글자이상 15글자 이하로 입력해주세요." />
											</div>
										</div>
									</div>

									<!-- Text input-->

									<div class="form-group">
										<label class="col-md-4 control-label">비밀번호</label>
										<div class="col-md-4 inputGroupContainer">
											<input type="checkbox" id="pwChangeCheck">변경하기
											<div class="input-group" id="showChange">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-lock"></i></span> <input
													type="password" class="form-control" name="mPw"
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
										<label class="col-md-4 control-label">이름</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-user"></i></span> <input name="mName"
													id="modalmName" placeholder="이름을 입력해주세요"
													class="form-control" type="text" required
													data-bv-notempty-message="이름을 입력해주세요" pattern="^[가-힣]+$"
													data-bv-regexp-message="한글로입력해주세요"
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
													class="glyphicon glyphicon-user"></i></span> <input
													id="modalmNick" name="mNick" placeholder="닉네임을 입력해주세요"
													class="form-control" type="text" required
													data-bv-notempty-message="닉네임을 입력해주세요."
													pattern="^[가-힣a-z0-9]+$"
													data-bv-regexp-message="영문,숫자,한글조합만 가능합니다"
													data-bv-stringlength="true" data-bv-stringlength-min="6"
													data-bv-stringlength-max="10"
													data-bv-stringlength-message="6글자이상 15글자 이하로 입력해주세요.">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">성별</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group" id="modalmGender"></div>
											<input type="checkbox" id="genderChangeCheck">변경하기

											<div class="col-md-4" id="showChange2">
												<div class="radio">
													<label> <input type="radio" name="mGender"
														value="M" required data-bv-notempty-message="성별을 선택해주세요." />
														남자
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="mGender"
														value="W" /> 여자
													</label>
												</div>
											</div>
										</div>
									</div>






									<!-- Text input-->

									<div class="form-group">
										<label class="col-md-4 control-label">생년월일</label>
										<div class="col-md-4 inputGroupContainer">
											<div class='input-group date'>
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													type="text" class="form-control" name="modalmBirth"
													id='modalmBirth' name="mBirth" data-bv-date="false"
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
													class="form-control" id="modalmEmail" name="mEmail"
													type="email"
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
													class="glyphicon glyphicon-earphone"></i></span> <input
													name="mPhone" id="modalmPhone" placeholder="01012345678"
													class="form-control" type="text"
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
													id="modalmPost" placeholder="우편번호를 입력해주세요"
													class="form-control" type="text">
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
													id="modalmMainAddress" name="mMainAddress"
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
													class="glyphicon glyphicon-home"></i></span> <input
													id="modalSubAddress" name="mSubAddress"
													placeholder="상세주소를 입력해주세요" class="form-control" type="text">
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label">포인트</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span> <input
													id="modalmPoint" name="mPoint" placeholder="포인트를 입력해주세요"
													class="form-control" type="text">
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label">구매합계</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span> <input
													id="modalmBuySum" name="mBuySum" placeholder="상세주소를 입력해주세요"
													class="form-control" type="text">
											</div>
										</div>
									</div>

									<span class="msg-error error"></span>


								</form>


							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default pull-left"
								data-dismiss="modal">취소</button>
							<button type="button" id="btnModify"
								class="btn btn-primary">수정</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 모달제어 끝-->

			<!-- Main content -->
			<form id="memberSearch" action="/admin/page/member/memberList1"
				method="get">
				<section class="content">

					<!-- /.box -->
					<!-- 검색조건 -->
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">회원검색</h3>
						</div>
						<div class="box-body">
							<div class="row">
								<label for="#" class="col-md-2 control-label">키워드검색</label>
								<div class="col-md-2">
									<select class="form-control" name="memberSearchKeyType"
										id="memberSearchKeyType">
										<option value="">선택</option>
										<option value="all">통합검색</option>
										<option value="name">회원명</option>
										<option value="nick">닉네임</option>
										<option value="id">아이디</option>

									</select>

								</div>
								<div class="col-md-2">
									<input type="text" class="form-control"
										id="memberSearchKeyWord" name="memberSearchKeyWord"
										placeholder="검색어를 입력해주세요.">
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<label for="#" class="col-md-2 control-label">구매금액</label>
								<div class="col-md-2">
									<input type="text" class="form-control" id="buySumMin"
										name="buySumMin" placeholder="최소금액">
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" id="buySumMax"
										name="buySumMax" placeholder="최대금액">
								</div>

								<label for="#" class="col-md-2 control-label">적립금</label>
								<div class="col-md-2">
									<input type="text" class="form-control" placeholder="최소금액"
										id="pointMin" name="pointMin">
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" placeholder="최대금액"
										id="pointMax" name="pointMax">
								</div>

							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<label for="#" class="col-md-2 control-label">성별</label>

								<div class="col-md-4">
									<input type="radio" name="gender" value="M">남자 <input
										type="radio" name="gender" value="W">여자
								</div>
								<label for="#" class="col-md-2 control-label">방문횟수</label>
								<div class="col-md-2">
									<input type="text" class="form-control" placeholder="최소값"
										name="visitCountStart">
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" placeholder="최대값"
										name="visitCountEnd">
								</div>
							</div>

						</div>

						<div class="box-body">
							<div class="row">
								<label for="#" class="col-md-2 control-label">가입일</label>
								<div class="col-md-2">
									<div class="input-group date">
										<input type="text" class="form-control" placeholder="회원가입날짜"
											id="regDateStart" name=regDateStart>
									</div>
								</div>
								<div class="col-md-2">
									<div class="input-group date">
										<input type="text" class="form-control" placeholder="시작일"
											id="regDateEnd" name="regDateEnd">
									</div>
								</div>
								<label for="#" class="col-md-2 control-label">최종로그인</label>
								<div class="col-md-2">
									<div class="input-group date">
										<input type="text" class="form-control pull-right"
											placeholder="로그인날짜" id="loginDateStart" name="loginDateStart">
									</div>
								</div>
								<div class="col-md-2">
									<div class="input-group date">
										<input type="text" class="form-control" placeholder="로그인날짜"
											id="loginDateEnd" name="loginDateEnd">
									</div>
								</div>
							</div>

						</div>
						<td colspan="3">
					</div>
				</section>
				<!-- 검색조건 끝-->

				<!-- 검색버튼 -->
				<div class="">
					<button type="button" id="btnSearch">검색</button>
				</div>

			</form>



			<!-- 회원리스트 테이블 -->
			<section class="content">

				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">회원리스트</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="form-data" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>아이디</th>
											<th>이름</th>
											<th>상세정보</th>
											<th>별명</th>
											<th>등급</th>
											<th>적립금</th>
											<th>구매금액</th>
											<th>방문횟수</th>
											<th>가입일</th>
											<th>최종로그인</th>
											<th>수정</th>
											<th>추방</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="member" items="${list }">
											<tr>
												<td>${member.mNo }</td>
												<td>${member.mId }</td>
												<td>${member.mName }</td>
												<td>
													<!-- Button trigger modal -->
													<button type="button" class="btn btn-default btn-SM"
														data-toggle="modal" data-target="#myModal${member.mNo }">상세정보</button>
													<!-- 모달제어 -->
													<div class="modal fade" id="myModal${member.mNo }"
														tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
														aria-hidden="true">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<h4 class="modal-title" id="myModalLabel">${member.mName }님의
																		상세정보</h4>
																</div>
																<div class="modal-body">
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">번호</label>
																		<div class="col-md-4">${member.mNo }</div>
																		<label for="#" class="col-md-2 control-label">아이디</label>
																		<div class="col-md-4">${member.mId }</div>

																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">이름</label>
																		<div class="col-md-4">${member.mName }</div>
																		<label for="#" class="col-md-2 control-label">별명</label>
																		<div class="col-md-4">${member.mNick }</div>

																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">성별</label>
																		<div class="col-md-4">${member.mGender }</div>
																		<label for="#" class="col-md-2 control-label">생년월일</label>
																		<div class="col-md-4">${member.mBirth }</div>

																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">이메일</label>
																		<div class="col-md-4">${member.mEmail }</div>
																		<label for="#" class="col-md-2 control-label">전화번호</label>
																		<div class="col-md-4">${member.mPhone }</div>

																	</div>
																	<div class="modal-body">
																		<label for="#" class="col-md-2 control-label">방문횟수</label>
																		<div class="col-md-4">${member.mVisitCount }</div>

																		<label for="#" class="col-md-2 control-label">우편번호</label>
																		<div class="col-md-4">${member.mPost }</div>


																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">기본주소</label>
																		<div class="col-md-10">${member.mMainAddress }</div>


																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">상세주소</label>
																		<div class="col-md-10">${member.mSubAddress }</div>


																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">구매합계</label>
																		<div class="col-md-4">${member.mBuySum }</div>
																		<label for="#" class="col-md-2 control-label">적립금</label>
																		<div class="col-md-4">${member.mPoint }</div>


																	</div>
																	<div class="modal-body">

																		<label for="#" class="col-md-2 control-label">회원가입날짜</label>
																		<div class="col-md-4">${member.mRegDate }</div>
																		<label for="#" class="col-md-2 control-label">마지막로그인</label>
																		<div class="col-md-4">
																			<c:choose>
																				<c:when test="${member.mLoginDate ==null}">
																					로그인 이력 없음
																				</c:when>
																				<c:otherwise>
																					${member.mLoginDate}
																				</c:otherwise>
																			</c:choose>
																		</div>

																	</div>


																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div> <!-- 모달제어 끝-->
												</td>
												<td>${member.mNick }</td>
												<td>${member.mGrade }</td>
												<td>${member.mPoint }</td>
												<td>${member.mBuySum }</td>
												<td>${member.mVisitCount }</td>
												<td>${member.mRegDate }</td>
												<td><c:choose>
														<c:when test="${member.mLoginDate == null }">
													로그인 기록 없음
												</c:when>
														<c:otherwise>
													${member.mLoginDate }
												</c:otherwise>
													</c:choose></td>
												<td><button type="button" class="btn-SM btn btn-modify"
														data-toggle="modal" data-mId="${member.mId}"
														data-target="#modalModify">수정</button></td>
												<td><input type="button" value="추방" class="delete"
													data-mNo="${member.mNo}" data-mId="${member.mId}"
													data-mName="${member.mName}"></td>
											</tr>
										</c:forEach>

									</tbody>

								</table>
							</div>
							<!-- /.box-body -->
						</div>


					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar 오른쪽 설정버튼 시작  -->
		<%@ include file="/WEB-INF/views/admin/include/sidebar_menu.jsp"%>
		<!-- /.control-sidebar 오른쪽 설정버튼 끝 -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- 자바스크립트 시작 -->
	<%@ include file="/WEB-INF/views/admin/include/js.jsp"%>
	<script type="text/javascript">
		//다음주소 api
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
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('modalmPost').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('modalmMainAddress').value = fullAddr;

							// 커서를 상세주소 필드로 이동한다.
							document.getElementById('modalSubAddress').focus();
						}
					}).open();
		}
		$(document)
				.ready(
						function() {
							//비밀번호 수정토글
							$("#showChange").hide();
							$("#pwChangeCheck").click(function() {
								$("#showChange").toggle();
							});
							//성별 수정 토글
							$("#showChange2").hide();
							$("#genderChangeCheck").click(function() {
								$("#showChange2").toggle();
							});

							//등급수정
							$(".btn-modify")
									.click(
											function() {
												var mId = $(this).attr(
														"data-mId");
												$
														.ajax({
															url : "/admin/page/member/memberModifyModal",
															type : "get",
															data : "mId=" + mId,
															dataType : "json",
															success : function(
																	data) {
																console
																		.log(data);
																$("#btnApply")
																		.val(
																				data.memberModal.mId);
																$(
																		"#modalMainId")
																		.text(
																				data.memberModal.mName
																						+ "님의 정보 수정");
																$(
																		"#modalmGender")
																		.text(
																				data.memberModal.mGender);
																$("#modalmNo")
																		.val(
																				data.memberModal.mNo);
																$("#modalmId")
																		.val(
																				data.memberModal.mId);
																$("#modalmName")
																		.val(
																				data.memberModal.mName);
																$("#modalmNick")
																		.val(
																				data.memberModal.mNick);
																$(
																		"#modalmBirth")
																		.val(
																				data.memberModal.mBirth);
																$(
																		"#modalmEmail")
																		.val(
																				data.memberModal.mEmail);
																$(
																		"#modalmPhone")
																		.val(
																				data.memberModal.mPhone);
																$("#modalmPost")
																		.val(
																				data.memberModal.mPost);
																$(
																		"#modalmMainAddress")
																		.val(
																				data.memberModal.mMainAddress);
																$(
																		"#modalSubAddress")
																		.val(
																				data.memberModal.mSubAddress);
																$(
																		"#modalmBuySum")
																		.val(
																				data.memberModal.mBuySum);
																$(
																		"#modalmPoint")
																		.val(
																				data.memberModal.mPoint);

															},
															error : function(
																	data) {
																console
																		.log(data);
															}
														});
											});
							//회원 수정 처리
							$("#btnModify").click(function() {
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
										} else {
											alert("정보를 확인해주세요.");
										}
									},
									error : function(data) {
										console.log(data);
									}
								});
							});

							//회원삭제기능
							$(".delete").click(function() {
								var mNo = $(this).attr("data-mNo");
								var mId = $(this).attr("data-mId");
								var mName = $(this).attr("data-mName");

								if (confirm("정말 추방하시겠습니까?")) {

									$.ajax({
										url : "/admin/page/member/memberDel",
										type : "post",
										data : {
											"mNo" : mNo,
											"mId" : mId,
											"mName" : mName
										},
										success : function(data) {
											if (data.result == "100") {
												alert("삭제성공");
												location.reload();

											} else {
												("실패");
											}

										},
										error : function(data) {
											alert("삭제실패")
										}

									});
								}

							});
							$("#btnSearch").click(function() {
								//키워드 검색어
								$("#memberSearchKeyWord").val();

								$("#memberSearch").submit();
							});
							////부트스트랩 유효성검사
							$('#modify').bootstrapValidator();

							//Date picker
							//회원가입날짜
							$('#regDateStart').datepicker({
								format : "yyyy-mm-dd",
								autoclose : true
							});
							$('#regDateEnd').datepicker({
								format : "yyyy-mm-dd",
								autoclose : true
							});
							//마지막로그인날짜
							$('#loginDateStart').datepicker({
								format : "yyyy-mm-dd",
								autoclose : true
							});
							$('#loginDateEnd').datepicker({
								format : "yyyy-mm-dd",
								autoclose : true
							});

							//회원정보 수정(생년월일)
							$("#modalmBirth").datepicker({
								format : "yyyy-mm-dd",
								autoclose : true
							});

							//datatable
							$('#form-data').DataTable({
								'paging' : true,
								'lengthChange' : true,
								'searching' : false,
								'ordering' : true,
								'info' : true,
								'autoWidth' : true
							});

						});
	</script>
	<!-- 자바스크립트 끝 -->

</body>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
