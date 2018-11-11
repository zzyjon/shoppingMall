<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
      <%@ include file="/WEB-INF/views/admin/include/user_panel.jsp" %>
      <!-- 왼쪽 유저 패널 끝 -->
      <!-- search form -->
     <!-- 검색폼 시작 --> 
     <%@ include file="/WEB-INF/views/admin/include/search_form.jsp" %>
     <!-- 검색폼 끝 -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">기본설정관리</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>기본관리</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="/page/basic/shop_info.jsp"><i class="fa fa-circle-o"></i>쇼핑몰정보</a></li>
            <li><a href="/page/basic/admin_info.jsp"><i class="fa fa-circle-o"></i>관리자정보</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>배너관리</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> 슬라이드 이미지 설정</a></li>
            <li><a href="/pages/layout/boxed.html"><i class="fa fa-circle-o"></i> 배너 설정</a></li>
          </ul>
        </li>
        <li class="header">약관관리</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>회원가입약관</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>이용약관</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
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
        <section class="col-lg-5 connectedSortable">

      메인콘텐트
        </section>
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar 오른쪽 설정버튼 시작  -->
  <%@ include file="/WEB-INF/views/admin/include/sidebar_menu.jsp" %>
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
