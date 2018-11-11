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
					탈퇴회원관리 <small>회원조회</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<!-- 탈퇴 회원 리스트 테이블 -->
			<section class="content">

				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">탈퇴 회원 리스트</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="form-data" class="table table-bordered table-hover">
									<thead>
										<tr>

											<th>번호</th>
											<th>아이디</th>
											<th>이름</th>
											<th>탈퇴처리방법</th>
											<th>사유</th>
											<th>탈퇴처리 날짜</th>
											
										</tr>
									</thead>
									<tbody>

										<c:forEach var="mo" items="${mo }">
											<tr>
												<td>${mo.moNo }</td>
												<td>${mo.moId }</td>
												<td>${mo.moName }</td>
												<td>${mo.moMethod }</td>
												<td>${mo.moReason }</td>
												<td>${mo.moOutDate }</td>
												
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
		$(document).ready(function() {
			

			

			//datatable
			$('#form-data').DataTable({
				'paging' : true,
				'lengthChange' : true,
				'searching' : true,
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
