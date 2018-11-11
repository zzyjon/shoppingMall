<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>브랜드관리</title>
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

				<!-- /.box -->
				<div class="row">
					<div class="col-md-8">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">브랜드 관리</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<!-- Select multiple-->
								<div class="col-md-4">
									<div class="form-group">
										<label>브랜드 목록</label> <select multiple id="selectBrand"
											class="form-control">
											<c:forEach var="brand" items="${brandList }">
												<option value="${brand.brandNo }">${brand.brandName }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<form role="form">
										<!-- text input -->
										<div class="form-inline">
											<label>브랜드 추가</label> <input type="text" id="brandNameA"
												class="form-control" placeholder="브랜드명">
											<button type="button" id="btnApply" class="btn btn-primary">등록</button>
										</div>
										<br>
										<div>
											<label>현재 브랜드 갯수</label> <small>${countBrand }개</small>
										</div>
									</form>
								</div>
								<div class="col-md-5">
									<form role="form">
										<!-- text input -->
										<div class="form-inline">
											<label>브랜드 수정</label><br> <input type="text"
												id="brandNameM" class="form-control" placeholder="브랜드명">
											<button type="button" id="btnModify" class="btn btn-primary">수정</button>
											<button type="button" id="btnDelete" class="btn btn-primary">삭제</button>
										</div>
									</form>
								</div>
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
	
	$(function(){
		
		$("#selectBrand").click(function(){
			$("#brandNameM").val($("#selectBrand option:selected").text());
		});
		
		

			$("#btnDelete").click(function(){
				if(!$('#selectBrand > option:selected').val()) {
				    alert("목록에서 브랜드를 선택해주세요");
				}else{
					var brandNo = $("#selectBrand option:selected").val();
					
					if(confirm("정말 삭제 할겁니까?")){
						
						$.ajax({
							url:"/admin/page/product/brand_delete",
							type:"post",
							data:{"brandNo":brandNo},
							success: function(msg){
								alert("삭제했습니다");
								location.reload();
							},
							error: function(data){
								console.log(data);
								alert("에러");
							}
						})
					}
				}
				
			});
			
		
			$("#btnModify").click(function(){
				if(!$('#selectBrand > option:selected').val()) {
				    alert("목록에서 브랜드를 선택해주세요");	
				}else{
					var brandNo = $("#selectBrand option:selected").val();
					var brandName = $("#brandNameM").val();
					
					$.ajax({
						url:"/admin/page/product/brand_update",
						type:"post",
						data:{"brandNo":brandNo, "brandName":brandName},
						success: function(msg){
							alert("수정했습니다");
							location.reload();
						},
						error: function(data){
							console.log(data);
							alert("에러");
						}
					})
				}
				
			})
		 
		
		/*브랜드 추가 */
		$("#btnApply").click(function(){
			
			var brandName = $("#brandNameA").val();
			if(brandName == ""){
				alert("브랜드명을 입력해주세요");
				$("#brandNameA").focus();
				return false;
			}
			$.ajax({
				url : "/admin/page/product/brand_insert",
				type : "post",
				data : {"brandName":brandName},
				success : function(msg) {
					alert("등록했습니다");
					location.reload();
				},
				error : function(msg) {
					console.log(msg);
					alert("에러");
				}
			})
		});
		
	});
				
				
	
	</script>
</body>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
