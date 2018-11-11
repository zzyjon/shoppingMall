<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(/u_resources/site-images/board_banner.jpg);">
		<h2 class="l-text2 t-center">
			review modify
		</h2>
	</section>

	<!-- content page -->
	<section class="bgwhite p-t-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
                  <div class="box box-info">
                    <div class="box-header">
                      <h3 class="box-title">후기 수정</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad">
                      <form id="frm" action="/user/page/board/modify" method="post">
                      		<input type="hidden" name="rNo" value="${reviewDetail.rNo }">
                            <input type="text" id="rTitle" class="form-control" name="rTitle" value="${reviewDetail.rTitle }" placeholder="제목입력">   
                            <textarea id="rContent" class="form-control" name="rContent" >${reviewDetail.rContent }</textarea>
                            
                            <c:if test="${reviewDetail.rImg1 != null }">
	                            <img src="/review/${reviewDetail.rImg1 }">
                            </c:if>
	                           	 사진 업로드 <input type="file" id="file" >
                           	 
                            <input type="hidden" id="starRating" name="rAvgScore" value="${reviewDetail.rAvgScore }"/>
                      </form>
                      		<div style="margin-top:10px;padding:20px;text-align:center;">
                            	<h3>별점 수정</h3>
                                <div id="star" ></div>
                            </div>
                      </div>
                    <div class="box-footer" style="margin:20px 0 30px 0;">
                      <button type="button" id="btnSubmit" class="btn btn-primary">수정하기</button>
                    </div>
                  </div>
                  <!-- /.box -->
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
	  $(function () {
	    // Replace the <textarea id="editor1"> with a CKEditor
	    // instance, using default configuration.
	    //CKEDITOR.replace('rContent')
	    //bootstrap WYSIHTML5 - text editor
	  })
	</script>
	<script src="/u_resources/js/jquery.raty.js"></script>
	<script type="text/javascript">
		$(function() {
			$('div#star').raty({
				score: ${reviewDetail.rAvgScore}
				,path : "/u_resources/images/icons/"
				,width : 200
				,click: function(score, evt) {
					$("#starRating").val(score);
				}
			});
		});
	</script>
	<script>
	$(function(){
		$("#btnSubmit").click(function(){
			
			var rContent = $("#editor1").val();
			if(rContent == ""){
				alert("내용 입력");
				return false;
			}
			/*  
			var data = new FormData();
			data.append("rTitle", rTitle);
			data.append("rContent", rContent);
			data.append("rAvgScore", starScore);
			data.append("file", $("#file").prop("files")[0]);
			 */
			 $("#frm").submit();
		});
	});
	</script>
</body>
</html>
