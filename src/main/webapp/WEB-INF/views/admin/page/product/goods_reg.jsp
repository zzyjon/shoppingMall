<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>상품등록</title>
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

			<!-- Main content -->
			<section class="content">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">상품 카테고리 분류</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>1차 분류</label>
									 <select class="form-control select2" style="width: 100%;" id="category1st">
									 </select>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-md-2">
								<div class="form-group">
									<label>2차 분류</label> 
									<select class="form-control select2" style="width: 100%;" id="category2nd">
									<option value=''>- 선택하세요 -</option>
									</select>
								</div>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				<form id="frm" action="/admin/page/product/goods_upload" method="post" enctype="multipart/form-data">
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">상품기본정보</h3>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pName" class="col-md-2 control-label">상품명</label>
										<input type="text" class="col-md-4 form-control" id="pName"
											name="pName" placeholder="상품명">
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pCode" class="col-md-2 control-label">상품코드</label>
										<input type="text" class="form-control" id="pCode" name="pCode" placeholder="자동생성" readonly>
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pPrice" class="col-md-2 control-label">가격</label>
										<input type="number" class="form-control" id="pPrice"
											name="pPrice" placeholder="가격">
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pBrand" class="col-md-2 control-label">브랜드</label>
										<input type="text" class="col-md-4 form-control" id="pBrand"
											name="pBrand" placeholder="브랜드를 선택해주세요">

										<div class="col-md-7">
											<select id="selectBrand" class="form-control select2"
												style="width: 50%;">
												<option selected>목록에서 선택</option>
												<c:forEach var="brand" items="${brandList}">
													<option value="${brand.brandNo }">${brand.brandName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pStock" class="col-md-2 control-label">재고</label>
										<input type="number" class="form-control" id="pStock"
											name="pStock" placeholder="재고">
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pColor" class="col-md-2 control-label">색상</label>
										<input type="text" id="pColor" name="pColor"
											class="col-md-4 form-control" placeholder="색상을 선택해주세요">

										<div class="col-md-7">
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
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pSize" class="col-md-2 control-label">사이즈</label>
										<input type="text" class="col-md-4 form-control" id="pSize"
											name="pSize" placeholder="사이즈를 입력 해주세요">
										<div class="col-md-7">
											<div class="box-body">
												<p class="text-muted">사이즈는 콤마로 구분 해주세요 ex) S,M,L</p>
											</div>
										</div>
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pMaterial" class="col-md-2 control-label">소재</label>
										<input type="text" class="col-md-4 form-control"
											id="pMaterial" name="pMaterial" placeholder="소재를 선택해주세요">

										<div class="col-md-7">
											<select id="selectMaterial" class="form-control select2"
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
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pMaker" class="col-md-2 control-label">제조사</label>
										<input type="text" class="col-md-4 form-control" id="pMaker"
											name="pMaker" placeholder="제조사를 선택해주세요">

										<div class="col-md-7">
											<select id="selectMaker" class="form-control select2"
												style="width: 50%;">
												<option selected="selected">직접입력</option>
												<option value="01">용신</option>
												<option value="02">화랑</option>
												<option value="03">신성통상</option>
												<option value="04">제일모직</option>
												<option value="05">그냥보세</option>
												<!-- 01:용신 , 02:화랑, 03:신성통상, 04:제일모직, 05:그냥보세  -->
											</select>
										</div>
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pCouponUseCheck" class="col-md-2 control-label">쿠폰적용여부</label>
										<input type="checkbox" class="minimal" id="pCouponUseCheck">
										<input type="hidden" id="pCouponUseCheckValue" name="pCouponUseCheck" >
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inlie">
									<div class="col-md-10">
										<label for="pDesc" class="col-md-2 control-label">간단설명</label>
										<input type="text" class="form-control" id="pDesc"
											name="pDesc" placeholder="간단한 상품설명을 입력해주세요">
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-4">
										<label for="exampleInputFile" class="col-md-2 control-label">이미지
											업로드</label> <input type="file" id="pFile1" name="file" >
									</div>
									<div class="col-md-4">
										<label for="exampleInputFile" class="col-md-2 control-label">이미지
											업로드</label> <input type="file" id="pFile2" name="file" >
									</div>
									<div class="col-md-4">
										<label for="exampleInputFile" class="col-md-2 control-label">이미지
											업로드</label> <input type="file" id="pFile3" name="file" >
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
				</form>

				<div class="form-group">
					<div class="col-md-6">
						<button type="button" id="btnSubmit" class="btn btn-primary">등록</button>
					</div>
				</div>
				<!-- /.box -->

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

</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/admin/include/js.jsp"%>
<script>
	$(function() {
		$("#selectColor").on(
				"change",
				function() {
					var selectColor = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pColor").val(selectColor);
				});
	
		/*selectbox 소재 선택시 값이 input으로 들어가는 기능 */
		$("#selectMaterial").on(
				"change",
				function() {
					var selectMaterial = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pMaterial").val(selectMaterial);
				});
		
		/*selectbox 제조사 선택시 값이 input으로 들어가는 기능 */
		$("#selectMaker").on(
				"change",
				function() {
					var selectMaker = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pMaker").val(selectMaker);
				});
		
		/*selectbox 브랜드 선택시 값이 input으로 들어가는 기능 */
		$("#selectBrand").on(
				"change",
				function() {
					var selectBrand = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pBrand").val(selectBrand);
				});
	})

	$(document).ready(function() {

		$("#btnSubmit").click(function() {
			
			var pCode = $("#pCode").val();
			var pPrice = $("#pPrice").val();
			var pName = $("#pName").val();
			var pBrand = $("#pBrand").val();
			var pStock = $("#pStock").val();
			var pColor = $("#pColor").val();
			var pSize = $("#pSize").val();
			var pMaterial = $("#pMaterial").val();
			var pMaker = $("#pMaker").val();
			var pDesc = $("#pDesc").val();
			var pImg = $("#pFile").val();
	
			if ($("#pCouponUseCheck").is(":checked")) {
			    $('#pCouponUseCheckValue').val('Y');
			} else {
			    $('#pCouponUseCheckValue').val('N');
			}

			if (pName == "") {
				alert("상품명을 입력해주세요");
			} else if(pCode == ""){
				alert("카테고리를 선택해주세요");
			} else if (pPrice == "") {
				alert("상품가격을 입력해주세요");
			} else if (pBrand == "") {
				alert("브랜드를 입력해주세요");
			} else if (pStock == "") {
				alert("재고를 입력해주세요");
			} else if (pSize == "") {
				alert("사이즈를 입력해주세요");
			} else if (pMaterial == "") {
				alert("소재를 입력해주세요");
			} else if (pMaker == "") {
				alert("제조사를 입력해주세요");
			} else {
				$("#frm").submit();
			}

			
			console.log(pCode+" : "+pName+" : "+ pPrice+" : "+ pBrand+" : "+ pStock+" : "+ pColor+" : "+ pSize +" : "+pMaterial +" : "+pMaker +" : "+pDesc);
			//alert(pCode+" : "+pPrice+" : "+ pPrice+" : "+ pBrand+" : "+ pStock+" : "+ pColor+" : "+ pSize +" : "+pMateial +" : "+pMaker +" : "+pDesc);	

			//alert(pMaterial+" , "+pMaker);

			//$("#frm").submit();

		});
		
		
		//첫번째 카테고리 로딩
		$.ajax({
			url: "/admin/page/product/category1st",
			type: "post",
			dataType: "json",
			success: function(data){
				console.log(data);
				var htmlVar = "<option value=''>- 선택 -</option>";
				if(data.categoryList.length > 0 ){
					for(var i=0; i< data.categoryList.length; i++){
						htmlVar += "<option value='"+data.categoryList[i].pChild+"'>"+data.categoryList[i].pName+"</option>";
					}
				}
				console.log(htmlVar);
				$("#category1st").html(htmlVar);
			},
			error: function(data){
				console.log(data);
			}
		});
		
		//두번째 카테고리 로딩 
		$("#category1st").change(function(){
			//alert($(this).val());
			var pCategory = $(this).val();
			$.ajax({
				url: "/admin/page/product/category2nd",
				type: "post",
				dataType: "json",
				data: {"pCategory": pCategory},
				success: function(data){
					console.log("child categroy = " + data);
					var htmlVar = "<option value=''>- 선택하세요 -</option>";
					if(data.selectChildCategory.length > 0 ){
						for(var i=0; i< data.selectChildCategory.length; i++){
							htmlVar += "<option value='"+data.selectChildCategory[i].pChild+"'>"+data.selectChildCategory[i].pName+"</option>";
						}
					}
					console.log("child categroy = " + htmlVar);
					$("#category2nd").html(htmlVar);
				},
				error: function(data){
					console.log(data);
				}
			});
		});
		
		// 상품코드 자동삽입
		$("#category2nd").change(function(){
			var pCategory1st = $("#category1st").val();
			var pCategory2nd = $(this).val();
			
			//alert(pCategory1st);
			$("#pCode").val(pCategory1st + pCategory2nd);
			
		});
	});
</script>
<!-- 자바스크립트 끝 -->
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
