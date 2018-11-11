<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
<%@ include file="/WEB-INF/views/admin/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body class="animsition">
	<!-- 해더파일 시작 -->
	<%@ include file="/WEB-INF/views/user/include/header.jsp"%>
	<!-- 해더파일 끝 -->

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: url(/u_resources/site-images/order_banner.jpg);">
		<h2 class="l-text2 t-center">Order</h2>
	</section>

	<section class="content">
	<form role="form" id="frm" action="/user/page/checkOut" method="post">
		<div class="container">
		<div class="row">
			<!-- left column -->
			<div class="col-md-6">
				<!-- general form elements -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">수령자 정보</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					
						<div class="box-body">
							<div class="col-md-12">
								<div class="form-group">
									<label for="exampleInputEmail1">배송지선택</label>
									<div class="radio">
										<label> 
											<input type="radio" name="orderInfo" id="orderInfo" value="option1" checked> 직접 입력
										</label>
										<label> 
											<input type="radio" name="orderInfo" id="orderInfo2" value="option2"> 주문자 정보 입력
										</label>
									</div>

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="oReceiveName">성함</label> <input type="text"
										class="form-control" id="oReceiveName" name="oReceiveName"
										placeholder="Enter name">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="oReceivePhone">핸드폰번호</label> <input type="text"
										class="form-control" id="oReceivePhone" name="oReceivePhone"
										placeholder="Enter PhoneNumber">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-inline">
									<label for="mSubAddress">주소</label><br> <input type="text"
										class="form-control" id="mPost" name="oReceivePost" readonly>
									<button type="button" id="btnFindPost" class="btn" onclick="findPost();" >우편번호</button>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" id="mMainAddress" name="oReceiveMainAddress"
										 readonly>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" id="mSubAddress" name="oReceiveSubAddress"
										placeholder="나머지 주소 입력">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="oRequirements">요청사항</label>
									<textarea class="form-control" id="oRequirements" name="oRequirements"
										placeholder="Enter comment"></textarea>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
				</div>
				<!-- /.box -->

				<!-- 안쓰는거 -->
				<div class="box box-danger" style="display: none">
					<div class="box-header with-border">
						<h3 class="box-title">Different Width</h3>
					</div>
					<div class="box-body">
						<div class="row">
							<div class="col-xs-1">
								<input type="text" class="form-control">
							</div>
							<div class="col-xs-1">
								<input type="text" class="form-control">
							</div>
							<div class="col-xs-5">
								<input type="text" class="form-control" placeholder=".col-xs-5">
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->
			<!-- right column -->
			<div class="col-md-6">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">주문자 정보</h3>
					</div>
					<!-- /.box-header -->
					
						<div class="box-body">
							<div class="col-md-6">
								<div class="form-group">
									<label for="userName">성함</label> <input type="text"
										class="form-control" id="userName"
										value="${user.mName }" readonly>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPhone">핸드폰번호</label> <input
										type="text" class="form-control" id="userPhone" value="${user.mPhone }"
										placeholder="Enter PhoneNumber" readonly>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="userAddress">주소</label> <input type="text" value="insertAddress()"
										class="form-control" id="userAddress"
										placeholder="Enter address" readonly>
									<input type="hidden" id="userPost" value="${user.mPost }">
									<input type="hidden" id="userMaddress" value="${user.mMainAddress }">
									<input type="hidden" id="userSaddress" value="${user.mSubAddress }">
								</div>
							</div>
						</div>
						
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (right) -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">상품 정보</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body no-padding">
						<table class="table table-condensed">
							<c:choose>
								<c:when test="${payParam == null }">
									<tr>
										<th style="width: 10px">no</th>
										<th style="width: 15%;">상품이미지</th>
										<th>상품명</th>
										<th>상품옵션</th>
										<th style="width: 10%;">상품수량</th>
										<th style="width: 10%;">적립금</th>
										<th style="width: 10%;">주문금액</th>
									</tr>
									<c:forEach var="rows" items="${cart}" varStatus="numberCount">
									<tr>
										<td>${numberCount.count}</td>
										<td><img src="/product/${rows.pImg1}" style="width:100px; height:100px;"></td>
										<td><input type="hidden" name="pNo" value="${rows.pNo }"><a href="/user/page/product/detail?pNo=${rows.pNo }">${rows.pName}</a></td>
										<td><input type="hidden" name="pSize" value="${rows.pSize }"><input type="hidden" name="pColor" value="${rows.pColor}">색상:${rows.pColor } , 사이즈:${rows.pSize }</td>
										<td><input type="hidden" name="amount" value="${rows.amount }">${rows.amount}개</td>
										<td><fmt:formatNumber pattern="###,###,###" value="${(rows.amount * rows.pPrice) * 0.1}"/> 원</td>
										<td><span class="badge bg-red"><fmt:formatNumber pattern="###,###,###" value="${rows.amount * rows.pPrice}"/></span>원</td>
									</tr>
									</c:forEach>
									<tfoot>
										<tr>
											<th></th>
											<th></th>
											<th></th>
											<td></td>
											<th><input type="hidden" name="oCount" value="${sumAmount }">합계${sumAmount} 개</th>
											<th><input type="hidden" name="oPoint" value="${sumOrder * 0.1 }">합계 <fmt:formatNumber pattern="###,###,###" value="${sumOrder * 0.1}"/> 원</th>
											<th><input type="hidden" name="oProductAmount" value="${sumOrder }">총합 <fmt:formatNumber pattern="###,###,###" value="${sumOrder}"/> 원</th>
										</tr>
									</tfoot>
								</c:when>
								<c:otherwise>
									<tr>
										<th style="width: 10px">no</th>
										<th style="width: 15%;">상품이미지</th>
										<th>상품명</th>
										<th>상품옵션</th>
										<th style="width: 10%;">상품수량</th>
										<th style="width: 10%;">적립금</th>
										<th style="width: 10%;">주문금액</th>
									</tr>
									<tr>
										<td></td>
										<td><img src="/product/${payProduct.pImg1}" style="width:100px; height:100px;"></td>
										<td><input type="hidden" name="pNo" value="${payParam.pNo }"><a href="/user/page/product/detail?pNo=${payParam.pNo }">${payProduct.pName}</a></td>
										<td><input type="hidden" name="pSize" value="${payParam.pSize }"><input type="hidden" name="pColor" value="${payParam.pColor}">색상:${payParam.pColor } , 사이즈:${payParam.pSize }</td>
										<td><input type="hidden" name="amount" value="${payParam.amount }">${payParam.amount}개</td>
										<td><fmt:formatNumber pattern="###,###,###" value="${(payParam.amount * payProduct.pPrice) * 0.1}"/> 원</td>
										<td><span class="badge bg-red"><fmt:formatNumber pattern="###,###,###" value="${payParam.amount * payProduct.pPrice}"/></span>원</td>
									</tr>
									<tfoot>
										<tr>
											<th></th>
											<th></th>
											<th></th>
											<td></td>
											<th><input type="hidden" name="oCount" value="${payParam.amount }">합계 ${payParam.amount }개</th>
											<th><input type="hidden" name="oPoint" value="${(payParam.amount * payProduct.pPrice) * 0.1}">합계 <fmt:formatNumber pattern="###,###,###" value="${(payParam.amount * payProduct.pPrice) * 0.1}"/> 원</th>
											<th><input type="hidden" name="oProductAmount" value="${payParam.amount * payProduct.pPrice}">총합 <fmt:formatNumber pattern="###,###,###" value="${payParam.amount * payProduct.pPrice}"/> 원</th>
										</tr>
									</tfoot>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">결제 정보/주문 동의</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
						<div class="box-body">
							<div class="col-md-12">
								<div class="form-group">
									<label for="exampleInputEmail1">결제방법</label>
									<div class="radio">
										<label> <input type="radio" name="oPurchaseMethod"
											id="paymentAccount" value="0" checked> 무통장
										</label> 
										<label> <input type="radio" name="oPurchaseMethod"
											id="paymentPoint" value="1"> 적립금
										</label>
									</div>

								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="exampleInputEmail1">결제동의</label> <input type="text"
										class="form-control" id="exampleInputEmail1"
										placeholder="회원 정보 제공 동의">
								</div>
								<div class="form-inline">
									<input type="checkbox" class="checkbox" id="agree"> <small>위
										약관을 읽었으며, 결제 진행에 동의 합니다</small>
								</div>
								<div class="box-footer">
									<button type="button" id="btnPayApply" class="btn btn-primary">결제하기</button>
								</div>
							</div>


						</div>
						<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
		</div>
		</form>
	</section>
	<!-- /.content -->

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
	<!-- 푸터 끝  -->

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
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
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect2')
		});
	</script>
	<script type="text/javascript">
	var post = "${user.mPost}";
	var mAddress = "${user.mMainAddress}";
	var sAddress = "${user.mSubAddress}";
	
	$(document).ready(function(){
		
		insertAddress();
		
		$("#orderInfo2").change(function(){
			if($("input:radio[id='orderInfo2']").prop("checked", true)){
				$("#oReceiveName").val($('#userName').val());
				$("#oReceivePhone").val($("#userPhone").val());
				$("#mPost").val(post);
				$("#mMainAddress").val(mAddress);
				$("#mSubAddress").val(sAddress);
			}
		});
		
	});
	
	function insertAddress(){
		
		var address = post+" "+mAddress+" "+sAddress;
		
		document.getElementById('userAddress').value = address;
	}
	</script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	function findPost() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('mPost').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('mMainAddress').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('mSubAddress').focus();
            }
        }).open();
    }
	</script>
	<script type="text/javascript">
	$(function(){
		
		$("#btnPayApply").click(function(){
			var oReceiveName = $("#oReceiveName").val();
			var oReceivePhone = $("#oReceivePhone").val();
			var mPost = $("#mPost").val();
			var mMainAddress = $("#mMainAddress").val();
			var mSubAddress = $("#mSubAddress").val();
			var oRequirements = $("#oRequirements").val();
			
			if(oReceiveName == ""){
				alert("받는사람 이름을 입력해주세요");
				$("#oReceiveName").focus();
				return false;
			}else if(oReceivePhone == ""){
				alert("받는사람 핸드폰 번호를 입력해주세요");
				$("#oReceivePhone").focus();
				return false;
			}else if(mPost == ""){
				alert("받는사람 주소를 검색해주세요");
				$("#btnFindPost").click();
				return false;
			}else if(mSubAddress == ""){
				alert("상세주소를 입력해주세요");
				$("#mSubAddress").focus();
				return false;
			}else if(!$("#agree").is(':checked')){
				alert("약관을 읽고 동의해야 결제 진행이 됩니다");
				return false;
			}else{
				console.log("이름 : "+oReceiveName+" 연락처 : "+oReceivePhone+" 우편번호 : "+mPost+" 기본주소 : "+mMainAddress+" 상세주소 : "+mSubAddress+" 요청사항 : "+oRequirements);
				$("#frm").submit();
			}
			
		});
	});
	</script>
</body>
</html>