<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<header class="main-header">
	<!-- Logo -->
	<a href="/admin/index" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>Admin</b>LTE</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">

		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="/admin/page/product/goods_list">상품관리</a></li>
				<li><a href="/admin/page/order">주문관리</a></li>
				<li><a href="/admin/page/member/memberList1">회원관리</a></li>
				<li><a href="/admin/page/board">게시판관리</a></li>
				<li><a href="/admin/page/chart">통계</a></li>
			</ul>
		</div>
		<!-- Navbar 오른쪽 메뉴  -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				
					
				<c:choose>
					<c:when test="${sessionScope.id  == null}">
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="/admin/login">
							<span class="hidden-xs">로그인</span>
						</a>
					</c:when>
					<c:otherwise>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="/resources/dist/img/user2-160x160.jpg" class="user-image"
							alt="User Image"> <span class="hidden-xs">${sessionScope.name }님 로그인 중</span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header"><img
								src="/resources/dist/img/user2-160x160.jpg" class="img-circle"
								alt="User Image">
	
								<p>
									${sessionScope.id } - Web Developer <small>Member since
										Nov. 2012</small>
								</p></li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-right">
									<a href="/admin/logout" class="btn btn-default btn-flat">로그아웃</a>
								</div>
							</li>
						</ul></li>
					</c:otherwise>
				</c:choose>	
				<!-- Control Sidebar Toggle Button -->
				<li>
					<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
				</li>
			</ul>
		</div>
	</nav>
</header>