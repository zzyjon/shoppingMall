<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
	
	<!-- breadcrumb -->
	<div class="bread-crumb bgwhite flex-w p-l-52 p-r-15 p-t-30 p-l-15-sm">
		<a href="index.html" class="s-text16">
			Home
			<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a>

		<a href="blog.html" class="s-text16">
			Blog
			<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a>

		<span class="s-text17">
			Black Friday Guide: Best Sales & Discount Codes
		</span>
	</div>

	<!-- content page -->
	<section class="bgwhite p-t-60 p-b-25">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-50 p-r-0-lg">
						<div class="p-b-40">
							<c:if test="${reviewDetail.rImg1 != null }">
							<div class="blog-detail-img wrap-pic-w">
								<img src="/review/${reviewDetail.rImg1 }" alt="IMG-BLOG" style="width:500px; heigth:670px;">
							</div>
							</c:if>

							<div class="blog-detail-txt p-t-33">
								<h4 class="p-b-11 m-text24">
									${reviewDetail.rTitle}
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										아이디: ${reviewDetail.mId}
										<span class="m-l-3 m-r-6">|</span>
									</span>
									
									<span>
										작성자: ${reviewDetail.rWriter}
										<span class="m-l-3 m-r-6">|</span>
									</span>
									
									<span>
										작성일: ${reviewDetail.rWriteDate}
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										조회수: ${reviewDetail.rViewcount}
									</span>
								</div>

								<p class="p-b-25">
									${reviewDetail.rContent }
								</p>
							</div>
							<c:if test="${idCheck == 'ok' }">
								<div class="form-inline">
									<div>
										<a href="/user/page/board/modi?rNo=${reviewDetail.rNo }" class="btn btn-primary">수정</a>
									</div>
									<div>
										<a href="/user/page/board/delete?rNo=${reviewDetail.rNo }" class="btn btn-primary">삭제</a>
									</div>
								</div>
							</c:if>					
							
						</div>
						
						<div class="container">
                            <div class="commentList col-lg-9" style="left: -29px;">
                            
                            </div>
                        </div>

						<!-- Leave a comment -->
						<form class="leave-comment" name="commentInsertForm">
							<input type="hidden" name="rNo" value="${reviewDetail.rNo}"/>
							<textarea class="dis-block s-text7 size18 bo12 p-l-18 p-r-18 p-t-13 m-b-20" id="content" name="content" placeholder="Comment..."></textarea>

							<div class="w-size24">
								<!-- Button -->
								<button type="button" name="commentInsertBtn" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									댓글 남기기
								</button>
							</div>
						</form>
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="rightbar">
						<!-- Search -->
						<div class="pos-relative bo11 of-hidden">
							<input class="s-text7 size16 p-l-23 p-r-50" type="text" name="search-product" placeholder="Search">

							<button class="flex-c-m size5 ab-r-m color1 color0-hov trans-0-4">
								<i class="fs-13 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>

						<!-- Categories -->
						<h4 class="m-text23 p-t-56 p-b-34">
							Categories
						</h4>

						<ul>
							<li class="p-t-6 p-b-8 bo6">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Fashion
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Beauty
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Street Style
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Life Style
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									DIY & Crafts
								</a>
							</li>
						</ul>

						<!-- Featured Products -->
						<h4 class="m-text23 p-t-65 p-b-34">
							Featured Products
						</h4>

						<ul class="bgwhite">
							<li class="flex-w p-b-20">
								<a href="product-detail.html" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="/u_resources/images/item-16.jpg" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="product-detail.html" class="s-text20">
										White Shirt With Pleat Detail Back
									</a>

									<span class="dis-block s-text17 p-t-6">
										$19.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="product-detail.html" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="/u_resources/images/item-17.jpg" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="product-detail.html" class="s-text20">
										Converse All Star Hi Black Canvas
									</a>

									<span class="dis-block s-text17 p-t-6">
										$39.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="product-detail.html" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="/u_resources/images/item-08.jpg" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="product-detail.html" class="s-text20">
										Nixon Porter Leather Watch In Tan
									</a>

									<span class="dis-block s-text17 p-t-6">
										$17.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="product-detail.html" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="/u_resources/images/item-03.jpg" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="product-detail.html" class="s-text20">
										Denim jacket blue
									</a>

									<span class="dis-block s-text17 p-t-6">
										$39.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="product-detail.html" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="/u_resources/images/item-05.jpg" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="product-detail.html" class="s-text20">
										Nixon Porter Leather Watch In Tan
									</a>

									<span class="dis-block s-text17 p-t-6">
										$17.00
									</span>
								</div>
							</li>
						</ul>

						<!-- Archive -->
						<h4 class="m-text23 p-t-50 p-b-16">
							Archive
						</h4>

						<ul>
							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									July 2018
								</a>

								<span class="s-text13">
									(9)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									June 2018
								</a>

								<span class="s-text13">
									(39)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									May 2018
								</a>

								<span class="s-text13">
									(29)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									April  2018
								</a>

								<span class="s-text13">
									(35)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									March 2018
								</a>

								<span class="s-text13">
									(22)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									February 2018
								</a>

								<span class="s-text13">
									(32)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									January 2018
								</a>

								<span class="s-text13">
									(21)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									December 2017
								</a>

								<span class="s-text13">
									(26)
								</span>
							</li>
						</ul>

						<!-- Tags -->
						<h4 class="m-text23 p-t-50 p-b-25">
							Tags
						</h4>

						<div class="wrap-tags flex-w">
							<a href="#" class="tag-item">
								Fashion
							</a>

							<a href="#" class="tag-item">
								Lifestyle
							</a>

							<a href="#" class="tag-item">
								Denim
							</a>

							<a href="#" class="tag-item">
								Streetstyle
							</a>

							<a href="#" class="tag-item">
								Crafts
							</a>
						</div>
					</div>
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
	var rNo = '${reviewDetail.rNo}'; //게시글 번호
	 
	$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
	    
		var test = $("#content").val();
	
		if( test == "" ){
			alert("댓글 내용을 입력해주세요 ");
			return false;
		}
		
		var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
	    
	    commentInsert(insertData);
	});
	 
	 
	 
	//댓글 목록 
	function commentList(){
	    $.ajax({
	        url : '/user/page/comment/list',
	        type : 'get',
	        data : {'rNo':rNo},
	        success : function(data){
	            var a =''; 
	            $.each(data, function(key, value){ 
	                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
	                a += '<div class="commentInfo'+value.rbcNo+'">'+'댓글번호 : '+value.rbcNo+' / 작성자 : '+value.rbcWriter;
	                a += '<a onclick="commentUpdate('+value.rbcNo+',\''+value.rbcContent+'\');"> 수정 </a>';
	                a += '<a onclick="commentDelete('+value.rbcNo+');"> 삭제 </a> </div>';
	                a += '<div class="commentContent'+value.rbcNo+'"> <p> 내용 : '+value.rbcContent +'</p>';
	                a += '</div></div>';
	            });
	            
	            $(".commentList").html(a);
	        }
	    });
	}
	 
	//댓글 등록
	function commentInsert(insertData){
	    $.ajax({
	        url : '/user/page/comment/insert',
	        type : 'post',
	        data : insertData,
	        success : function(data){
	            if(data == 1) {
	                commentList(); //댓글 작성 후 댓글 목록 reload
	                $('[name=content]').val('');
	            }
	        }
	    });
	}
	 
	//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
	function commentUpdate(rbcNo, rbcContent){
	    var a ='';
	    
	    a += '<div class="input-group">';
	    a += '<input type="text" class="form-control" name="content_'+rbcNo+'" value="'+rbcContent+'"/>';
	    a += '<button class="btn btn-primary" type="button" onclick="commentUpdateProc('+rbcNo+');">수정</button>';
	    a += '</div>';
	    
	    $('.commentContent'+rbcNo).html(a);
	    
	}
	 
	//댓글 수정
	function commentUpdateProc(rbcNo){
	    var updateContent = $('[name=content_'+rbcNo+']').val();
	    
	    $.ajax({
	        url : '/user/page/comment/update',
	        type : 'post',
	        data : {'rbcContent' : updateContent, 'rbcNo' : rbcNo},
	        success : function(data){
	            if(data == 1) commentList(rNo); //댓글 수정후 목록 출력 
	        }
	    });
	}
	 
	//댓글 삭제 
	function commentDelete(rbcNo){
	    $.ajax({
	        url : '/user/page/comment/delete/'+rbcNo,
	        type : 'post',
	        success : function(data){
	            if(data == 1) commentList(rNo); //댓글 삭제후 목록 출력 
	        }
	    });
	}
	 
	$(document).ready(function(){
	    commentList(); //페이지 로딩시 댓글 목록 출력 
	});
	</script>
</body>
</html>
