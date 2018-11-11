<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>주문상세보기</title>
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
      <%@ include file="/WEB-INF/views/admin/include/left_menu/order_menu.jsp"%>
      <!-- 왼쪽 메뉴 끝 -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    주문 상세보기 
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Tables</a></li>
                    <li class="active">Simple</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-default">
                            <div class="box-header with-border">
                                <h3 class="box-title">주문자 정보</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    	<c:choose>
                                    		<c:when test="${receiveInfo.oPurchaseMethod == 0}"><div>결제방법: 무통장</div></c:when>
                                    		<c:otherwise><div>결제방법: 적립금</div></c:otherwise>
                                    	</c:choose>
                                    	<div>주문자: ${receiveInfo.oReceiveName}</div>
                                    	<div>연락처: ${receiveInfo.oReceivePhone}</div>
                                    	<div>주소: ${receiveInfo.address}</div>
                                    	<div>요청메모: ${receiveInfo.oRequirements}</div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">주문 상세보기</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tr>
                                        <th style="width:10%;">주문일</th>
                                        <th style="width:25%;">상품명</th>
                                        <th style="width:15%;">상품옵션</th>
                                        <th style="width:10%;">단가</th>
                                        <th style="width:10%;">주문수량</th>
                                        <th style="width:10%;">합계</th>
                                        <th style="width:10%;">처리상태</th>
                                    </tr>
                                    <c:forEach var="rows" items="${detailList }">
	                                    <tr>
	                                        <td><fmt:parseDate value="${rows.oDate}" var="Date" pattern="yyyy-MM-dd HH:mm:ss" scope="page"></fmt:parseDate><fmt:formatDate value="${Date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                        <td>${rows.pName }</td>
	                                        <td>사이즈: ${rows.pSize }&nbsp;색상: ${rows.pColor }</td>
	                                        <td><fmt:formatNumber value="${rows.pPrice}" pattern="###,###,###"/></td>
	                                        <td>${rows.amount }개</td>
	                                        <td><fmt:formatNumber value="${rows.pPrice * rows.amount}" pattern="###,###,###"/> 원</td>
	                                        <c:choose>
	                                        	<c:when test="${rows.oStatus == 0 }"><td><span class="label label-success">${rows.sName }</span></td></c:when>
	                                        	<c:otherwise><td><span class="label label-warning">${rows.sName }</span></td></c:otherwise>
	                                        </c:choose>
	                                    </tr>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                        <!-- /.box -->
                    </div>
                </div>
                <!-- /.row -->
            </section>
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
<%@ include file="/WEB-INF/views/admin/include/js.jsp" %>
<!-- 자바스크립트 끝 -->
</body>
  <!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp" %>
  <!-- 푸터 끝 -->
</html>
