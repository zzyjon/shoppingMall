<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>상품</title>
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
	<c:choose>
		<c:when test="${productType == 'A'}">
			<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(/u_resources/site-images/top_banner.jpg);">
				<h2 class="l-text2 t-center">
					Top
				</h2>
				<p class="m-text13 t-center">
					New Arrivals mans Collection 2018
				</p>
			</section>
		</c:when>
		<c:when test="${productType == 'B'}">
			<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(/u_resources/site-images/bottom_banner.jpg);">
				<h2 class="l-text2 t-center">
					Bottom
				</h2>
				<p class="m-text13 t-center">
					New Arrivals mans Collection 2018
				</p>
			</section>
		</c:when>
		<c:when test="${productType == 'C'}">
			<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(/u_resources/site-images/outer_banner.jpg);">
				<h2 class="l-text2 t-center">
					Outerwear
				</h2>
				<p class="m-text13 t-center">
					New Arrivals mans Collection 2018
				</p>
			</section>
		</c:when>
		<c:when test="${productType == 'D'}">
			<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(/u_resources/site-images/accessory_banner.jpg);">
				<h2 class="l-text2 t-center" style="color:balck;">
					Accessory
				</h2>
				<p class="m-text13 t-center">
					New Arrivals mans Collection 2018
				</p>
			</section>
		</c:when>
		<c:when test="${productType == 'E'}">
			<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(/u_resources/site-images/shoes_banner.jpg);">
				<h2 class="l-text2 t-center">
					Shoes
				</h2>
				<p class="m-text13 t-center">
					New Arrivals mans Collection 2018
				</p>
			</section>
		</c:when>
		<c:otherwise>
           <section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(/u_resources/site-images/other_banner.jpg);">
				<h2 class="l-text2 t-center">
					All
				</h2>
				<p class="m-text13 t-center">
					New Arrivals mans Collection 2018
				</p>
			</section>
       </c:otherwise>
	</c:choose>


	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Categories
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="/user/page/product/view" class="s-text13 active1">
									all
								</a>
							</li>

							<li class="p-t-4">
								<a href="/user/page/product/view?productType=C" class="s-text13">
									outerwear
								</a>
							</li>

							<li class="p-t-4">
								<a href="/user/page/product/view?productType=A" class="s-text13">
									top
								</a>
							</li>

							<li class="p-t-4">
								<a href="/user/page/product/view?productType=B" class="s-text13">
									bottom
								</a>
							</li>

							<li class="p-t-4">
								<a href="/user/page/product/view?productType=D" class="s-text13">
									accessory
								</a>
							</li>
							
							<li class="p-t-4">
								<a href="/user/page/product/view?productType=E" class="s-text13">
									shoes
								</a>
							</li>
						</ul>

						<!-- 색상 검색
						<div class="filter-color p-t-22 p-b-50 bo3">
							<div class="m-text15 p-b-12">
								Color
							</div>

							<ul class="flex-w">
								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter1" type="checkbox" name="color-filter1">
									<label class="color-filter color-filter1" for="color-filter1"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter2" type="checkbox" name="color-filter2">
									<label class="color-filter color-filter2" for="color-filter2"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter3" type="checkbox" name="color-filter3">
									<label class="color-filter color-filter3" for="color-filter3"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter4" type="checkbox" name="color-filter4">
									<label class="color-filter color-filter4" for="color-filter4"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter5" type="checkbox" name="color-filter5">
									<label class="color-filter color-filter5" for="color-filter5"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter6" type="checkbox" name="color-filter6">
									<label class="color-filter color-filter6" for="color-filter6"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter7" type="checkbox" name="color-filter7">
									<label class="color-filter color-filter7" for="color-filter7"></label>
								</li>
							</ul>
						</div> -->
						
						<div class="search-product pos-relative bo4 of-hidden">
						<form id="searchForm" action="/user/page/product/search" method="get">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" id="keyword" name="keyword" placeholder="Search Products...">

							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" id="btnSearch" aria-hidden="true"></i>
							</button>
						</form>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting">
									<option value="pNo">기본 정렬</option>
									<option value="pPrice_a">낮은 가격 순</option>
									<option value="pPrice_d">높은 가격 순</option>
								</select>
							</div>
							<!--  삭제보류
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting">
									<option>shirt</option>
								</select>
							</div>
							--> 
						</div>
						
						<c:choose>
							<c:when test="${keyword != null }">
								<span class="s-text8 p-t-5 p-b-5">
									검색어 "${keyword }", 검색 결과 ${paging.totalCount } 건 
								</span>
							</c:when>
							<c:otherwise>
								<span class="s-text8 p-t-5 p-b-5">
									Showing 1–9 of results ${paging.totalCount } 건 
								</span>
							</c:otherwise>
						</c:choose>
					</div>

					<!-- Product -->
					<div class="row">
						<c:forEach var="rows" items="${goodsList}">
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<a href="/user/page/product/detail?pNo=${rows.pNo }">
									<img src="/product/${rows.pImg1 }" onerror="this.src='/u_resources/images/item-04.jpg'" alt="IMG-PRODUCT" style="width:270px; height:320px;">
									</a>
									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<a href="/user/page/product/detail?pNo=${rows.pNo }" class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												자세히 보기
											</a>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
						
									<a href="/user/page/product/detail?pNo=${rows.pNo }" class="block2-name dis-block s-text3 p-b-5">
										${rows.pName }
									</a>

									<span class="block2-price m-text6 p-r-5">
										<fmt:formatNumber value="${rows.pPrice }" pattern="###,###,###"/>
									</span>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					<!-- Pagination -->
					<c:choose>
						<c:when test="${productType == 'A' }">
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/view?productType=A&currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/view?productType=A&currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/view?productType=A&currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/view?productType=A&currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
						</c:when>
						<c:when test="${productType == 'B' }">
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/view?productType=B&currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/view?productType=B&currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/view?productType=B&currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/view?productType=B&currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
						</c:when>
						<c:when test="${productType == 'C' }">
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/view?productType=C&currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/view?productType=C&currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/view?productType=C&currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/view?productType=C&currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
						</c:when>
						<c:when test="${productType == 'D' }">
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/view?productType=D&currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/view?productType=D&currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/view?productType=D&currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/view?productType=D&currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
						</c:when>
						<c:when test="${productType == 'E' }">
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/view?productType=E&currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/view?productType=E&currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/view?productType=E&currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/view?productType=E&currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
						</c:when>
						<c:when test="${keyword != null }">
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/search?keyword=${keyword }&currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/search?keyword=${keyword }&currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/search?keyword=${keyword }&currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/search?keyword=${keyword }&currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
						</c:when>
						<c:otherwise>
							<div class="pagination flex-m flex-w p-t-26">
								<c:if test="${paging.currPage > 1 }">
									<a href="/user/page/product/view?currPage=${paging.currPage -1}" class="item-pagination flex-c-m trans-0-4"> Prev </a>
								</c:if>
									<c:forEach var="i" begin="${paging.startPageNum}" end="${paging.lastPageNum}">
											<c:choose>
												<c:when test="${i eq paging.currPage}">
														<a href="/user/page/product/view?currPage=${i}" class="item-pagination flex-c-m trans-0-4 active-pagination"> ${i}</a>
												</c:when>
												<c:otherwise>
														<a href="/user/page/product/view?currPage=${i}" class="item-pagination flex-c-m trans-0-4"> ${i}</a>
												</c:otherwise>
											</c:choose>
									</c:forEach>
								<c:if test="${paging.currPage < paging.totalPage }">
									<a href="/user/page/product/view?currPage=${paging.currPage +1}" class="item-pagination flex-c-m trans-0-4" > Next </a>
								</c:if>
							</div>
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
	<script>
	$(function(){
		$("#btnSearch").click(function(){
			var keyword = $("#keyword").val();
			//alert(keyword);
			
			$("#searchForm").submit();
		
		});
	});
	</script>
</body>
</html>
