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
			Cart
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
							<h4 class="text-center">장바구니가 비었습니다.</h4>
						</c:when>
						<c:otherwise>
						<form name="form1" id="form1" method="post" action="/user/page/member/update_cart">
							<table class="table-shopping-cart">
								<tr class="table-head">
									<th class="column-1"><input type="checkbox" id="allCheck"></th> 
									<th class="column-1"></th>
									<th class="column-2">상품명</th>
									<th class="column-2">사이즈</th>
									<th class="column-3">가격</th>
									<th class="column-4 p-l-70">수량</th>
									<th class="column-5">합계</th>
									<th class="column-1"></th>
								</tr>
								
								<c:forEach var="rows" items="${map.list }" >
								<tr class="table-row">
									<td class="column-1"><input type="checkbox" name="checkRow" value="${rows.cNo }" data-cNo="${rows.cNo }"></td>
									<td class="column-1">
										<div class="cart-img-product b-rad-4 o-f-hidden">
											<img src="/product/${rows.pImg1 }" alt="IMG-PRODUCT">
										</div>
									</td>
									<td class="column-2"><a href="/user/page/product/detail?pNo=${rows.pNo }">${rows.pName}</a></td>
									<td class="column-2">${rows.pSize}</td>
									<td class="column-3">${rows.pPrice }</td>
									<td class="column-4">
										<div class="flex-w bo5 of-hidden w-size17">
											<button class="btn-num-product-down color1 flex-c-m size7 bg8 eff2">
												<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
											</button>
		
											<input class="size8 m-text18 t-center num-product" type="number" id="cno_${rows.cNo }" name="amount" value="${rows.amount }">
											
											
											<button class="btn-num-product-up color1 flex-c-m size7 bg8 eff2">
												<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
											</button>
										</div>
										<input type="hidden" name="cNo" value="${rows.cNo}">
									</td>
									<td class="column-5" id="changeValue">${rows.amount * rows.pPrice }</td>
									<td>
										<button type="button" class="btn-xs btn btn-modify" data-cNo="${rows.cNo}" onclick="modi(${rows.cNo })">수정</button>
										<a href="/user/page/member/delete_cart?cNo=${rows.cNo}" class="btn-xs btn btn-delete" >삭제</a>
									</td>
								</tr>
								</c:forEach>
								
							</table>
							</form>
							<input type="hidden" id="pAmount" ></input>
							<div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
								<div class="size10 trans-0-4 m-t-10 m-b-10">
									<!-- Button -->
									<button type="button" id="btnDelete" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
										삭제
									</button>
								</div>
								<div class="flex-w flex-m w-full-sm">
									<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
										<!-- Button -->
										<input type="hidden" name="count" value="${map.count}">
										<button type="button" id="btnModify" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
											수정
										</button>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>

			
			 
			
			<!-- Total -->
			<div class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm" >
				<h5 class="m-text20 p-b-24">
					장바구니 합계
				</h5>

				<!--  -->
				<div class="flex-w flex-sb-m p-b-12">
					<span class="s-text18 w-size19 w-full-sm">
						배송금액: 무료
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						
					</span>
				</div>

				<!--  
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="s-text18 w-size19 w-full-sm">
						Shipping:
					</span>

					<div class="w-size20 w-full-sm">
						<p class="s-text8 p-b-23">
							There are no shipping methods available. Please double check your address, or contact us if you need any help.
						</p>

						<span class="s-text19">
							Calculate Shipping
						</span>

						<div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12">
							<select class="selection-2" name="country">
								<option>Select a country...</option>
								<option>US</option>
								<option>UK</option>
								<option>Japan</option>
							</select>
						</div>

						<div class="size13 bo4 m-b-12">
						<input class="sizefull s-text7 p-l-15 p-r-15" type="text" name="state" placeholder="State /  country">
						</div>

						<div class="size13 bo4 m-b-22">
							<input class="sizefull s-text7 p-l-15 p-r-15" type="text" name="postcode" placeholder="Postcode / Zip">
						</div>
						<!-- Button 
						<div class="size14 trans-0-4 m-b-10">
							
							<button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
								Update Totals
							</button>
						</div>
						-->
				<!-- 		
					</div>
				</div>
				-->

				<!--  -->
				<div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span class="m-text22 w-size19 w-full-sm">
						총 금액:
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						<fmt:formatNumber pattern="###,###,###" value="${map.sumCart}"/> 원
					</span>
				</div>

				<div class="size15 trans-0-4">
					<!-- Button -->
					<button id="checkOut" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
						결제
					</button>
				</div>
			</div>
			<!-- 결제 끝 -->
			
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
	<script type="text/javascript">
	function deleteAction(){
		  var checkRow = "";
		  $( "input[name='checkRow']:checked" ).each (function (){
		    checkRow = checkRow + $(this).val()+"," ;
		  });
		  checkRow = checkRow.substring(0,checkRow.lastIndexOf( ",")); //맨끝 콤마 지우기
		 
		  if(checkRow == ''){
		    alert("삭제할 대상을 선택하세요.");
		    return false;
		  }
		  console.log("### checkRow => {}"+checkRow);
		 
		  if(confirm("정보를 삭제 하시겠습니까?")){
		      
		      //삭제처리 후 다시 불러올 리스트 url      
		      var url = document.location.href;
		      var page = $("#page").val();
		      var saleType = $("#saleType").val();
		      var schtype = $("#schtype").val();
		      var schval = $("#schval").val();
		      location.href="${rc.contextPath}/test_proc.do?idx="+checkRow+"&goUrl="+url+"&page="+page+"&saleType="+saleType+"schtype="+schtype+"schval="+schval;      
		  }
	}
	
	
	function ajaxArrayList(){
	    $.ajax({
	        type: "POST",
	        url : "/user/page/member/delete_cart",
	        data: JSON.stringify(ArrayList),
	        dataType : "json",
	        contentType : "application; charset=utf-8",
	        success : function(data){
	            //success function
	            //TIP : location.herf = "사용할 URL" 하면 GET방식으로 
	        },
	        error : function(){
	            //error function
	        }
	    });
	}
	
	/*상품 개별 갯수 수정용 */
	function modi(cno){
		var amount = $("#cno_"+cno).val();
		$("#pAmount").val(amount);
	}
	
	$(document).ready(function(){
		/*체크박스 전체 선택&해제 */
		$("#allCheck").on("click", function(){				//만약 전체 선택 체크박스가 체크된상태일경우
			if($("#allCheck").prop("checked")) {		 	//해당화면에 전체 checkbox들을 체크해준다 
				$("input[type=checkbox]").prop("checked",true);	// 전체선택 체크박스가 해제된 경우 
			}else { 
				$("input[type=checkbox]").prop("checked",false);//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			}
		});
		
		/*상품 개별 수정 */
		$(".btn-modify").on("click", function(){
			
			var amount = $("#pAmount").val();
			var cNo = $(this).attr("data-cNo");  
			console.log(cNo+" : "+amount);
			
			$.ajax({
				url : "/user/page/member/update_cart",
				type : "post",
				data : {"cNo":cNo,"amount":amount },
				success : function(data) {
					alert("수정 완료");
					location.reload();
				},
				error : function(data) {
					console.log(data);
					alert("에러");
				}
			});
			
		});
		
		$("#btnDelete").click(function(){
			$("#form1").submit();
		});
		
		$("#btnModify").click(function(){
			$("#form1").submit();
		});
		
		$("#checkOut").click(function(){
			location.href="/user/page/member/order";
		});
	});
	</script>
</body>
</html>
