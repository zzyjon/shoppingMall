<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/user/include/css.jsp"%>

<title>Starter Template for Bootstrap</title>


<!-- Custom styles for this template -->
<style type="text/css">
body {
	padding-top: 5rem;
}
</style>
<script type="text/javascript">
	//뒤로가기
	function btnBack() {
		javascript: history.go(-1);
	}
</script>
</head>


<body>


	<div class="container">
		<div class="row">
			<div
				class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 form-wrap">
				일치하는 아이디가 ${cntMid} 개 있습니다.

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active">
						<h3>${mName}님으로가입된 아이디</h3>
						<hr>

						<table>
							<tr>
								<th>아이디</th>
								<th>가입날짜</th>
								<th></th>
							</tr>
							<c:forEach var="member" items="${list}">
								<tr>
									<td>${member.mId }</td>
									<td>${member.mRegDate}</td>
									<td><a href="">[비밀번호 찾기]</a></td>
								</tr>
							</c:forEach>



						</table>
						<br>
						<hr>
						<button type="button" class="btn btn-default pull-left"
							onclick="btnBack()">이전</button>
						<button type="button" class="btn btn-primary pull-right">닫기</button>


					</div>

				</div>
			</div>
		</div>
	</div>



</body>

</html>