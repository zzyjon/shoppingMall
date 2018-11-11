<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>상품목록</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/admin/include/css.jsp"%>
<style>
.example-modal .modal {
	position: relative;
	top: auto;
	bottom: auto;
	right: auto;
	left: auto;
	display: block;
	z-index: 1;
}

.example-modal .modal {
	background: transparent !important;
}
</style>
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
				<%@ include file="/WEB-INF/views/admin/include/left_menu/product_menu.jsp"%>
				<!-- 왼쪽 메뉴 끝 -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					상품등록 <small>상품등록하세요</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">product</li>
				</ol>
			</section>
									<!--상품 자세히 보기 모달 -->
									<div class="modal fade" id="modalView">
												<div class="modal-dialog modal-lg">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
															<h4 class="modal-title">상품 수정</h4>
														</div>
														<div class="modal-body">
															<form action="/page/product/modify">
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="pName" class="control-label">상품명:</label>
																		<input type="text" class="form-control" id="pName"
																			name="pName" placeholder="상품명">
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="pCode" class="control-label">상품코드:</label>
																		<input type="text" class="form-control" id="pCode"
																			name="pCode" placeholder="자동생성">
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="pPrice" class="control-label">가격:</label>
																		<input type="text" class="form-control" id="pPrice"
																			name="pPrice" placeholder="가격">
																	</div>
																</div>
																<div class="form-group col-md-6">
																	<label for="pBrand" class="control-label">브랜드:</label>
																	<div class="form-inline">
																		<input type="text" class="form-control" id="pBrand"
																			name="pBrand"  placeholder="브랜드를 선택해주세요"> <select
																			id="selectBrand" class="form-control select2"
																			style="width: 50%;">
																			<option selected>목록에서 선택</option>
																			<c:forEach var="brand" items="${brandList}">
																				<option value="${brand.brandNo }">${brand.brandName}</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>

																<div class="col-md-6">
																	<div class="form-group">
																		<label for="pStock" class="control-label">재고:</label>
																		<input type="text" class="form-control" id="pStock"
																			name="pStock" placeholder="재고">
																	</div>
																</div>
																<div class="form-group col-md-6">
																	<label for="pColor" class="control-label">색상:</label>
																	<div class="form-inline">
																		<input type="text" id="pColor" name="pColor"
																			class="form-control" placeholder="색상을 선택해주세요">
																		<select id="selectColor" class="form-control select2"
																			style="width: 50%;">
																			<option selected="selected">직접입력</option>
																			<option value="black">black</option>
																			<option value="blue">blue</option>
																			<option value="red">red</option>
																			<option value="yellow">yellow</option>
																			<option value="white">white</option>
																			<option value="brown">brown</option>
																			<option value="green">green</option>
																		</select>
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="pSize" class="control-label">사이즈:</label><small
																			class="text-center">사이즈는 콤마로 구분 해주세요 ex)
																			S,M,L</small> <input type="text" class="form-control"
																			id="pSize" name="pSize" placeholder="사이즈를 입력 해주세요">

																	</div>
																</div>
																<div class="form-group col-md-6">
																	<label for="pMaterial" class="control-label">소재:</label>
																	<div class="form-inline">
																		<input type="text" class="form-control" id="pMaterial"
																			name="pMaterial" placeholder="소재를 선택해주세요"> <select
																			id="selectMaterial"  class="form-control select2"
																			style="width: 50%;">
																			<option selected="selected">직접입력</option>
																			<option value="01">면</option>
																			<option value="02">가죽</option>
																			<option value="03">폴리</option>
																			<option value="04">인조가죽</option>
																			<option value="05">데님</option>
																			<!-- 01:면 , 02:가죽, 03:폴리, 04:인조가죽, 05:데님 -->
																		</select>
																	</div>
																</div>
																<div class="form-group col-md-6">
																	<label for="pMaker" class="control-label">제조사:</label>
																	<div class="form-inline">
																		<input type="text" class="form-control" id="pMaker"
																			name="pMaker" placeholder="제조사를 선택해주세요"> <select
																			id="selectMaker" class="form-control select2"
																			style="width: 50%;">
																			<option selected="selected">직접입력</option>
																			<option value="01">용신</option>
																			<option value="02">화랑</option>
																			<option value="03">신성통상</option>
																			<option value="04">제일모직</option>
																			<!-- 01:용신 , 02:화랑, 03:신성통상, 04:제일모직  -->
																		</select>
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="pCouponUseCheck" class="control-label">쿠폰적용여부:</label>
																		<input type="checkbox" class="minimal"
																			id="pCouponUseCheck" name="pCouponUseCheck" >
																	</div>
																</div>

																<div class="box-body">
																	<div class="row">
																		<div class="form-inlie">
																			<div class="col-md-10">
																				<label for="pDesc" class="control-label">간단설명:</label>
																				<input type="text" class="form-control" id="pDesc"
																					name="pDesc" placeholder="간단한 상품설명을 입력해주세요">
																			</div>
																		</div>
																	</div>
																</div>
																<div class="box-body">
																	<div class="row">
																		<div class="form-group">
																			<div class="col-md-6">
																				<label for="exampleInputFile" class="control-label">이미지
																					업로드</label> <input type="file" id="exampleInputFile">
																			</div>
																		</div>
																	</div>
																</div>
																<!-- /.box-body -->
															</form>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-default pull-left"
																data-dismiss="modal">취소</button>
															<button type="button" data-pNo="" id="btnApply" class="btn btn-primary">수정</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal-dialog -->
											</div>
											<!-- /.modal 상품 자세히 보기 모달 -->

			<!-- Main content -->
			<section class="content">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">상품 검색</h3>
						<small>상품을 검색하세요</small>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-1">
								<div class="form-group">
									<select class="form-control select2" style="width: 120%;">
										<option value="pCode">상품코드</option>
										<option value="pName">상품명</option>
										<option value="pPrice">상품가격</option>
										<option value="pMaterial">소재</option>
										<option value="pBrand">브랜드</option>
										<option value="pMaker">제조사</option>
									</select>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-md-2 col-xs-10">
								<div class="form-group">
									<input type="text" id="SearchWord" name="SearchWord"
										class="form-control">
								</div>
							</div>
							<div class="col-md-2 col-xs-2">
								<div class="form-group">
									<button type="button" id="btnSearch" class="btn btn-primary">검색</button>
								</div>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">상품 목록</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>상품코드</th>
											<th>상품명</th>
											<th>브랜드</th>
											<th>제조사</th>
											<th>상품가격</th>
											<th>재고량</th>
											<th style="width: 7%"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${productList}">
											<tr>
												<td>${product.pCode }</td>
												<td>${product.pName }</td>
												<td>${product.pBrand }</td>
												<td>${product.pMaker }</td>
												<td>${product.pPrice }</td>
												<td>${product.pStock }</td>
												<td>
													<button type="button" class="btn-xs btn btn-modify"
														data-pNo="${product.pNo}" data-toggle="modal"
														data-target="#modalView">수정</button>
													<button type="button" class="btn-xs btn btn-delete"
														data-pNo="${product.pNo}">삭제</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.box-body -->
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
	<!-- 자바스크립트 끝 -->
	<script>
	
		$(function() {
			/*
			 테이블 관련 함수
			paging : 테이블 페이징
			lengthChange : 뿌려질 데이터 행 갯수
			searching : 통합검색 기능
			ordering : 정렬하기
			info : 전체 행 갯수 표시
			autoWidth : 자동 너비 조절 기능
			 */
			$('#example2').DataTable({
				'paging' : true,
				'lengthChange' : true,
				'searching' : true,
				'ordering' : false,
				'info' : true,
				'autoWidth' : true
			});

		});
	

		$(document).ready(function() {

			/*selectbox 색상 선택시 값이 input으로 들어가는 기능 */
			$("#selectColor").on("change",function() {
				var selectColor = $(this).find("option[value='" + $(this).val() + "']").text();
				$("#pColor").val(selectColor);
			});
		
			/*selectbox 소재 선택시 값이 input으로 들어가는 기능 */
			$("#selectMaterial").on("change",function() {
				var selectMaterial = $(this).find("option[value='" + $(this).val() + "']").text();
				$("#pMaterial").val(selectMaterial);
			});
			
			/*selectbox 제조사 선택시 값이 input으로 들어가는 기능 */
			$("#selectMaker").on("change",function() {
				var selectMaker = $(this).find("option[value='" + $(this).val() + "']").text();
				$("#pMaker").val(selectMaker);
			});
			
			/*selectbox 브랜드 선택시 값이 input으로 들어가는 기능 */
			$("#selectBrand").on("change",function() {
				var selectBrand = $(this).find("option[value='" + $(this).val() + "']").text();
				$("#pBrand").val(selectBrand);
			});
			
			
			/*상품 삭제 */
			$(".btn-delete").click(function() {
				/*var testPno = $(this).attr("data-pNo");
				alert(testPno); */
				if (confirm("정말 삭제할건가요?")) {

					$.ajax({
						url : "/admin/page/product/del",
						type : "post",
						data : "pNo=" + $(this).attr("data-pNo"),
						success : function(msg) {
							alert("삭제 완료");
							location.reload();
						},
						error : function(msg) {
							alert("에러");
						}
					})
				}
			});

			/*목록에서 수정버튼 클릭하면 상품 자세히 보기 모달*/
			$(".btn-modify").click(function() {
				var pNo = $(this).attr("data-pNo");
				console.log(pNo);
				$.ajax({
					url:"/admin/page/product/detailView",
					type:"get",
					data: "pNo="+pNo,
					dataType:"json",
					success:function(data){
						console.log(data);
						$("#btnApply").val(data.goods.pNo);
						$("#pName").val(data.goods.pName);
						$("#pCode").val(data.goods.pCode);
						$("#pPrice").val(data.goods.pPrice);
						$("#pBrand").val(data.goods.pBrand);
						$("#pStock").val(data.goods.pStock);
						$("#pColor").val(data.goods.pColor);
						$("#pSize").val(data.goods.pSize);
						$("#pMaterial").val(data.goods.pMaterial);
						$("#pName").val(data.goods.pName);
						$("#pMaker").val(data.goods.pMaker);
						$("#pDesc").val(data.goods.pDesc);
						$("#pImg1").val(data.goods.pImg1);
					},
					error:function(data){
						console.log(data);
					}
				});
			});	
				
			/*상품 모달창에서 상품 정보 수정하기 */
			$("#btnApply").on("click", function(){
				var pNo = $("#btnApply").val();  
				console.log(pNo);
				
				var pPrice = $("#pPrice").val();
				var pName = $("#pName").val();
				var pBrand = $("#pBrand").val();
				var pStock = $("#pStock").val();
				var pColor = $("#pColor").val();
				var pSize = $("#pSize").val();
				var pMaterial = $("#pMaterial").val();
				var pMaker = $("#pMaker").val();
				var pDesc = $("#pDesc").val();
				var pCouponUseCheck = $("#pCouponUseCheck").val();

				if (pName == "") {
					alert("상품명을 입력해주세요");
				} else if (pPrice == "") {
					alert("상품가격을 입력해주세요");
				} else if (pBrand == "") {
					alert("브랜드를 입력해주세요");
				} else if (pSize == "") {
					alert("사이즈를 입력해주세요");
				} else if (pMaterial == "") {
					alert("소재를 입력해주세요");
				} else if (pMaker == "") {
					alert("제조사를 입력해주세요");
				} 

				$.ajax({
					url : "/admin/page/product/modify",
					type : "post",
					data : {"pNo":pNo, "pPrice":pPrice, "pName":pName, "pBrand":pBrand, "pStock":pStock, "pColor":pColor, "pSize":pSize, "pMaterial":pMaterial, "pMaker":pMaker, "pDesc":pDesc, "pCouponUseCheck":pCouponUseCheck},
					success : function(msg) {
						alert("수정 완료");
						location.reload();
					},
					error : function(msg) {
						console.log(msg);
						alert("에러");
					}
				});
			});
			
		});
	</script>
</body>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
