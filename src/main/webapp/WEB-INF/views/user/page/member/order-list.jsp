<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>contact</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- css 시작 -->
	<%@ include file="/WEB-INF/views/user/include/css.jsp"%>
	<!-- css 끝 -->
</head>	
<body class="animsition">
	<!-- 해더파일 시작 -->
	<%@ include file="/WEB-INF/views/user/include/header.jsp" %>
	<!-- 해더파일 끝 -->
	
	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(/u_resources/site-images/cart_banner.jpg);">
		<h2 class="l-text2 t-center">
			Order List
		</h2>
	</section>

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
		<div class="container">
			<!-- Cart item -->
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite">
				
					<c:choose>
						<c:when test="${map.cartExist == 0}">
							<h4 class="text-center">결제 정보가 비었습니다.</h4>
						</c:when>
						<c:otherwise>
							<table class="table-shopping-cart">
								<tr class="table-head">
									<th class="column-1">일자(주문번호)</th>
									<th class="column-1"></th>
									<th class="column-2">주문상품명</th>
									<th class="column-2">옵션</th>
									<th class="column-1">수량</th>
									<th class="column-1">가격</th>
									<th class="column-1">주문상태</th>
								</tr>
								<c:forEach var="rows" items="${orderList }" >
								<tr class="table-row">
									<td class="column-1"><fmt:parseDate value="${rows.oDate}" var="Date" pattern="yyyy-MM-dd HH:mm:ss" scope="page"></fmt:parseDate><fmt:formatDate value="${Date}" pattern="yyyy-MM-dd HH:mm:ss"/><br><a href="/user/page/member/orderDetail?oCode=${rows.oCode }">(${rows.oCode })</a></td>
									<td class="column-1">
										<div class="cart-img-product b-rad-4 o-f-hidden">
											<img src="/product/${rows.pImg1 }" alt="IMG-PRODUCT">
										</div>
									</td>
									<td class="column-2">${rows.pName }</td>
									<td class="column-2">${rows.pSize }<br>${rows.pColor }</td>
									<td class="column-1">${rows.oCount }</td>
									<td class="column-1"><fmt:formatNumber value="${rows.oProductAmount }" pattern="###,###,###"></fmt:formatNumber>원</td>
									<td class="column-1">${rows.sName }</td>
								</tr>
								</c:forEach>
								
							</table>
						</c:otherwise>
					</c:choose>
					
				</div>
			</div>
		</div>
	</section>


	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/user/include/footer.jsp" %>
	<!-- 푸터 끝  -->

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>

	<!-- js 시작 -->
	<%@ include file="/WEB-INF/views/user/include/js.jsp"%>
	<!-- js 끝 -->
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
</body>
</html>
