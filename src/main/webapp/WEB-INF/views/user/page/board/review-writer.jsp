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
			review write
		</h2>
	</section>

	<!-- content page -->
	<section class="bgwhite p-t-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
                  <div class="box box-info">
                    <div class="box-header">
                      <h3 class="box-title">후기 작성</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad">
                            <input type="text" id="rTitle" class="form-control" name="rTitle" placeholder="제목입력">   
                            <textarea id="rContent" class="form-control" name="rContent" ></textarea>
                           	 사진 업로드 <input type="file" id="file" >
                             <input type="hidden" id="starRating" name="rAvgScore" value="1"/>
                             <input type="hidden" name="pNo" value="${pNo }"/>
                      	<div style="margin-top:10px;padding:20px;text-align:center;">
                       		<h3>별점 주기</h3>
                          	 <div id="star" ></div>
                        </div>
                      </div>
                    <div class="box-footer" style="margin:20px 0 30px 0;">
                      <button type="button" id="btnSubmit" class="btn btn-primary">글쓰기</button>
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
				score: 1,
				path : "/u_resources/images/icons/",
				width : 200,
				click: function(score, evt) {
					$("#starRating").val(score);
				}
			});
		});
	</script>
	<script>
	
		 var pNo = "${pNo}";
	
	    $(document).ready(function(){
	    	
	    	$("#btnSubmit").click(function(){
				/*  
				var data = new FormData();
				data.append("rTitle", rTitle);
				data.append("rContent", rContent);
				data.append("rAvgScore", starScore);
				data.append("file", $("#file").prop("files")[0]);
				 */
				// $("#frm").submit();
				 
	    		var pNo = $("input[name=pNo]").val();
	            var rTitle = $("input[name=rTitle]").val();
	            var rContent = $("#rContent").val();
				var rAvgScore = $("input[name=rAvgScore]").val();
	            
				if(rTitle == ""){
					alert("글 제목을 입력하세요");
					return false;
				}
				if(rContent == ""){
					alert("글 내용을 입력하세요");
					return false;
				}
				
	            // ajax로 전달할 폼 객체
	            var formData = new FormData();
	            // 폼 객체에 파일추가, append("변수명", 값)
	           // formData.append("file", file);
	            formData.append("pNo", pNo);
	            formData.append("rTitle", rTitle);
	            formData.append("rContent", rContent);
	            formData.append("rAvgScore", rAvgScore);
	            var tmp = $("#file").val();
	            
	            // file 첨부를 했으면 조건문을 탄다
	            if(tmp != ""){
	           		formData.append("file", $("#file").prop("files")[0]);
	            }
	           
	            
	            $.ajax({
	                type: "post",
	                url: "/user/page/board/write",
	                data: formData,
	                dataType: "json",
	                // processData: true=> get방식, false => post방식
	                // contentType: true => application/x-www-form-urlencoded, 
	                //                false => multipart/form-data
	                processData: false,
	                contentType: false,
	                success: function(data){
	                    
	                    if(data.result == "success"){
	                    	console.log(data);
	                    	location.href="/user/page/product/detail?pNo="+pNo;
	                    }else{
	                    	alert("error");
	                    }
	                },
	                error: function(data){
	                	console.log(data);
	                }
	            }); 
			});
	    	
	    	/*
	        $(".fileDrop").on("dragenter dragover", function(event){
	            event.preventDefault(); // 기본효과를 막음
	        });
	        // event : jQuery의 이벤트
	        // originalEvent : javascript의 이벤트
	        $(".fileDrop").on("drop", function(event){
	            event.preventDefault(); // 기본효과를 막음
	            // 드래그된 파일의 정보
	            var files = event.originalEvent.dataTransfer.files;
	            // 첫번째 파일
	            var file = files[0];
	            // 콘솔에서 파일정보 확인
	            console.log(file);
	            
	           
	        });
	        */
	    });
	</script>	
</body>
</html>
