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
					등급관리 <small>등급조회</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">GRADE</li>
				</ol>
			</section>
			<div class="modal fade" id="modalModify" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="modalMaingNo"></h4>
						</div>
						<div class="modal-body">
							<form id="modify">
								<input type="hidden" name="gNo" id="modalgNo">
								<table class="table table-hover">
									<tr>
										<th>번호</th>
										<td id="modalgNo2"></td>
									</tr>
									<tr>

										<th>등급명</th>
										<td><input type="text" id="modalmGrade" name="mGrade"
											></td>
									</tr>
									<tr>
										<th>추가할인율</th>
										<td><input type="text" id="modalgDiscount"
											name="gDiscount" >%</td>
									</tr>
									<tr>

										<th>추가적립금</th>
										<td><input type="text" id="modalgSavePoint"
											name="gSavePoint">%</td>
									</tr>
									<tr>

										<th>최소구매금액 설정</th>
										<td><input type="text" id="modalgBuyMinPrice"
											name="gBuyMinPrice">원 이상</td>
									</tr>
									<tr>

										<th>최대구매금액 설정</th>
										<td><input type="text" id="modalgBuyMaxPrice"
											name="gBuyMaxPrice">원 이하</td>
									</tr>
								</table>
							</form>

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
			<!-- 모달제어 -->


			<!-- Main content -->
			<!-- 회원 등급 리스트 테이블 -->
			<section class="content">

				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">등급리스트</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="form-data" class="table table-bordered table-hover">
									<thead>
										<tr>

											<th>번호</th>
											<th>등급명</th>
											<th>회원수</th>
											<th>최소 구매금액(%)</th>
											<th>최대 구매금액(%)</th>
											<th>제공할인율(%)</th>
											<th>추가 적립금(%)</th>
											<th>수정</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="grade" items="${list }">
											<tr>
												<td>${grade.gNo }</td>
												<td>${grade.mGrade }</td>
												<td>${grade.cnt }</td>
												<td>${grade.gBuyMinPrice }</td>
												<td>${grade.gBuyMaxPrice }</td>
												<td>${grade.gDiscount }</td>
												<td>${grade.gSavePoint }</td>

												<td>
													<!-- Button trigger modal -->
													<button type="button" class="btn-SM btn btn-modify" 
														data-toggle="modal" data-target="#modalModify" data-gNo="${grade.gNo }">수정</button>
													<!-- Modal -->
												</td>
												<td><input type="button" value="삭제" class="delete"
													data-gNo="${grade.gNo }"></td>
											</tr>
										</c:forEach>


									</tbody>

								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<div>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-default btn-SM"
								data-toggle="modal" data-target="#myModalAdd">추가</button>
							<!-- Modal -->
							<div class="modal fade" id="myModalAdd" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">등급추가</h4>
										</div>
										<div class="modal-body">
											<form id="addGrade">
												<table class="table table-hover">
													<tr>

														<th>등급명</th>
														<td><input type="text" id="mGrade" name="mGrade"
															value=""></td>
													</tr>
													<tr>
														<th>추가할인율</th>
														<td><input type="text" id="gDiscount"
															name="gDiscount" value="">%</td>
													</tr>
													<tr>

														<th>추가적립금</th>
														<td><input type="text" id="gSavePoint"
															name="gSavePoint" value="">%</td>
													</tr>
													<tr>

														<th>최소구매금액 설정</th>
														<td><input type="text" id="gBuyMinPrice"
															name="gBuyMinPrice" value="">원 이상</td>
													</tr>
													<tr>

														<th>최대구매금액 설정</th>
														<td><input type="text" id="gBuyMaxPrice"
															name="gBuyMaxPrice" value="">원 이하</td>
													</tr>
												</table>
											</form>


										<div class="modal-footer">
											<button type="button" class="btn btn-default pull-left"
												data-dismiss="modal">취소</button>
											<button type="button" class="btn btn-primary" id="gradeAdd">추가</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 모달제어 -->
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
		$(document).ready(function() {
			//등급 추가 기능
			$("#gradeAdd").click(function() {
				var grade = $("#addGrade").serialize();
				//alert(grade);
				$.ajax({
					url : "/admin/page/member/gradeInsert",
					type : "post",
					dataType : "json",
					data : $("#addGrade").serialize(),
					success : function(data) {
						if (data.result == "200") {
							alert("추가성공");
							location.reload();
						} else {
							alert("추가실패");
						}
					},
					error : function(data) {
						console.log(data);
					}
				});
			});
			//등급 수정 보기()
			$(".btn-modify").click(function() {
				var gNo = $(this).attr("data-gNo");
				$.ajax({
				url : "/admin/page/member/gradeModifyModal",
				type : "get",
				data : "gNo="+ gNo,
				dataType : "json",
				success : function(data) {
					console.log(data);
					$("#btnApply").val(data.gradeModal.gNo);
					$("#modalMaingNo").text(data.gradeModal.mGrade+ "등급의 정보 수정");
					$("#modalgNo").val(data.gradeModal.gNo);
					$("#modalgNo2").text(data.gradeModal.gNo);
					$("#modalmGrade").val(data.gradeModal.mGrade);
					$("#modalgBuyMinPrice").val(data.gradeModal.gBuyMinPrice);
					$("#modalgBuyMaxPrice").val(data.gradeModal.gBuyMaxPrice);
					$("#modalgDiscount").val(data.gradeModal.gDiscount);
					$("#modalgSavePoint").val(data.gradeModal.gSavePoint);
											},
				error : function(data) {
					console.log(data);
										}
									});
								});
			//회원 등급 수정
			$("#btnModify").click(function() {
				var list = $("#modify").serialize();
				$.ajax({
					url : "/admin/page/member/gradeChange",
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

			//등급 삭제 기능
			$(".delete").click(function() {
				var click = $(this).attr("data-gNo");
				if (confirm("정말 삭제하시겠습니까?")) {

					$.ajax({
						url : "/admin/page/member/gradeDel",
						type : "post",
						data : {
							"gNo" : click
						},
						success : function(data) {
							alert("삭제성공");
							location.reload();

						},
						error : function(data) {
							alert("삭제실패")
						}

					});
				}

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
