<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>주문조회</title>
  <!-- css 시작 -->
  <%@ include file="/WEB-INF/views/admin/include/css.jsp"%>
  <!-- css 끝 -->
  <!-- 자바스크립트 시작 -->
  <%@ include file="/WEB-INF/views/admin/include/js.jsp" %>
  <!-- 자바스크립트 끝 -->
<script>
//주문 정보를 받아서 주문 상태를 변경하는 함수
function updateStatus(status, ocode){
	
	if(confirm("주문상태를 변경하시겠습니까?")){
		//alert(grade +", "+ memberNo);
		$.ajax({
			url: "/admin/page/order/statusModify",
			type: "post",
			dataType: "json",
			data: {"oStatus":status , "oCode":ocode},
			success:function(data){
				console.log(data);
				if(data.result == "success"){
					alert("주문상태가 변경됐습니다");
				}else{
					alert("에러: 관리자에게 문의하세요");
				}
			},
			error:function(data){
				console.log(data);
				alert(data);
			}
		});
	}
}


$(document).ready(function(){
	
	//Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: false, timePickerIncrement: 30, format: 'yyyy-MM-DD' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('YYYY-MM-DD') + ' ~ ' + end.format('YYYY-MM-DD'))
      }
    )
	
	// 주문상태 변경 ajax 시작 
	$.ajax({
		url:"/admin/page/order/status",
		type:"post",
		dataType:"json",
		success:function(data){
			
			//console.log(data.status.length);
			
			var html = "<select class='form-control'>";
			for(var i = 0; i<data.status.length; i++){
				html += "<option value='"+data.status[i].sCode+"'>" +data.status[i].sName+"</option>";
			}
			html += "</select>";
			$(".status").html(html);
			
			//console.log(html);
			
			//주문상태 옵션 선택 
			for(var i = 0; i < $("#orderTable div").length; i++){
				var status = $("#status" + i).data("status");
				var ocode = $("#status" + i).data("ocode");
				
				//console.log("선택된 주문상태 = "+status);
				//console.log("선택된 주문번호 = "+ocode);
				
				$("#status"+i+" select").val(status).prop("selected",true); // 해당 셀렉트 박스 옵션 값 val() 안에 들어있는 값으로 선택된 상태로 뿌려짐
				$("#status"+i+" select").attr("onChange","updateStatus(this.value, '"+ocode+"')");	// ocode에 ''싱글쿼터로 감싸서 String형으로 변환 .. ""만 감싸면 자꾸 연산을 함..
			}
		},
		error:function(data){
			console.log(data.status.length);
			alert(data.status);
		}
		
	});
	// 주문상태 변경 ajax 끝
});
</script>
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
                    주문 조회
                    <small>주문 조회 하세요</small>
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
                                <h3 class="box-title">주문 검색</h3>
                                <small>주문을 검색하세요</small>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <select class="form-control select2" style="width: 100%;">
										<option value="pCode">수신자</option>
										<option value="pName">아이디</option>
										<option value="pPrice">주문번호</option>
									</select>
                                    </div>
                                </div>
                                <!-- /.col -->
                                <div class="col-md-2 col-xs-10">
                                    <div class="form-group">
                                        <input type="text" id="SearchWord" name="SearchWord" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-9 col-xs-2">
                                    <div class="form-group">
                                        <button type="button" id="btnSearch" class="btn btn-primary">검색</button>
                                    </div>
                                </div>
                                <!-- /.col -->
                                <div class="col-md-3">
                                  <!-- Date and time range -->
					              <div class="form-group">
					                <label>주문 날짜 선택 :</label>
					
					                <div class="input-group">
					                  <div class="input-group-addon">
					                    <i class="fa fa-clock-o"></i>
					                  </div>
					                  <input type="text" class="form-control pull-right" id="reservationtime">
					                </div>
					                <!-- /.input group -->
					              </div>
					              <!-- /.form group -->
                                </div>
                                <div class="col-md-9">
                                    <!-- Date and time range -->
                                    <div class="form-group" id="testSpace" style="display: none">
                                        <label>간편일자 조회:</label>

                                        <div class="input-group">
                                            <button type="button" class="btn btn-default pull-right" id="daterange-btn">
                                            <span>
                                                                  <i class="fa fa-calendar"></i> Date range picker
                                                                </span>
                                            <i class="fa fa-caret-down"></i>
                                            </button>
                                        </div>
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
                                <h3 class="box-title">주문 목록</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body table-responsive no-padding">
                                <table id="orderTable" class="table table-hover">
                                    <tr>
                                        <th style="width:5%;">번호</th>
                                        <th style="width:10%;">주문일</th>
                                        <th style="width:10%;">주문번호</th>
                                        <th style="width:35%;">상품명</th>
                                        <th style="width:5%;">아이디</th>
                                        <th style="width:5%;">수신자</th>
                                        <th style="width:5%;">결제방법</th>
                                        <th style="width:10%;">총금액</th>
                                        <th style="width:10%;">처리상태</th>
                                    </tr>
                                    <c:forEach var="rows" items="${orderList }" varStatus="i">
	                                    <tr>
	                                        <td>${fn:length(orderList) - i.index }</td>
	                                        <td><fmt:parseDate value="${rows.oDate}" var="Date" pattern="yyyy-MM-dd HH:mm:ss" scope="page"></fmt:parseDate><fmt:formatDate value="${Date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                        <td><a href="/admin/page/orderDetail?oCode=${rows.oCode }">${rows.oCode }</a></td>
	                                        <td>${rows.pName }</td>
	                                        <td>${rows.mId }</td>
	                                        <td>${rows.oReceiveName }</td>
	                                        <c:choose>
	                                        	<c:when test="${rows.oPurchaseMethod == 0}">
	                                        		<td>무통장</td>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<td>적립금</td>
	                                        	</c:otherwise>
	                                        </c:choose>
	                                        <td><fmt:formatNumber value="${rows.oProductAmount}" pattern="###,###,###"/></td>
	                                        <td>
	                                        	<div id="status${i.index}" class="status" data-status="${rows.oStatus}" data-ocode="${rows.oCode}"></div>
	                                        </td>
	                                    </tr>
                                    </c:forEach>
                                </table>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer clearfix">
                                <ul class="pagination pagination-sm no-margin pull-right">
                                	<c:if test="${paging.currPage > 1 }">
	                                    <li><a href="/admin/page/order?currPage=${paging.currPage -1}">&laquo;</a></li>
                                	</c:if>
                                		<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
                                			<c:choose>
	                                			<c:when test="${i eq paging.currPage}">
	                                				<li class="active"><a href="/admin/page/order?currPage=${i}" >${i }<span class="sr-only">(current)</span></a></li>
	                                			</c:when>
	                                			<c:otherwise>
	                                				<li><a href="/admin/page/order?currPage=${i}">${i }</a></li>
	                                			</c:otherwise>
                                			</c:choose>
                                		</c:forEach>
                                	<c:if test="${paging.currPage < paging.totalPage }">
                                		<li><a href="/admin/page/order?currPage=${paging.currPage +1}">&raquo;</a></li>
                                	</c:if>	
                                </ul>
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
</body>
  <!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/admin/include/footer.jsp" %>
  <!-- 푸터 끝 -->
</html>
