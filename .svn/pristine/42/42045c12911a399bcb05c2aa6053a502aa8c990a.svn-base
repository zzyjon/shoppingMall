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
				<!-- 왼쪽 메뉴 시작 -->
				<%@ include
					file="/WEB-INF/views/admin/include/left_menu/chart_menu.jsp"%>
				<!-- 왼쪽 메뉴 끝 -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Dashboard <small>Control panel</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Small boxes (Stat box) -->

				<!-- Main row -->
				<div class="row">
					<!-- Left col -->

					<!-- /.Left col -->
					<!-- right col (We are only adding the ID to make the widgets sortable)-->
					<section class="content">
						<table id="form-data" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>----</th>
									<th>금일 매출</th>
									<th>가입회원 수</th>
									<th>탈퇴회원 수</th>
									<th>주문횟수</th>
									<th>결제완료 수</th>
									<th>배송완료 수</th>

								</tr>
							</thead>
							<tbody>


								<tr>
									<th>이틀 전</th>
									<c:forEach var="twoday" items="${twoday }">
										<td>${twoday.twoday }</td>
									</c:forEach>
								</tr>
								<tr>
									<th>어제</th>
									<c:forEach var="oneday" items="${oneday }">
										<td>${oneday.oneday }</td>
									</c:forEach>
								</tr>

								<tr>
									<th>오늘</th>
									<c:forEach var="today" items="${today }">
										<td>${today.today }</td>
									</c:forEach>
								</tr>

								<tr>
									<th>이번주</th>
									<c:forEach var="week" items="${week }">
										<td>${week.week }</td>
									</c:forEach>
								</tr>
								<tr>
									<th>이번달</th>
									<c:forEach var="month" items="${month }">
										<td>${month.month }</td>
									</c:forEach>
								</tr>







							</tbody>

						</table>
					</section>
					<!-- right col -->
				</div>
				<!-- /.row (main row) -->

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
</body>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
