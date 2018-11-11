<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>아이디/패스워드 찾기</title>

<!-- js스크립트 -->
<%@ include file="/WEB-INF/views/user/include/js.jsp"%>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/user/include/css.jsp"%>
<!-- Custom styles for this template -->
<script type="text/javascript">
	$(document).ready(function() {
		

	});
</script>

</head>


<body>

	<div class="container">
		<div class="row">
			<div
				class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 form-wrap">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#idSearch"
						aria-controls="idSearch" role="tab" data-toggle="tab">아이디찾기</a></li>
					<li role="presentation"><a href="#pwSearch"
						aria-controls="pwSearch" role="tab" data-toggle="tab">패스워드 찾기</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="idSearch">
						<h3>아이디 찾기</h3>
						<hr>
						<form role="form" action="/user/page/member/memberIdSearchCheck"
							method="post">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" name="mName"
									placeholder="이름을 입력해주세요">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="email" class="form-control" name="mEmail"
									placeholder="이메일">
							</div>
							<br>

							<button type="submit" class="btn btn-primary pull-right">검색</button>

						</form>
					</div>
					<div role="tabpanel" class="tab-pane" id="pwSearch">
						<h3>패스워드 찾기</h3>
						<hr>
						<form action="/user/page/member/memberPwSearchCheck" method="post">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" name="mId"
									placeholder="아이디를 입력해주세요">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
								<input type="text" class="form-control" name="mName"
									placeholder="이름 입력">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="email" class="form-control" name="mEmail"
									placeholder="이메일 주소">
							</div>
							<br>

							<button type="submit" class="btn btn-primary pull-right"
								id="btnPwSearch">검색</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>

</html>